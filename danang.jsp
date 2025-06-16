<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("signin.jsp");
        return;
    }
%>

<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String avatar = (String) session.getAttribute("avatar");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Khám phá Đà Nẵng</title>
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
<img src="image/province/danang.png" id="hero" alt="Đà Nẵng" width="100%">
        <h1>Khám phá Đà Nẵng – Thành phố đáng sống của Việt Nam</h1>
        <section>
        <h2>1. Giới thiệu chung</h2>
            <div id="myCarousel" class="carousel slide container" data-bs-ride="carousel" data-bs-interval="3000">
    <div class="carousel-inner rounded-5 border border-2 shadow">
        <div class="carousel-item active">
            <img class="w-100" src="image/danang/danang1.jpg" alt="">
        </div>
        <div class="carousel-item">
            <img class="w-100" src="image/danang/danang2.jpg" alt="">
        </div>
        <div class="carousel-item">
            <img class="w-100" src="image/danang/danang3.png" alt="">
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

            <p>Đà Nẵng – thành phố năng động ven biển miền Trung, nổi tiếng với danh hiệu “thành phố đáng sống”. Với vị trí chiến lược, khí hậu ôn hòa và người dân thân thiện, Đà Nẵng là điểm đến lý tưởng cho cả du lịch nghỉ dưỡng và khám phá. Nơi đây là cầu nối giữa di sản văn hóa Hội An – Mỹ Sơn – Huế, tạo nên một tam giác du lịch vàng cho du khách trong và ngoài nước.</p>
        </section>

    <section>
        <h2>2. Địa điểm du lịch nổi tiếng</h2>
        <p>Đà Nẵng chinh phục du khách bằng vẻ đẹp tự nhiên hài hòa giữa núi, sông và biển:</p>
    <ul class="destination-list">
        <li>
            <figure>
                <img src="image/danang/banahill.jpg" alt="Bà Nà Hills" width="300">
                <figcaption><strong>Bà Nà Hills:</strong> “Đường lên tiên cảnh” với Cầu Vàng nổi tiếng, khí hậu 4 mùa trong 1 ngày, là điểm đến không thể bỏ qua.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/danang/mykhe.webp" alt="Biển Mỹ Khê" width="300">
                <figcaption><strong>Biển Mỹ Khê:</strong> Một trong những bãi biển quyến rũ nhất hành tinh, lý tưởng để tắm biển, lướt sóng và ngắm hoàng hôn.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/danang/cau_rong.webp" alt="Cầu Rồng" width="300">
                <figcaption><strong>Cầu Rồng:</strong> Cây cầu độc đáo có thể phun lửa, phun nước vào cuối tuần – biểu tượng hiện đại của thành phố.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/danang/ngu_hanh_son.jpg" alt="Ngũ Hành Sơn" width="300">
                <figcaption><strong>Ngũ Hành Sơn:</strong> Quần thể núi đá vôi với hang động kỳ bí, chùa thiêng và view biển tuyệt đẹp.</figcaption>
            </figure>
        </li>
    </ul>
    </section>

    <section>
        <h2>3. Ẩm thực Đà Nẵng</h2>
        <p>Ẩm thực Đà Nẵng giản dị, đậm đà hương vị miền Trung, khiến thực khách nhớ mãi không quên:</p>
    <ul class="food-list">
        <li>
            <figure>
                <img src="image/danang/my_quang.jpg" alt="Mì Quảng" width="300">
                <figcaption><strong>Mì Quảng:</strong> Sợi mì dày, nước lèo đậm đà, ăn kèm rau sống, bánh tráng và đậu phộng rang đặc trưng xứ Quảng.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/danang/bun_mam.jpg" alt="Bún mắm nêm" width="300">
                <figcaption><strong>Bún mắm nêm:</strong> Hương vị mắm đặc trưng kết hợp thịt luộc, nem chua, rau sống khiến món ăn trở nên cuốn hút.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/danang/banh_Xeo.webp" alt="Bánh xèo miền Trung" width="300">
                <figcaption><strong>Bánh xèo:</strong> Mỏng giòn, nhân tôm thịt đầy đặn, ăn kèm rau sống và nước chấm chua ngọt đặc trưng.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/danang/banh_tran_cuon.jpg" alt="Bánh tráng cuốn thịt heo" width="300">
                <figcaption><strong>Bánh tráng cuốn thịt heo:</strong> Cuộn thịt ba chỉ, rau sống, chuối xanh, chấm mắm nêm đậm đà – món ăn trứ danh Đà Nẵng.</figcaption>
            </figure>
        </li>
    </ul>
    </section>

    <section>
        <p><em>Đà Nẵng – nơi hội tụ giữa thiên nhiên hùng vĩ, văn hóa đặc sắc và con người hiền hòa – luôn dang rộng vòng tay chào đón du khách gần xa.</em></p>
    </section>
</main>

<!-- Footer -->
<footer>
    <p>&copy; 2025 - Du lịch Việt Nam. Mọi quyền được bảo lưu.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>