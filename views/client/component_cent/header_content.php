<?php
// Lấy giá trị của 'action' từ URL
$action = isset($_GET['action']) ? $_GET['action'] : 'home';
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
                        <?php
                        if (!isset($_SESSION['user_phone'])) {
                            echo
                                '<a href="'. LOGIN_CLIENT_URL .'" class=" order-last order-lg-0" style="color:white;">
                  <i style="color: white;" class="fa fa-sign-in" aria-hidden="true"></i>
                  Đăng nhập
                </a>';
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <div class="header__logo" style="padding-top: 15px">
                    <a href="./index.php"><img width="120" src="assetsv2/img/logo_cent_orage.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-10">
                <div class="header__menu__option">
                    <nav class="header__menu">
                        <ul>
                            <li class="<?php echo ($action == 'home') ? 'active' : ''; ?>">
                                <a href="<?php echo BASE_URL ?>/index.php?controller=home&action=home">Trang chủ</a>
                            </li>
                            <li class="<?php echo ($action == 'about') ? 'active' : ''; ?>">
                                <a href="<?php echo BASE_URL ?>/index.php?controller=home&action=about">GIỚI THIỆU</a>
                            </li>
                            <li class="<?php echo ($action == 'services') ? 'active' : ''; ?>">
                                <a href="<?php echo BASE_URL ?>/index.php?controller=home&action=services">Dịch vụ</a>
                            </li>
                            <li class="<?php echo ($action == 'blog') ? 'active' : ''; ?>">
                                <a href="<?php echo BASE_URL ?>/index.php?controller=home&action=blog">Tin Tức</a>
                            </li>
                            <li class="<?php echo ($action == 'contact') ? 'active' : ''; ?>">
                                <a href="<?php echo BASE_URL ?>/index.php?controller=home&action=contact">Cơ sở</a>
                            </li>
                            <li class="<?php echo ($action == 'lookup') ? 'active' : ''; ?>">
                                <a href="<?php echo BASE_URL ?>/index.php?controller=home&action=search_client">Tra cứu</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="header__btn">
                        <a href="<?php echo BASE_URL ?>/index.php?controller=home&action=appointment"
                           class="primary-btn">Đặt Lịch Ngay</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="canvas__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>