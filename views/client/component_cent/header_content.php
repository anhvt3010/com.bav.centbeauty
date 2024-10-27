<?php
// Lấy tên file hiện tại
$currentFile = basename($_SERVER['PHP_SELF'], ".php");
?>

<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <ul class="header__top__left">
                        <li><i class="fa fa-phone"></i> +84 988 526 666</li>
                        <li><i class="fa fa-map-marker"></i> 12 P. Chùa Bộc, Quang Trung, Đống Đa, Hà Nội</li>
                        <li><i class="fa fa-clock-o"></i> Thứ 2 - Thứ 6 8:00 - 17:00</li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <div class="header__top__right">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <div class="header__logo" style="padding-top: 25px">
                    <a href="./index.php"><img width="120" src="assetsv2/img/logo_cent_orage.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-10">
                <div class="header__menu__option">
                    <nav class="header__menu">
                        <ul>
                            <li class="<?php echo ($currentFile == 'index') ? 'active' : ''; ?>"><a href="./index.php">Trang chủ</a></li>
                            <li class="<?php echo ($currentFile == 'about') ? 'active' : ''; ?>"><a href="./about.php">GIỚI THIỆU</a></li>
                            <li class="<?php echo ($currentFile == 'services') ? 'active' : ''; ?>"><a href="./services.php">Dịch vụ</a></li>
<!--                            <li class="--><?php //echo ($currentFile == 'pages') ? 'active' : ''; ?><!--"><a href="#">Trang</a>-->
<!--                                <ul class="dropdown">-->
<!--                                    <li><a href="./pricing.html">Pricing</a></li>-->
<!--                                    <li><a href="./doctor.html">Doctor</a></li>-->
<!--                                    <li><a href="./blog-details.html">Blog Details</a></li>-->
<!--                                </ul>-->
<!--                            </li>-->
                            <li class="<?php echo ($currentFile == 'blog') ? 'active' : ''; ?>"><a href="./blog.php">Tin Tức</a></li>
<!--                            <li class="--><?php //echo ($currentFile == 'contact') ? 'active' : ''; ?><!--"><a href="./contact.php">Liên Hệ</a></li>-->
                            <li class="<?php echo ($currentFile == 'contact') ? 'active' : ''; ?>"><a href="./contact.php">Cơ sở</a></li>
                            <li class="<?php echo ($currentFile == 'contact') ? 'active' : ''; ?>"><a href="./contact.php">Tra cứu</a></li>
                        </ul>
                    </nav>
                    <div class="header__btn">
                        <a href="#" class="primary-btn">Đặt Lịch Ngay</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="canvas__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>