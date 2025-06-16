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
    <title>Khám phá Quảng Ninh</title>
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

<!-- Main Content -->
<main class="province-info">
    <img src="image/quangninh/qn.jpg" id="hero" alt="Quảng Ninh" width="100%">
    <h1>Khám phá Quảng Ninh – Vịnh Hạ Long kỳ quan thế giới</h1>

    <section>
        <h2>1. Giới thiệu chung</h2>
        <div id="myCarousel" class="carousel slide container" data-bs-ride="carousel" data-bs-interval="3000">
            <div class="carousel-inner rounded-5 border border-2 shadow">
                <div class="carousel-item active">
                    <img class="w-100" src="image/quangninh/qn1.webp" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/quangninh/qn2.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/quangninh/qn3.webp" alt="">
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

        <p>Quảng Ninh nằm ở phía Đông Bắc Việt Nam, nổi tiếng với Vịnh Hạ Long – Di sản Thiên nhiên Thế giới. Bên cạnh đó, nơi đây còn có hệ thống núi đá vôi hùng vĩ, rừng quốc gia phong phú và nhiều khu du lịch sinh thái, văn hóa tâm linh đặc sắc.</p>
    </section>

    <section>
        <h2>2. Địa điểm du lịch nổi bật</h2>
        <ul class="destination-list">
            <li>
                <figure>
                    <img src="image/quangninh/qn.jpg" alt="Vịnh Hạ Long" width="300">
                    <figcaption><strong>Vịnh Hạ Long:</strong> Kỳ quan thiên nhiên với hàng nghìn đảo đá vôi kỳ vĩ và hệ sinh thái biển độc đáo.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/quangninh/chua-yen-tu-3.webp" alt="Yên Tử" width="300">
                    <figcaption><strong>Yên Tử:</strong> Trung tâm Phật giáo lâu đời, nổi tiếng với chùa Đồng và đường hành hương lên đỉnh núi.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/quangninh/dao-co-to-quang-ninh-967454.jpg" alt="Đảo Cô Tô" width="300">
                    <figcaption><strong>Đảo Cô Tô:</strong> Hòn đảo thơ mộng với biển xanh, cát trắng và phong cảnh yên bình tuyệt đẹp.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/quangninh/baichay.jpg" alt="Bãi Cháy" width="300">
                    <figcaption><strong>Bãi Cháy:</strong> Khu du lịch sôi động ven biển, nổi bật với cầu Bãi Cháy và khu vui chơi Sun World.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <h2>3. Ẩm thực Quảng Ninh</h2>
        <ul class="food-list">
            <li>
                <figure>
                    <img src="image/quangninh/sam.webp" alt="Sam biển" width="300">
                    <figcaption><strong>Sam biển:</strong> Đặc sản độc đáo, có thể chế biến thành nhiều món như xào chua ngọt, gỏi, nướng.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/quangninh/bunbebe.webp" alt="Bún bề bề" width="300">
                    <figcaption><strong>Bún bề bề:</strong> Món ăn hải sản đậm đà với bề bề tươi, nước dùng ngọt thanh.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/quangninh/sua.webp" alt="Sứa biển chiên giòn" width="300">
                    <figcaption><strong>Sứa :</strong> Món ăn lạ miệng, giòn sần sật, chấm mắm tỏi ớt đậm đà.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/quangninh/chamuc.jpg" alt="Chả mực Hạ Long" width="300">
                    <figcaption><strong>Chả mực Hạ Long:</strong> Món ngon trứ danh với mực tươi giã tay, hương vị đậm đà, ăn cùng xôi trắng hoặc bánh cuốn.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <p><em>Quảng Ninh – vùng đất hội tụ của vẻ đẹp thiên nhiên, văn hóa tâm linh và nền ẩm thực phong phú, là điểm đến không thể bỏ qua khi khám phá Việt Nam.</em></p>
    </section>
</main>

<!-- Footer -->
<footer>
    <p>&copy; 2025 - Du lịch Việt Nam. Mọi quyền được bảo lưu.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>