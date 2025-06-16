<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("signin.jsp");
        return;
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String avatar = (String) session.getAttribute("avatar");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Khám phá Thừa Thiên Huế</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="province.css"> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>

<!-- Header -->
<section id="header">
    <nav id="navbar">
        <a href="/" class="navbar-logo">
            <img src="image/SnapBG.ai_1747421312309.png" alt="Logo" height="100">
        </a>
        <div class="navbar-content">
            <ul class="navbar-left">
                <li><a href="#hero">Home</a></li>
                <li><a href="#map-container">Aboutme</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="https://www.booking.com/index.en-gb.html?aid=2369666&pagename=en-vn-booking-desktop&label=msn-l5*jJyRssiXCYy8YUJWIKA-80608133315418:tikwd-80608308492121:loc-166:neo:mte:lp142888:dec:qstrang%20web%20booking&utm_campaign=English_Vietnam%20EN%20VN&utm_medium=cpc&utm_source=bing&utm_term=l5*jJyRssiXCYy8YUJWIKA&msclkid=1bcd5ed6e32914ad9fa4393a6cc5585d&utm_content=Booking%20-%20Desktop">Booking</a></li>
            </ul>

            <form class="search-form">
                <input type="text" placeholder="Tìm địa điểm, tỉnh thành...">
                <button type="submit"><i class="fas fa-search"></i></button>
            </form>

            <ul class="navbar-right">
                <% if (username != null && avatar != null) { %>
                    <li><img src="<%= avatar %>" alt="Avatar" style="width: 40px; height: 40px; border-radius: 50%;"></li>
                    <li><span style="color: rgb(0, 0, 0); font-weight: bold;"><%= username %></span></li>
                    <li><a href="LogoutServlet">Logout</a></li>
                <% } else { %>
                    <li><a href="signin.jsp">Login</a></li>
                    <li><a href="signin.jsp">Signup</a></li>
                <% } %>
            </ul>
        </div>
    </nav> 
</section>
<button id="toggleBtn"><i class="fas fa-chevron-up"></i></button>

<!-- Main Container -->
<main class="province-info">
<img src="image/hue/hue.jpg" id="hero" alt="Thừa Thiên Huế" width="100%">
    <h1>Khám phá Thừa Thiên Huế – Vùng đất cố đô thơ mộng</h1>

    <section>
        <h2>1. Giới thiệu chung</h2>
        <div id="myCarousel" class="carousel slide container" data-bs-ride="carousel" data-bs-interval="3000">
            <div class="carousel-inner rounded-5 border border-2 shadow">
                <div class="carousel-item active">
                    <img class="w-100" src="image/hue/hue1.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/hue/hue2.webp" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/hue/hue3.jpg" alt="">
                </div>
            </div>
            <button class="carousel-control-prev" data-bs-target="#myCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" data-bs-target="#myCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
            <div class="carousel-indicators">
                <button data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></button>
                <button data-bs-target="#myCarousel" data-bs-slide-to="1"></button>
                <button data-bs-target="#myCarousel" data-bs-slide-to="2"></button>
            </div>
        </div>

        <p>Thừa Thiên Huế – mảnh đất cố đô thanh bình, nơi hội tụ tinh hoa văn hóa và lịch sử Việt Nam. Huế từng là kinh đô của triều Nguyễn, với nhiều di sản được UNESCO công nhận như Quần thể di tích Cố đô Huế, Nhã nhạc cung đình. Nơi đây là điểm đến lý tưởng cho những ai yêu thích vẻ đẹp cổ kính và yên bình.</p>
    </section>

    <section>
        <h2>2. Địa điểm du lịch nổi tiếng</h2>
        <ul class="destination-list">
            <li>
                <figure>
                    <img src="image/hue/dai_noi.jpg" alt="Đại Nội Huế" width="300">
                    <figcaption><strong>Đại Nội Huế:</strong> Trung tâm quyền lực triều Nguyễn với kiến trúc cung đình độc đáo, biểu tượng lịch sử Huế.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hue/langminhmang.jpg" alt="Lăng Minh Mạng" width="300">
                    <figcaption><strong>Lăng Minh Mạng:</strong> Kiệt tác kiến trúc – phong thủy, nơi yên nghỉ của vị vua yêu nước.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hue/chuathienmu.webp" alt="Chùa Thiên Mụ" width="300">
                    <figcaption><strong>Chùa Thiên Mụ:</strong> Ngôi chùa cổ bên sông Hương, gắn liền với lịch sử và tâm linh xứ Huế.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hue/songhuong.webp" alt="Sông Hương" width="300">
                    <figcaption><strong>Sông Hương:</strong> Dòng sông thơ mộng gắn liền với nhạc họa và thi ca của vùng đất cố đô.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <h2>3. Ẩm thực Huế</h2>
        <ul class="food-list">
            <li>
                <figure>
                    <img src="image/hue/bunbo.webp" alt="Bún bò Huế" width="300">
                    <figcaption><strong>Bún bò Huế:</strong> Món ăn đặc trưng với nước dùng cay thơm, thịt bò và giò heo đậm đà.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hue/comhen.webp" alt="Cơm hến" width="300">
                    <figcaption><strong>Cơm hến:</strong> Món ăn dân dã đầy hương vị với hến, rau sống, tóp mỡ và mắm ruốc.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hue/banhbeo.jpg" alt="Bánh bèo Huế" width="300">
                    <figcaption><strong>Bánh bèo:</strong> Bánh nhỏ xinh, ăn kèm nước mắm tỏi ớt và tóp mỡ giòn rụm.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hue/che.webp" alt="Chè Huế" width="300">
                    <figcaption><strong>Chè Huế:</strong> Hơn 20 loại chè truyền thống, ngọt thanh và mát lạnh, mang đậm hồn Huế.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <p><em>Huế – nơi lắng đọng tinh hoa văn hóa dân tộc, nơi mỗi bước chân là một hành trình về quá khứ, luôn sẵn sàng chào đón bạn trở về.</em></p>
    </section>
</main>

<!-- Footer -->
<footer>
    <p>&copy; 2025 - Du lịch Việt Nam. Mọi quyền được bảo lưu.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>