<%@ page import="com.project.cuoiky.ltw.model.SanPham" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <%-- all library here--%>
    <%@ include file="/common/web/head.jsp" %>
    <title>Trang Chủ - Shop Drum</title>
</head>
<body>
<!-- Add your site or application content here -->

<%
    DecimalFormat formatter = new DecimalFormat("###,###,###");
%>

<!--pos page start-->
<div class="pos_page">
    <div class="container">
        <!--pos page inner-->
        <div class="pos_page_inner">
            <!-- header -->
            <%@ include file="/common/web/header.jsp" %>
            <!-- header -->

            <!--pos home section-->
            <div class=" pos_home_section">
                <div class="row pos_home">
                    <div class="col-lg-3 col-md-8 col-12">
                        <!--sidebar banner-->
                        <div class="sidebar_widget banner mb-35">
                            <div class="banner_img mb-35">
                                <a href="#"><img src="assets\img\banner2\banner1.jpg" alt=""></a>
                            </div>
                            <div class="banner_img banner">
                                <a href="#"><img src="assets\img\banner2\banner2.jpg" alt="">
                                    <div class="banner-des">Bán chạy</div>
                                </a>

                            </div>
                        </div>
                        <!--sidebar banner end-->

                        <!--categorie menu start-->
                        <div class="sidebar_widget catrgorie mb-35">
                            <h3 class="cate-title">Tùy Chọn Loại Trống</h3>
                            <ul>
                                <li class="has-sub"><a href="#" class="categorie-p"><i class="fa fa-caret-right"></i>Trống
                                    Bộ</a>
                                    <ul class="categorie_sub">
                                        <li><a href="shop.html"><i class="categories-child"></i> Bộ Trống Starter</a>
                                            <ul class="categorie_sub">
                                                <li><a href="shop.html"><i class="categories-child"></i> Bộ Trống
                                                    Starter</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Shell Pack</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Bộ Trống Travel</a>
                                                </li>
                                                <li><a href="#"><i class="categories-child"></i> BỘ Trống Điện</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop.html"><i class="categories-child"></i> Shell Pack</a></li>
                                        <li><a href="#"><i class="categories-child"></i> Bộ Trống Travel</a></li>
                                        <li><a href="#"><i class="categories-child"></i> Bộ Trống Điện</a></li>
                                    </ul>
                                </li>
                                <li class="has-sub"><a href="shop.html" class="categorie-p"><i
                                        class="fa fa-caret-right"></i>Hãng</a>
                                    <ul class="categorie_sub">
                                        <li><a href="shop.html"><i class="categories-child"></i> Drum Workshop</a>
                                            <!-- <ul class="categorie_sub">
                                                <li><a href="#"><i class="categories-child"></i> Drum Workshop</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Mapex</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Odery</a></li>
                                                <li><a href="#"><i class="categories-child"></i> PDP</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Pearl</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Roland</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Yamaha</li>
                                            </ul>  -->
                                        </li>
                                        <li><a href="#"><i class="categories-child"></i> Mapex</a></li>
                                        <li><a href="#"><i class="categories-child"></i> Odery</a></li>
                                        <li><a href="#"><i class="categories-child"></i> PDP</a></li>
                                        <!-- <li><a href="#"><i class="categories-child"></i> Pearl</a></li>
                                        <li><a href="#"><i class="categories-child"></i> Roland</a></li>
                                        <li><a href="#"><i class="categories-child"></i> Yamaha</li> -->
                                    </ul>
                                </li>
                                <li class="has-sub"><a href="shop.html" class="categorie-p"><i
                                        class="fa fa-caret-right"></i>Trống Lẻ</a>
                                    <ul class="categorie_sub">
                                        <li><a href="shop.html"><i class="categories-child"></i>Trống Tom</a>
                                            <!-- <ul class="categorie_sub">
                                                <li><a href="#"><i class="categories-child"></i> Accessories</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Dresses</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Tops</a></li>
                                                <li><a href="#"><i class="categories-child"></i> HandBags</a></li>
                                            </ul>  -->
                                        </li>
                                        <li><a href="shop.html"><i class="categories-child"></i> Trống Snare</a></li>
                                        <li><a href="#"><i class="categories-child"></i> Bộ Trống Tom</a></li>
                                    </ul>

                                </li>
                                <li class="has-sub"><a href="shop.html" class="categorie-p"><i
                                        class="fa fa-caret-right"></i>Phụ Kiện</a>
                                    <ul class="categorie_sub">
                                        <li><a href="shop.html"><i class="categories-child"></i> Bộ Khung</a>
                                            <!-- <ul class="categorie_sub">
                                                <li><a href="#"><i class="categories-child"></i> Accessories</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Dresses</a></li>
                                                <li><a href="#"><i class="categories-child"></i> Tops</a></li>
                                                <li><a href="#"><i class="categories-child"></i> HandBags</a></li>
                                            </ul>  -->
                                        </li>
                                        <li><a href="#"><i class="categories-child"></i> Chân Hit Hat Đứng</a></li>
                                        <li><a href="#"><i class="categories-child"></i> Gậy Nối Cymbal</a></li>
                                        <li><a href="#"><i class="categories-child"></i> Ghế Ngồi</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!--categorie menu end-->

                        <!--sidebar banner-->
                        <div class="sidebar_widget bottom ">
                            <div class="banner_img">
                                <a href="#"><img src="assets\img\banner2/banner3.jpg" alt=""></a>
                            </div>
                        </div>
                        <!--sidebar banner end-->

                    </div>
                    <div class="col-lg-9 col-md-12">
                        <!--banner slider start-->
                        <div class="banner_slider slider_1">
                            <div class="slider_active owl-carousel">
                                <div class="single_slider"
                                     style="background-image: url(assets/img/slider2/slider1.webp)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <p class="slider-title">Thế Giới Trống</p>
                                            <p class="slider-des">Nơi lan tỏa sức mạnh, đam mê cho cuộc sống của bạn</p>
                                            <a href="shop.html">Mua ngay</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_slider"
                                     style="background-image: url(assets/img/slider2/slider2.jpg)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <p class="slider-title">Giảm 30% Black-Friday</p>
                                            <p class="slider-des">giảm giá các sản phẩm bộ trống điện của hãng
                                                Pearl,Mapex</p>
                                            <p class="slider-des">...và hơn nữa</p>
                                            <a href="shop.html">Mua ngay</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_slider"
                                     style="background-image: url(assets/img/slider2/slider3.jpg)">
                                    <div class="slider_content">
                                        <div class="slider_content_inner">
                                            <p class="slider-title">Thể hiện chất với Roland Series 17</p>
                                            <a href="shop.html">Mua ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--banner slider start-->

                        <!--new product area start-->
                        <div class="new_product_area">
                            <div class="block_title">
                                <h3>Sản phẩm mới</h3>
                            </div>
                            <div class="row">
                                <div class="product_active owl-carousel">

                                    <%
                                        ArrayList<SanPham> sanPhams = (ArrayList<SanPham>) request.getAttribute("danhSachSanPhamMoi");
                                        for (SanPham sanPham: sanPhams) {
                                    %>

                                    <div class="col-lg-3">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="/single-product?idSanPham=<%=sanPham.getIdSP()%>"><img
                                                        src="<%=sanPham.getHinhAnh()%>" alt=""></a>
                                                <div class="img_icone">
                                                    <img src="<%=sanPham.getHinhAnh()%>" alt="">
                                                </div>
                                                <div class="product_action">
                                                    <a href="#"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ
                                                        hàng</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <span class="product_price"> <%=formatter.format(sanPham.getGiaBan())%> VND</span>
                                                <h3 class="product_title"><a href="/single-product?idSanPham=<%=sanPham.getIdSP()%>"> <%=sanPham.getTenSP()%> </a></h3>
                                            </div>
                                            <div class="product_info">
                                                <ul>
                                                    <li><a href="#" title=" Add to Wishlist ">Thanh Toán</a></li>
                                                    <li><a href="/single-product?idSanPham=<%=sanPham.getIdSP()%>" data-toggle="modal"
                                                           data-target="#modal_box" title="Quick view">Xem chi tiết</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <%
                                        }
                                    %>

                                </div>
                            </div>
                        </div>
                        <!--new product area start-->

                        <!--featured product start-->
                        <div class="featured_product">
                            <div class="block_title">
                                <h3>Sản phẩm hot</h3>
                            </div>
                            <div class="row">
                                <div class="product_active owl-carousel">

                                    <%
                                        ArrayList<SanPham> sanPhamBanChay = (ArrayList<SanPham>) request.getAttribute("danhSachSanPhamBanChay");
                                        for (SanPham sanPham: sanPhamBanChay) {
                                    %>

                                    <div class="col-lg-3">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="single-product.html"><img
                                                        src="<%=sanPham.getHinhAnh()%>" alt=""></a>
                                                <div class="hot_img">
                                                    <img src="<%=sanPham.getHinhAnh()%>" alt="">
                                                </div>
                                                <div class="product_action">
                                                    <a href="#"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ
                                                        hàng</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <span class="product_price"> <%=formatter.format(sanPham.getGiaBan())%> VND </span>
                                                <h3 class="product_title"><a href="/single-product?idSanPham=<%=sanPham.getIdSP()%>"> <%=sanPham.getTenSP()%> </a>
                                                </h3>
                                            </div>
                                            <div class="product_info">
                                                <ul>
                                                    <li><a href="#" title=" Add to Wishlist ">Thanh Toán</a></li>
                                                    <li><a href="/single-product?idSanPham=<%=sanPham.getIdSP()%>" data-toggle="modal"
                                                           data-target="#modal_box" title="Quick view">Xem chi tiết</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <%
                                        }
                                    %>

                                </div>
                            </div>
                        </div>
                        <!--featured product end-->
                        <!--featured product start-->
                        <div class="featured_product">
                            <div class="block_title">
                                <h3>Sản phẩm Đang Khuyến mãi</h3>
                            </div>
                            <div class="row">
                                <div class="product_active owl-carousel">

                                    <%
                                        ArrayList<SanPham> sanPhamKhuyenMai = (ArrayList<SanPham>) request.getAttribute("danhSachSanPhamKhuyenMai");
                                        for (SanPham sanPham: sanPhamKhuyenMai) {
                                    %>

                                    <div class="col-lg-3">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="single-product.html"><img
                                                        src="<%=sanPham.getHinhAnh()%>" alt=""></a>
                                                <div class="hot_img img_icone-sale">
                                                    <img src="<%=sanPham.getHinhAnh()%>" alt="">
                                                    <span class="number-sale"> <%=sanPham.getKhuyenMai()%></span>
                                                </div>
                                                <div class="product_action">
                                                    <a href="#"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ
                                                        hàng</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <span class="product_price"> <%=formatter.format(sanPham.getGiaBan())%> VND </span>
                                                <h3 class="product_title"><a href="/single-product?idSanPham=<%=sanPham.getIdSP()%>"> <%=sanPham.getTenSP()%> </a></h3>
                                            </div>
                                            <div class="product_info">
                                                <ul>
                                                    <li><a href="#" title=" Add to Wishlist ">Thanh Toán</a></li>
                                                    <li><a href="/single-product?idSanPham=<%=sanPham.getIdSP()%>" data-toggle="modal"
                                                           data-target="#modal_box" title="Quick view">Xem chi tiết</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <%
                                        }
                                    %>

                                </div>
                            </div>
                        </div>
                        <!--featured product end-->

                        <!--brand logo strat-->
                        <div class="brand_logo mb-60">
                            <div class="block_title">
                                <h3>Hãng</h3>
                            </div>
                            <div class="row">
                                <div class="brand_active owl-carousel">
                                    <div class="col-lg-2">
                                        <div class="single_brand brands-bottom">
                                            <a href="#" class="brands-bottom"><img src="assets/img/brand/DW.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="single_brand">
                                            <a href="#" class="brands-bottom"><img src="assets/img/brand/Mapex.png"
                                                                                   alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="single_brand">
                                            <a href="#" class="brands-bottom"><img src="assets/img/brand/odery.png"
                                                                                   alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="single_brand">
                                            <a href="#" class="brands-bottom"><img src="assets/img/brand/PDP.png"
                                                                                   alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="single_brand">
                                            <a href="#" class="brands-bottom"><img src="assets/img/brand/Pearl.png"
                                                                                   alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="single_brand">
                                            <a href="#" class="brands-bottom"><img src="assets/img/brand/Roland.png"
                                                                                   alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="single_brand">
                                            <a href="#" class="brands-bottom"><img src="assets/img/brand/Yamaha.jpg"
                                                                                   alt=""></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--brand logo end-->
                    </div>
                </div>
            </div>
            <!--pos home section end-->
        </div>
        <!--pos page inner end-->
    </div>
