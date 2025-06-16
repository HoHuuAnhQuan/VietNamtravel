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
    <title>Khám phá Nha Trang</title>
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
    <img src="image/province/nhatrang.jpg" id="hero" alt="Nha Trang" width="100%">
    <h1>Khám phá Nha Trang – Thành phố biển xinh đẹp</h1>

    <section>
        <h2>1. Giới thiệu chung</h2>
        <div id="myCarousel" class="carousel slide container" data-bs-ride="carousel" data-bs-interval="3000">
            <div class="carousel-inner rounded-5 border border-2 shadow">
                <div class="carousel-item active">
                    <img class="w-100" src="image/nhatrang/nt1.webp" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/nhatrang/nt2.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/nhatrang/nt3.jpg" alt="">
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

        <p>Nha Trang – thành phố biển năng động thuộc tỉnh Khánh Hòa, nổi tiếng với bãi biển dài, làn nước trong xanh và hệ sinh thái biển phong phú. Nơi đây là điểm đến du lịch hấp dẫn trong nước và quốc tế, nổi bật với các hoạt động lặn biển, nghỉ dưỡng và khám phá văn hóa Chăm Pa cổ xưa.</p>
    </section>

    <section>
        <h2>2. Địa điểm du lịch nổi bật</h2>
        <ul class="destination-list">
            <li>
                <figure>
                    <img src="image/nhatrang/vinwonders-nha-trang-2.jpg" alt="VinWonders Nha Trang" width="300">
                    <figcaption><strong>VinWonders Nha Trang:</strong> Khu vui chơi giải trí hiện đại trên đảo Hòn Tre, hấp dẫn mọi lứa tuổi.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/nhatrang/thapba.webp" alt="Tháp Bà Ponagar" width="300">
                    <figcaption><strong>Tháp Bà Ponagar:</strong> Di tích Chăm Pa cổ kính, mang giá trị văn hóa và tín ngưỡng sâu sắc.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/nhatrang/hon-mun-nha-trang-2.jpg" alt="Hòn Mun" width="300">
                    <figcaption><strong>Hòn Mun:</strong> Khu bảo tồn biển đầu tiên của Việt Nam, lý tưởng để lặn ngắm san hô tuyệt đẹp.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/nhatrang/bien.webp" alt="Biển Nha Trang" width="300">
                    <figcaption><strong>Biển Nha Trang:</strong> Bãi biển trải dài, sạch đẹp, là điểm dừng chân lý tưởng cho du khách thư giãn và tắm nắng.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <h2>3. Ẩm thực Nha Trang</h2>
        <ul class="food-list">
            <li>
                <figure>
                    <img src="image/nhatrang/bunca.jpg" alt="Bún cá Nha Trang" width="300">
                    <figcaption><strong>Bún cá:</strong> Món đặc sản thanh nhẹ với nước dùng trong, cá tươi ngọt thịt và rau sống ăn kèm.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/nhatrang/nem-nuong-nha-trang.jpg" alt="Nem nướng Ninh Hòa" width="300">
                    <figcaption><strong>Nem nướng Ninh Hòa:</strong> Món ăn nổi tiếng kết hợp giữa nem nướng, bánh tráng, rau và nước chấm đặc trưng.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/nhatrang/banh-can-nha-trang-2-1.jpg" alt="Bánh căn Nha Trang" width="300">
                    <figcaption><strong>Bánh căn:</strong> Bánh trứng nướng ăn kèm nước mắm chua ngọt, thơm ngon khó cưỡng.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/nhatrang/cha-ca-nha-trang-banner-1.jpg" alt="Chả cá Nha Trang" width="300">
                    <figcaption><strong>Chả cá:</strong> Món ăn đặc trưng từ cá biển tươi ngon, thường ăn kèm với bún, bánh mì hoặc cơm.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <p><em>Nha Trang – điểm hẹn của biển xanh, cát trắng, nắng vàng và ẩm thực quyến rũ, chắc chắn sẽ để lại dấu ấn khó phai trong lòng du khách.</em></p>
    </section>
</main>

<!-- Footer -->
<footer>
    <p>&copy; 2025 - Du lịch Việt Nam. Mọi quyền được bảo lưu.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>