import java.io.*;
import java.sql.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class LoginServlet extends HttpServlet {

    // Hàm tạo chuỗi MD5 từ email
    private String md5Hex(String message) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] digest = md.digest(message.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/tourism", "root", "");

            String sql = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String username = rs.getString("name"); // cột name trong CSDL
                String emailUser = rs.getString("email");

                // Tạo đường dẫn avatar từ Gravatar
                String emailHash = md5Hex(emailUser.trim().toLowerCase());
                String avatarUrl = "https://www.gravatar.com/avatar/" + emailHash + "?s=80&d=identicon";

                // Lưu vào session
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("avatar", avatarUrl);

                response.sendRedirect("welcome.jsp");
            } else {
                response.sendRedirect("signin.jsp?error=true");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("signin.jsp?error=exception");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("signin.jsp");
    }
}