</div>
<!--pos page end-->

<!-- footer -->
<%@ include file="/common/web/footer.jsp" %>
<!-- footer -->

<!-- modal area start -->
<div class="modal fade" id="modal_box" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal_body">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-12">
                            <div class="modal_tab">
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                                        <div class="modal_tab_img">
                                            <a href="#"><img src="assets\img\product\product13.jpg" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="tab2" role="tabpanel">
                                        <div class="modal_tab_img">
                                            <a href="#"><img src="assets\img\product\product14.jpg" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="tab3" role="tabpanel">
                                        <div class="modal_tab_img">
                                            <a href="#"><img src="assets\img\product\product15.jpg" alt=""></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal_tab_button">
                                    <ul class="nav product_navactive" role="tablist">
                                        <li>
                                            <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab"
                                               aria-controls="tab1" aria-selected="false"><img
                                                    src="assets\img\cart\cart17.jpg" alt=""></a>
                                        </li>
                                        <li>
                                            <a class="nav-link" data-toggle="tab" href="#tab2" role="tab"
                                               aria-controls="tab2" aria-selected="false"><img
                                                    src="assets\img\cart\cart18.jpg" alt=""></a>
                                        </li>
                                        <li>
                                            <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab"
                                               aria-controls="tab3" aria-selected="false"><img
                                                    src="assets\img\cart\cart19.jpg" alt=""></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-sm-12">
                            <div class="modal_right">
                                <div class="modal_title mb-10">
                                    <h2>Handbag feugiat</h2>
                                </div>
                                <div class="modal_price mb-10">
                                    <span class="new_price">$64.99</span>
                                    <span class="old_price">$78.99</span>
                                </div>
                                <div class="modal_content mb-10">
                                    <p>Short-sleeved blouse with feminine draped sleeve detail.</p>
                                </div>
                                <div class="modal_size mb-15">
                                    <h2>size</h2>
                                    <ul>
                                        <li><a href="#">s</a></li>
                                        <li><a href="#">m</a></li>
                                        <li><a href="#">l</a></li>
                                        <li><a href="#">xl</a></li>
                                        <li><a href="#">xxl</a></li>
                                    </ul>
                                </div>
                                <div class="modal_add_to_cart mb-15">
                                    <form action="#">
                                        <input min="0" max="100" step="2" value="1" type="number">
                                        <button type="submit">add to cart</button>
                                    </form>
                                </div>
                                <div class="modal_description mb-15">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>
                                </div>
                                <div class="modal_social">
                                    <h2>Share this product</h2>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- modal area end -->


<!-- all js here -->
<%@ include file="/common/web/bottom.jsp" %>

</body>
</html>
