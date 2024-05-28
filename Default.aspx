
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Index - QuickStart Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: QuickStart
  * Template URL: https://bootstrapmade.com/quickstart-bootstrap-startup-website-template/
  * Updated: May 10 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="index-page">

  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl position-relative d-flex align-items-center">

      <a href="index.html" class="logo d-flex align-items-center me-auto">
        <img src="/assets/img/logo.png" alt="">
        <h1 class="sitename">QuickStart</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="/Default.aspx" class="">Trang chủ</a></li>
           <li class="dropdown"><a href="#"><span>Buổi 1</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
           <ul>
           <li><a href="Views/Buoi1/PTBac1.aspx">Giải phương trình bậc 1</a></li>
           <li><a href="Views/Buoi1/PTBac2.aspx">Giải phương trình bậc 2</a></li>
           <li><a href="Views/Buoi1/ChuVi.aspx">Chu vi tam giác</a></li>
            <li><a href="Views/Buoi1/DienTich.aspx">Diện tích hình chữ nhật</a></li>
           </ul>
           </li>
          <li class="dropdown"><a href="#"><span>Buổi 2</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="Views/Buoi2/TongCacSoTu1denN.aspx">Tổng các số từ 1-> n</a></li>
              <!--  <li class="dropdown"><a href="#"><span>Deep Dropdown</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
             
                  <li><a href="#">Deep Dropdown 2</a></li>
                  <li><a href="#">Deep Dropdown 3</a></li>
                  <li><a href="#">Deep Dropdown 4</a></li>
                  <li><a href="#">Deep Dropdown 5</a></li>
                </ul>
              </li>-->
              <li><a href="Views/Buoi2/TichCacSoChanTu1denN.aspx">Tích các số chẵn từ 1 -> N</a></li>
              <li><a href="Views/Buoi2/KiemTraSoNguyenTo.aspx">Kiểm tra số nguyên tố</a></li>
              <li><a href="Views/Buoi2/USCLNcuaAvaB.aspx"> USCLN của 2 số nguyên dương a và b</a></li>
            </ul>
          </li>
         <!-- buoi 3 -->
          <li class="dropdown"><a href="#"><span>Buổi 3</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
           <ul>
           <li><a href="Views/Buoi3/index.aspx">List</a></li>
           
           </ul>
           </li>
              <!-- buoi 4 -->
               <li class="dropdown"><a href="#"><span>Buổi 4</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
           <ul>
           <li><a href="Views/Buoi4/index.aspx">CRUD Quản lý học sinh</a></li>
           
           </ul>
           </li>
 
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>

      <a class="btn-getstarted" href="#">Bắt đầu</a>

    </div>
  </header>

  <main class="main">

    <!-- Hero Section -->
    <section id="hero" class="hero section">
      <div class="hero-bg">
        <img src="assets/img/hero-bg-light.webp" alt="">
      </div>
      <div class="container text-center">
        <div class="d-flex flex-column justify-content-center align-items-center">
          <h1 data-aos="fade-up" class="">Welcome to <span>QuickStart</span></h1>
          <p data-aos="fade-up" data-aos-delay="100" class="">Quickly start your project now and set the stage for success<br></p>
          <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
            <a href="#about" class="btn-get-started">Get Started</a>
            <a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
          </div>
          <img src="assets/img/hero-services-img.webp" class="img-fluid hero-img" alt="" data-aos="zoom-out" data-aos-delay="300">
        </div>
      </div>

    </section><!-- /Hero Section -->



   


  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>