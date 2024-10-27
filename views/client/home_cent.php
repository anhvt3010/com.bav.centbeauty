<?php include "component_cent/header.php"; ?>

<body>
<!-- Page Preloder -->
<?php include "component_cent/loading.php"; ?>

<!-- Offcanvas Menu Begin -->
<?php include "component_cent/offMenu.php"; ?>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<?php include "component_cent/header_content.php"; ?>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<?php include "component_cent/content_banner.php"; ?>
<!-- Hero Section End -->

<!-- Consultation Section Begin -->
<section class="consultation">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="consultation__form">
                    <div class="section-title">
                        <span>REQUEST FOR YOUR</span>
                        <h2>Consultation</h2>
                    </div>
                    <form action="#">
                        <input type="text" placeholder="Name">
                        <input type="text" placeholder="Email">
                        <div class="datepicker__item">
                            <input type="text" placeholder="Date" class="datepicker">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <select>
                            <option value="">Type of service</option>
                            <option value="">Advanced equipment</option>
                            <option value="">Qualified doctors</option>
                            <option value="">Certified services</option>
                            <option value="">Emergency care</option>
                        </select>
                        <button type="submit" class="site-btn">Book appoitment</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="consultation__text">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="consultation__text__item">
                                <div class="section-title">
                                    <span>Chào mừng đến với Cent Beauty</span>
                                    <h2>Tìm chuyên gia tốt với <b>CENT BEAUTY</b></h2>
                                </div>
                                <p>Với 30 năm kinh nghiệm trong lĩnh vực Spa làm đẹp, chúng tôi tự hào mang
                                    đến cho khách hàng những dịch vụ chất lượng cao nhất. Chúng tôi cam kết không
                                    ngừng cải tiến và áp dụng những công nghệ tiên tiến nhất để đảm bảo sự hài lòng
                                    và an toàn tuyệt đối cho bạn.</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="consultation__video set-bg" data-setbg="img/consultation-video.jpg">
                                <a href="https://www.youtube.com/watch?v=PXsuI67s2AA"
                                   class="play-btn video-popup"><i class="fa fa-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Consultation Section End -->

<!-- Chooseus Section Begin -->
<?php include "component_cent/chooseus.php"; ?>
<!-- Chooseus Section End -->

<!-- Services Section Begin -->
<section class="services spad set-bg" data-setbg="img/services-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-6">
                <div class="section-title">
                    <span>Dịch vụ của chúng tôi</span>
                    <h2>Ưu đãi dành cho bạn</h2>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="services__btn">
                    <a href="#" class="primary-btn">Liên Hệ với chúng tôi</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="services__item">
                    <div class="services__item__icon">
                        <!--                            <span class="flaticon-044-aesthetic"></span>-->
                        <img width="90"  src="./assetsv2/img/icons/chamsocda.png" />
                    </div>
                    <div class="services__item__text">
                        <h5>Chăm sóc da</h5>
                        <p>Dịch vụ chăm sóc da từ cơ bản đến chuyên sâu giúp khách hàng duy trì và cải thiện làn da
                            khỏe mạnh, mịn màng.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="services__item">
                    <div class="services__item__icon">
                        <!--                            <span class="flaticon-027-beauty"></span>-->
                        <img width="90"  src="./assetsv2/img/icons/trietlong.png" />
                    </div>
                    <div class="services__item__text">
                        <h5>Triệt lông</h5>
                        <p>Cent Beauty đã nâng cấp các công nghệ triệt lông hiện đại, mang lại kết quả hiệu quả và
                            an toàn cho khách hàng​.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="services__item">
                    <div class="services__item__icon">
                        <!--                            <span class="flaticon-031-anatomy"></span>-->
                        <img width="90"  src="assetsv2/img/icons/phunxam.png" />
                    </div>
                    <div class="services__item__text">
                        <h5>Phun xăm thẩm mỹ</h5>
                        <p>Dịch vụ phun xăm chân mày, môi, mí mắt giúp khách hàng có diện mạo tươi tắn, tự nhiên mà
                            không cần trang điểm mỗi ngày.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="services__item">
                    <div class="services__item__icon">
                        <!--                            <span class="flaticon-008-abdominoplasty"></span>-->
                        <img width="90"  src="assetsv2/img/icons/nail.png" />
                    </div>
                    <div class="services__item__text">
                        <h5>Nail và mi</h5>
                        <p>Các dịch vụ làm móng, nối mi được ra mắt như một phần mở rộng của thương hiệu, đáp ứng
                            nhu cầu đa dạng của khách hàng.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="services__item">
                    <div class="services__item__icon">
                        <!--                            <span class="flaticon-008-abdominoplasty"></span>-->
                        <img width="90"  src="assetsv2/img/icons/shampoo.png" />
                    </div>
                    <div class="services__item__text">
                        <h5>Gội đầu dưỡng sinh</h5>
                        <p>Ngoài các dịch vụ làm đẹp, Cent Beauty còn chú trọng đến sự thư giãn với phòng gội đầu
                            miễn phí.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->

