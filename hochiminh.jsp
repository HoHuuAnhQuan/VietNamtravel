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
    <title>Khám phá TP. Hồ Chí Minh</title>
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
    <img src="image/hochiminh/hochiminh.jpg" id="hero" alt="TP. Hồ Chí Minh" width="100%">
    <h1>Khám phá TP. Hồ Chí Minh – Thành phố mang tên Bác</h1>

    <section>
        <h2>1. Giới thiệu chung</h2>
        <div id="myCarousel" class="carousel slide container" data-bs-ride="carousel" data-bs-interval="3000">
            <div class="carousel-inner rounded-5 border border-2 shadow">
                <div class="carousel-item active">
                    <img class="w-100" src="image/hochiminh/hochiminh1.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/hochiminh/hochiminh2.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="image/hochiminh/hochiminh3.webp" alt="">
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
        <p>TP. Hồ Chí Minh – trung tâm kinh tế, văn hóa và giáo dục hàng đầu Việt Nam. Nơi đây mang nhịp sống sôi động, hiện đại nhưng vẫn đậm đà bản sắc truyền thống với nhiều công trình kiến trúc cổ kính và di tích lịch sử quan trọng.</p>
    </section>

    <section>
        <h2>2. Địa điểm du lịch nổi tiếng</h2>
        <ul class="destination-list">
            <li>
                <figure>
                    <img src="image/hochiminh/cho_ben_thanh.jpg" alt="Chợ Bến Thành" width="300">
                    <figcaption><strong>Chợ Bến Thành:</strong> Biểu tượng của TP. HCM với lịch sử lâu đời, là nơi mua sắm và thưởng thức đặc sản hấp dẫn.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hochiminh/nha_tho_duc_ba.jpg" alt="Nhà thờ Đức Bà" width="300">
                    <figcaption><strong>Nhà thờ Đức Bà:</strong> Kiến trúc Pháp độc đáo giữa lòng thành phố, là điểm đến không thể bỏ lỡ.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hochiminh/buu_dien.webp" alt="Bưu điện Trung tâm" width="300">
                    <figcaption><strong>Bưu điện Trung tâm:</strong> Công trình cổ kính do người Pháp xây dựng với nội thất đẹp mắt.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hochiminh/pho_di_bo.jpg" alt="Phố đi bộ Nguyễn Huệ" width="300">
                    <figcaption><strong>Phố đi bộ Nguyễn Huệ:</strong> Trung tâm vui chơi, giải trí về đêm với nhiều hoạt động văn hóa hấp dẫn.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <h2>3. Ẩm thực Sài Gòn</h2>
        <ul class="food-list">
            <li>
                <figure>
                    <img src="image/hochiminh/banh_mi.jpg" alt="Bánh mì" width="300">
                    <figcaption><strong>Bánh mì Sài Gòn:</strong> Giòn rụm, nhân phong phú từ chả, thịt, pate, rau sống, nước sốt đặc trưng.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hochiminh/com_tam.jpg" alt="Cơm tấm" width="300">
                    <figcaption><strong>Cơm tấm:</strong> Món ăn phổ biến với sườn nướng, bì, trứng ốp và nước mắm chua ngọt.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hochiminh/goi_cuon.jpg" alt="Gỏi cuốn" width="300">
                    <figcaption><strong>Gỏi cuốn:</strong> Món ăn thanh mát với tôm, thịt, bún, rau, chấm mắm nêm đậm đà.</figcaption>
                </figure>
            </li>
            <li>
                <figure>
                    <img src="image/hochiminh/hu_tieu.jpg" alt="Hủ tiếu" width="300">
                    <figcaption><strong>Hủ tiếu:</strong> Sợi dai, nước dùng ngọt thanh từ xương, ăn kèm thịt và tôm rất hấp dẫn.</figcaption>
                </figure>
            </li>
        </ul>
    </section>

    <section>
        <p><em>TP. Hồ Chí Minh – trái tim sôi động của Việt Nam – luôn sẵn sàng chào đón bạn đến khám phá, trải nghiệm và yêu mến nơi đây.</em></p>
    </section>
</main>

<!-- Footer -->
<footer>
    <p>&copy; 2025 - Du lịch Việt Nam. Mọi quyền được bảo lưu.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>