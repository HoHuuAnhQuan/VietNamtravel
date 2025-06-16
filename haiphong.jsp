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
    <title>Khám phá Hải Phòng</title>
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
<img src="image/province/haiphong.jpg" id="hero" alt="Hải Phòng" width="100%">
    <h1>Khám phá Hải Phòng – Thành phố hoa phượng đỏ</h1>

    <section>
        <h2>1. Giới thiệu chung</h2>
        <div id="myCarousel" class="carousel slide container" data-bs-ride="carousel" data-bs-interval="3000">
            <div class="carousel-inner rounded-5 border border-2 shadow">
                <div class="carousel-item active">
                    <img class="w-100" src="image/haiphong/hp1.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/haiphong/hp2.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/haiphong/hp3.jpg" alt="">
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

        <p>Hải Phòng – thành phố cảng sôi động, là trung tâm kinh tế lớn của miền Bắc Việt Nam. Với biệt danh "Thành phố hoa phượng đỏ", Hải Phòng không chỉ nổi bật với nền công nghiệp phát triển mà còn sở hữu nhiều danh lam thắng cảnh nổi tiếng, là điểm đến hấp dẫn với du khách trong và ngoài nước.</p>
    </section>

    <section>
        <h2>2. Địa điểm du lịch nổi bật</h2>
        <ul class="destination-list">
            <li>
                <figure>
                    <img src="image/haiphong/doson.jpg" alt="Đồ Sơn" width="300">
                    <figcaption><strong>Đồ Sơn:</strong> Khu nghỉ mát ven biển nổi tiếng, nơi lý tưởng để tắm biển và thư giãn cuối tuần.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/haiphong/catba.jpg" alt="Đảo Cát Bà" width="300">
                    <figcaption><strong>Đảo Cát Bà:</strong> Khu dự trữ sinh quyển thế giới, nổi bật với bãi biển xanh mát và rừng nguyên sinh kỳ thú.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/haiphong/nhahatlon.webp" alt="Nhà hát lớn Hải Phòng" width="300">
                    <figcaption><strong>Nhà hát lớn:</strong> Công trình kiến trúc cổ kính mang dấu ấn Pháp, nằm ngay trung tâm thành phố.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/haiphong/bienhaiphong.jpg" alt="Biển Hải Phòng" width="300">
                    <figcaption><strong>Biển Hải Phòng:</strong> Những bãi biển trải dài và phong cảnh hữu tình níu chân du khách.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <h2>3. Ẩm thực Hải Phòng</h2>
        <ul class="food-list">
            <li>
                <figure>
                    <img src="image/haiphong/banhdacua.webp" alt="Bánh đa cua" width="300">
                    <figcaption><strong>Bánh đa cua:</strong> Món ăn trứ danh của Hải Phòng, đậm đà nước dùng cua đồng và sợi bánh đa đỏ dai ngon.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/haiphong/banhmicay.webp" alt="Bánh mì cay" width="300">
                    <figcaption><strong>Bánh mì cay:</strong> Món ăn đường phố đặc trưng với pate béo ngậy và tương ớt cay nồng.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/haiphong/chehaiphong.jpg" alt="Chè đậu đỏ" width="300">
                    <figcaption><strong>Chè đậu đỏ:</strong> Món tráng miệng mát lạnh, ngọt thanh – thức quà mùa hè được yêu thích.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/haiphong/oc.jpg" alt="Ốc Hải Phòng" width="300">
                    <figcaption><strong>Ốc Hải Phòng:</strong> Thiên đường ốc với đủ món hấp dẫn như ốc luộc, ốc xào me, ốc nướng mỡ hành.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <p><em>Hải Phòng – nơi hội tụ giữa hiện đại và truyền thống, giữa công nghiệp và biển cả, đang vẫy gọi những bước chân khám phá.</em></p>
    </section>
</main>

<!-- Footer -->
<footer>
    <p>&copy; 2025 - Du lịch Việt Nam. Mọi quyền được bảo lưu.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>