<!-- Team Section Begin -->
<?php include "component_cent/docter.php"; ?>
<!-- Team Section End -->

<!-- Gallery Begin -->
<div class="gallery">
    <div class="gallery__container">
        <div class="grid-sizer"></div>
        <div class="gc__item set-bg" data-setbg="assetsv2/img/gallery/gallery-1.jpg">
            <a href="assetsv2/img/gallery/gallery-1.jpg" class="image-popup"><i class="fa fa-search-plus"></i></a>
        </div>
        <div class="gc__item set-bg" data-setbg="assetsv2/img/gallery/gallery-2.jpg">
            <a href="assetsv2/img/gallery/gallery-2.jpg" class="image-popup"><i class="fa fa-search-plus"></i></a>
        </div>
        <div class="gc__item set-bg" data-setbg="assetsv2/img/gallery/gallery-3.jpg">
            <a href="assetsv2/img/gallery/gallery-3.jpg" class="image-popup"><i class="fa fa-search-plus"></i></a>
        </div>
        <div class="gc__item gc__item__large set-bg" data-setbg="assetsv2/img/gallery/gallery-4.jpg">
            <a href="assetsv2/img/gallery/gallery-4.jpg" class="image-popup"><i class="fa fa-search-plus"></i></a>
        </div>
        <div class="gc__item set-bg" data-setbg="assetsv2/img/gallery/gallery-5.jpg">
            <a href="assetsv2/img/gallery/gallery-5.jpg" class="image-popup"><i class="fa fa-search-plus"></i></a>
        </div>
        <div class="gc__item set-bg" data-setbg="assetsv2/img/gallery/gallery-6.jpg">
            <a href="assetsv2/img/gallery/gallery-6.jpg" class="image-popup"><i class="fa fa-search-plus"></i></a>
        </div>
        <div class="gc__item set-bg" data-setbg="assetsv2/img/gallery/gallery-7.jpg">
            <a href="assetsv2/img/gallery/gallery-7.jpg" class="image-popup"><i class="fa fa-search-plus"></i></a>
        </div>
    </div>
</div>
<!-- Gallery End -->

<!-- Latest News Begin -->
<section class="latest spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-6">
                <div class="section-title">
                    <span>Tin Tức</span>
                    <h2>Mẹo chăm sóc da</h2>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="latest__btn">
                    <a href="#" class="primary-btn">Xem thêm</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="latest__item">
                    <h5><a href="#">Vài “tip” giúp bạn tận hưởng trọn vẹn từng giây phút làm sạch da chết trên cơ
                            thể</a></h5>
                    <p>Hãy thử áp dụng một vài tip sau để gia tăng thêm những trải nghiệm thật “chill” với Cent
                        Beauty làm sạch da chết cơ thể.</p>
                    <ul>
                        <li><img src="assetsv2/img/blog/blog-author.jpg" alt="">Cent Beauty</li>
                        <li>Dec 06, 2024</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="latest__item">
                    <h5><a href="#">Da dầu, mụn sẽ “ăn chay” như thế nào?</a></h5>
                    <p>Giống như các loại da khác, da dầu cũng sẽ đạt được trạng thái khỏe mạnh và mịn màng nếu
                        được làm sạch đúng cách và được bảo vệ với các sản phẩm phù hợp.</p>
                    <ul>
                        <li><img src="assetsv2/img/blog/blog-author.jpg" alt="">Cent Beauty</li>
                        <li>Dec 06, 2024</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="latest__item">
                    <h5><a href="#">3 bước tẩy da chết hiệu quả dành cho mặt từ cà phê Đắk Lắk</a></h5>
                    <p>Việc tẩy da chết tuy chỉ mất từ 10 – 15s nhưng nó sẽ giúp bạn loại bỏ các tế bào da chết trên
                        bề mặt da một cách dễ dàng, giảm nguy cơ tắc nghẽn lỗ chân lông và</p>
                    <ul>
                        <li><img src="assetsv2/img/blog/blog-author.jpg" alt="">Cent Beauty</li>
                        <li>Dec 06, 2024</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest News End -->

<!-- Footer Section Begin -->
<?php include "component_cent/footer.php"; ?>
<!-- Footer Section End -->

<!-- Js Plugins -->
<?php include "component_cent/js_import.php"; ?>
</body>

</html>
