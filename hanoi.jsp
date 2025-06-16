
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
    <title>Khám phá Hà Nội</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="province.css"> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
<img src="image/hanoi/hanoi1.jpg" id="hero" alt="Hà Nội" width="100%">
        <h1>Khám phá Hà Nội – Trái tim của Việt Nam</h1>
        <section>
        <h2>1. Giới thiệu chung</h2>
            <div id="myCarousel" class="carousel slide container" data-bs-ride="carousel" data-bs-interval="3000">
    <div class="carousel-inner rounded-5 border border-2 shadow">
        <div class="carousel-item active">
            <img class="w-100" src="image/province/hanoi.jpg" alt="">
        </div>
        <div class="carousel-item">
            <img class="w-100" src="image/hanoi/hanoi2.webp" alt="">
        </div>
        <div class="carousel-item">
            <img class="w-100" src="image/hanoi/hanoi3.jpg" alt="">
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

            <p>Hà Nội – thủ đô ngàn năm văn hiến, là trung tâm chính trị, kinh tế, văn hóa và giáo dục của Việt Nam. 
        Nằm ở vùng đồng bằng sông Hồng trù phú, Hà Nội không chỉ nổi bật bởi bề dày lịch sử, 
        mà còn bởi vẻ đẹp thanh bình của những con phố rợp bóng cây, những ngõ nhỏ cổ kính và nhịp sống chậm rãi mà sâu lắng. 
        Người Hà Nội thanh lịch, mến khách, luôn giữ gìn nét văn hóa truyền thống xen lẫn hiện đại, tạo nên một bản sắc riêng biệt không nơi nào có được.</p>
        </section>
    <section>
        <h2>2. Địa điểm du lịch nổi tiếng</h2>
        <p>Hà Nội có rất nhiều địa điểm du lịch hấp dẫn, mỗi nơi đều mang trong mình những câu chuyện lịch sử và văn hóa đặc sắc:</p>
    <ul class="destination-list">
        <li>
            <figure>
                <img src="image/hanoi/ho_guom.jpg" alt="Hồ Gươm và Tháp Rùa" width="300">
                <figcaption><strong>Hồ Gươm và Tháp Rùa:</strong> Biểu tượng của Hà Nội, gắn liền với truyền thuyết Lê Lợi trả gươm thần.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/hanoi/van_mieu.jpg" alt="Văn Miếu – Quốc Tử Giám" width="300">
                <figcaption><strong>Văn Miếu – Quốc Tử Giám:</strong> Trường đại học đầu tiên của Việt Nam, nơi tôn vinh truyền thống hiếu học và các bậc hiền tài.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/hanoi/lang_bac.jpg" alt="Lăng Chủ tịch Hồ Chí Minh" width="300">
                <figcaption><strong>Lăng Chủ tịch Hồ Chí Minh:</strong> Nơi an nghỉ của vị lãnh tụ kính yêu, là điểm đến thiêng liêng của người dân cả nước.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/hanoi/pho_co.jpg" alt="Phố cổ Hà Nội" width="300">
                <figcaption><strong>Phố cổ Hà Nội:</strong> Với 36 phố phường, mỗi con phố mang một nghề truyền thống, là nơi lưu giữ nhịp sống xưa của người Tràng An.</figcaption>
            </figure>
        </li>
    </ul>
    </section>

    <section>
        <h2>3. Ẩm thực Hà Nội</h2>
        <p>Ẩm thực Hà Nội mang đậm tinh hoa văn hóa dân tộc, vừa giản dị mà tinh tế, khó quên đối với bất kỳ ai:</p>
    <ul class="food-list">
        <li>
            <figure>
                <img src="image/hanoi/pho.jpeg" alt="Phở Hà Nội" width="300">
                <figcaption><strong>Phở Hà Nội:</strong> Món ăn nổi tiếng nhất, được xem là linh hồn ẩm thực đất Bắc với nước dùng trong, ngọt thanh, bánh phở mềm và thịt bò tái hấp dẫn.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/hanoi/bun_cha.jpg" alt="Bún chả Hà Nội" width="300">
                <figcaption><strong>Bún chả:</strong> Thịt nướng thơm lừng ăn kèm bún, rau sống và nước mắm pha chua ngọt đặc trưng – từng được Tổng thống Obama thưởng thức.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/hanoi/cha_ca.jpg" alt="Chả cá Lã Vọng" width="300">
                <figcaption><strong>Chả cá Lã Vọng:</strong> Cá lăng tẩm nghệ nướng vàng, ăn kèm bún, thì là, rau thơm và mắm tôm – đặc sản trứ danh của Hà Nội.</figcaption>
            </figure>
        </li>
        <li>
            <figure>
                <img src="image/hanoi/banh_cuon.jpg" alt="Bánh cuốn Thanh Trì" width="300">
                <figcaption><strong>Bánh cuốn Thanh Trì:</strong> Mỏng mềm, dai nhẹ, cuộn thịt băm và mộc nhĩ, ăn cùng chả quế và nước mắm pha.</figcaption>
            </figure>
        </li>
        
    </ul>
    </section>

    <section>
        <p><em>Hà Nội – nơi hội tụ giữa truyền thống và hiện đại, giữa lòng yêu nước và chất thơ nhẹ nhàng – luôn chào đón du khách bằng cả trái tim nồng hậu và bản sắc văn hóa sâu sắc.</em></p>
    </section>
</main>

<!-- Footer -->
<footer>
    <p>&copy; 2025 - Du lịch Việt Nam. Mọi quyền được bảo lưu.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>