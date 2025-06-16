import java.io.*;
import java.sql.*;
import java.util.regex.Pattern;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class RegisterServlet extends HttpServlet {
    private boolean isValidEmail(String email) {
    String regex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
    Pattern pattern = Pattern.compile(regex);
    return pattern.matcher(email).matches();
}

protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    // Kiểm tra đầu vào
    if (name == null || name.trim().isEmpty()) {
        response.sendRedirect("signin.jsp?error=name");
        return;
    }

    if (!isValidEmail(email)) {
        response.sendRedirect("signin.jsp?error=email_invalid");
        return;
    }

    if (password == null || password.length() < 6) {
        response.sendRedirect("signin.jsp?error=password");
        return;
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism", "root", "");

        // Kiểm tra email đã tồn tại chưa
        String checkSql = "SELECT * FROM users WHERE email=?";
        PreparedStatement checkStmt = conn.prepareStatement(checkSql);
        checkStmt.setString(1, email);
        ResultSet rs = checkStmt.executeQuery();

        if (rs.next()) {
            // Email đã tồn tại
            response.sendRedirect("signin.jsp?error=email_exists");
        } else {
            // Chưa tồn tại => thêm mới
            String insertSql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(insertSql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, password);
            stmt.executeUpdate();

            response.sendRedirect("signin.jsp?registered=true");
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