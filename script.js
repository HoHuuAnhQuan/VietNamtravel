

document.addEventListener('DOMContentLoaded', function () {
// Dữ liệu mẫu cho các tỉnh
const provinceData = {
    hanoi: {
        name: "Hà Nội",
        image: "image/hanoi.jpg",
        tourism: "Nổi bật với Hồ Gươm, Văn Miếu, phố cổ, ẩm thực đặc sắc.",
        history: "Thủ đô ngàn năm văn hiến, trung tâm chính trị – văn hóa.",
        food: "Phở, bún chả, chả cá Lã Vọng, bánh cuốn Thanh Trì"
    },
    // ... Thêm các tỉnh khác
    danang: {
        name: "Đà Nẵng",
        image: "image/danang.jpg",
        tourism: "Nổi tiếng với bãi biển Mỹ Khê, cầu Rồng, Ngũ Hành Sơn.",
        history: "Thành phố trẻ, năng động, trung tâm du lịch miền Trung.",
        food: "Mì Quảng, bánh tráng cuốn thịt heo, bún chả cá"
    },
};

const infoBox = document.getElementById('province-info');
const svg = document.getElementById('vietnam-map');
const paths = svg.querySelectorAll('path[data-province]');

paths.forEach(path => {
    path.addEventListener('mouseenter', function () {
        const provinceId = path.getAttribute('data-province').toLowerCase();
        const data = provinceData[provinceId];
        if (!data) return;

        infoBox.innerHTML = `
            <button class="close-btn">×</button>
            <div class="info-content" style="display:flex; gap:10px;">
                <div class="image"><img src="${data.image}" alt="${data.name}" width="100"></div>
                <div class="text">
                    <h4>${data.name}</h4>
                    <p><b>Du lịch:</b> ${data.tourism}</p>
                    <p><b>Lịch sử:</b> ${data.history}</p>
                    <p><b>Ẩm thực:</b> ${data.food || "Đang cập nhật..."}</p>
                    <p style="color:blue; cursor:pointer;" id="go-to-page">>> Xem chi tiết</p>
                </div>
            </div>
        `;

        infoBox.style.left = `${svg.getBoundingClientRect().right - 200}px`;
        infoBox.style.top = `${svg.getBoundingClientRect().top + 120}px`;
        infoBox.style.display = 'block';

        infoBox.querySelector('.close-btn').addEventListener('click', () => {
            infoBox.style.display = 'none';
        });

        const goToPage = infoBox.querySelector('#go-to-page');
        goToPage.addEventListener('click', () => {
            window.location.href = `${provinceId}.html`;
        });
    });
});
function removeVietnameseTones(str) {
    return str.normalize("NFD")
        .replace(/[\u0300-\u036f]/g, "")
        .replace(/đ/g, "d").replace(/Đ/g, "D")
        .toLowerCase();
}

// Mảng tên 63 tỉnh thành Việt Nam
const provinces = [
    "An Giang", "Bà Rịa - Vũng Tàu", "Bắc Giang", "Bắc Kạn", "Bạc Liêu", "Bắc Ninh",
    "Bến Tre", "Bình Định", "Bình Dương", "Bình Phước", "Bình Thuận", "Cà Mau",
    "Cần Thơ", "Cao Bằng", "Đà Nẵng", "Đắk Lắk", "Đắk Nông", "Điện Biên", "Đồng Nai",
    "Đồng Tháp", "Gia Lai", "Hà Giang", "Hà Nam", "Hà Nội", "Hà Tĩnh", "Hải Dương",
    "Hải Phòng", "Hậu Giang", "Hòa Bình", "Hưng Yên", "Khánh Hòa", "Kiên Giang",
    "Kon Tum", "Lai Châu", "Lâm Đồng", "Lạng Sơn", "Lào Cai", "Long An", "Nam Định",
    "Nghệ An", "Ninh Bình", "Ninh Thuận", "Phú Thọ", "Phú Yên", "Quảng Bình",
    "Quảng Nam", "Quảng Ngãi", "Quảng Ninh", "Quảng Trị", "Sóc Trăng", "Sơn La",
    "Tây Ninh", "Thái Bình", "Thái Nguyên", "Thanh Hóa", "Thừa Thiên Huế", "Tiền Giang",
    "TP Hồ Chí Minh", "Trà Vinh", "Tuyên Quang", "Vĩnh Long", "Vĩnh Phúc", "Yên Bái"
];

document.querySelector(".search-form").addEventListener("submit", function(e){
    e.preventDefault();
    const keyword = this.querySelector("input").value.trim();
    const normalizedKeyword = removeVietnameseTones(keyword);

    const matched = provinces.find(province => {
        const normalizedProvince = removeVietnameseTones(province);
        return normalizedProvince.includes(normalizedKeyword);
    });

    if (matched) {
        const url = removeVietnameseTones(matched).replace(/\s+/g, "") + ".html";
        window.location.href = url;
    } else {
        alert("Không tìm thấy kết quả cho: " + keyword);
    }
});

const header = document.getElementById('header');
const toggleBtn = document.getElementById('toggleBtn');
let isHidden = false;

toggleBtn.addEventListener('click', () => {
    isHidden = !isHidden;
    header.classList.toggle('header-hidden', isHidden);
toggleBtn.innerHTML = isHidden ? '<i class="fas fa-chevron-down"></i>' : '<i class="fas fa-chevron-up"></i>';
});                         
});
