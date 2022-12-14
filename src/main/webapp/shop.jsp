<%--
  Created by IntelliJ IDEA.
  User: ANHTUAN
  Date: 12/11/2022
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <%-- all library here--%>
    <%@ include file="/common/web/head.jsp" %>
</head>
<body>
<!-- Add your site or application content here -->

<!--pos page start-->
<div class="pos_page">
    <div class="container">
        <!--pos page inner-->
        <div class="pos_page_inner">
            <!-- header -->
            <%@ include file="/common/web/header.jsp" %>
            <!-- header -->
            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Trang chủ</a></li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li>Trống bộ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!--pos home section-->
            <div class="pos_home_section">
                <div class="row pos_home">
                    <div class="col-lg-3 col-md-12">
                        <!--layere categorie"-->
                        <div class="sidebar_widget shop_c">
                            <div class="categorie__titile">
                                <h4>Hãng</h4>
                            </div>
                            <div class="layere_categorie">
                                <ul>
                                    <li>
                                        <input id="brandA" type="checkbox">
                                        <label for="brandA">Pearl</label>
                                    </li>
                                    <li>
                                        <input id="brandB" type="checkbox">
                                        <label for="brandB">Pearl</label>
                                    </li>
                                    <li>
                                        <input id="brandC" type="checkbox">
                                        <label for="brandC">Pearl</label>
                                    </li>
                                    <li>
                                        <input id="brandD" type="checkbox">
                                        <label for="brandD">Pearl</label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--layere categorie end-->

                        <!--color area start-->
                        <div class="sidebar_widget color">
                            <h2>Màu sắc</h2>
                            <div class="widget_color">
                                <ul>
                                    <li><a href="#">Black</a></li>

                                    <li><a href="#">Orange</a></li>

                                    <li><a href="#">Blue</a></li>

                                    <li><a href="#">Yellow</a></li>

                                    <li><a href="#">pink</a></li>

                                    <li><a href="#">green</a></li>

                                </ul>
                            </div>
                        </div>
                        <!--color area end-->

                        <!--price slider start-->
                        <!--                        <div class="sidebar_widget price">-->
                        <!--                            <h2>Tầm giá</h2>-->
                        <!--                            <div class="ca_search_filters">-->
                        <!--                                <input type="text" name="text" id="amount">-->
                        <!--                                <div id="slider-range"></div>-->
                        <!--                            </div>-->
                        <!--                        </div>-->
                        <!--price slider end-->

                        <!--newsletter block start-->
                        <div class="sidebar_widget newsletter mb-30">
                            <div class="block_title">
                                <h3>Tin tức</h3>
                            </div>
                            <form action="#">
                                <p>Đăng ký để nhận tin tức mới</p>
                                <input placeholder="Địa chỉ email" type="text">
                                <button type="submit">Đăng ký</button>
                            </form>
                        </div>
                        <!--newsletter block end-->

                        <!--special product start-->
                        <div class="sidebar_widget special">
                            <div class="block_title">
                                <h3>Sản phẩm đặc biệt</h3>
                            </div>
                            <div class="special_product_inner mb-20">
                                <div class="special_p_thumb">
                                    <a href="single-product.html"><img
                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg" alt=""></a>
                                </div>
                                <div class="small_p_desc">
                                    <div class="product_ratting">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        </ul>
                                    </div>
                                    <h3><a href="single-product.html">PEARL ROADSHOW RS525 STANDARD</a></h3>
                                    <div class="special_product_proce">
                                        <span class="old_price">14,030,000đ</span>
                                        <span class="new_price">10,999,000đ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="special_product_inner mb-20">
                                <div class="special_p_thumb">
                                    <a href="single-product.html"><img
                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg" alt=""></a>
                                </div>
                                <div class="small_p_desc">
                                    <div class="product_ratting">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        </ul>
                                    </div>
                                    <h3><a href="single-product.html">PEARL ROADSHOW RS525 STANDARD</a></h3>
                                    <div class="special_product_proce">
                                        <span class="old_price">14,030,000đ</span>
                                        <span class="new_price">10,999,000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--special product end-->


                    </div>
                    <div class="col-lg-9 col-md-12">
                        <!--banner slider start-->
                        <div class="banner_slider mb-35">
                            <img src="assets/img/Home-Banner-LIMITED-2.jpg" alt="">
                        </div>
                        <!--banner slider start-->

                        <!--shop toolbar start-->
                        <div class="shop_toolbar mb-35">

                            <div class="list_button">
                                <ul class="nav" role="tablist">
                                    <li>
                                        <a class="active" data-toggle="tab" href="#large" role="tab"
                                           aria-controls="large" aria-selected="true"><i class="fa fa-th-large"></i></a>
                                    </li>
                                    <li>
                                        <a data-toggle="tab" href="#list" role="tab" aria-controls="list"
                                           aria-selected="false"><i class="fa fa-th-list"></i></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="select_option">
                                <form action="#">
                                    <label>Sắp xếp</label>
                                    <select name="orderby" id="short">
                                        <option selected="" value="0">Sắp xếp</option>
                                        <option value="1">Giá: thấp - cao</option>
                                        <option value="2">Giá: cao - thấp</option>
                                        <option value="3">Tên: A-Z</option>
                                        <option value="4">Tên: Z-A</option>
                                    </select>
                                </form>
                            </div>
                        </div>
                        <!--shop toolbar end-->

                        <!--shop tab product-->
                        <div class="shop_tab_product">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="large" role="tabpanel">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt="">
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <h3 class="product_title"><a href="single-product.html">PEARL
                                                        ROADSHOW RS525 STANDARD</a></h3>
                                                    <span class="product_price">14,030,000đ</span>
                                                </div>
                                                <div class="product_info">
                                                    <ul>
                                                        <li><a href="#" title="Thêm vào giỏ hàng">Thêm vào giỏ hàng</a>
                                                        </li>
                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                               title="Xem thêm">Xem thêm</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="list" role="tabpanel">
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product_list_item mb-35">
                                        <div class="row align-items-center">
                                            <div class="col-lg-4 col-md-6 col-sm-6">
                                                <div class="product_thumb">
                                                    <a href="single-product.html"><img
                                                            src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                            alt=""></a>
                                                    <div class="img_icone">
                                                        <img src="assets\img\cart\span-new.png" alt="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6">
                                                <div class="list_product_content">
                                                    <div class="product_ratting">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list_title">
                                                        <h3><a href="single-product.html">PEARL ROADSHOW RS525
                                                            STANDARD</a></h3>
                                                    </div>
                                                    <p class="design">Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                                    <div class="content_price mt-3">
                                                        <span>14,030,000đ</span>
                                                        <span class="old-price fade">$130.00</span>
                                                    </div>
                                                    <div class="add_links">
                                                        <ul>
                                                            <li><a href="#" title="Thêm vào giỏ"><i
                                                                    class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box"
                                                                   title="Xem chi tiết"><i class="fa fa-eye"
                                                                                           aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!--shop tab product end-->

                        <!--pagination style start-->
                        <div class="pagination_style">
                            <div class="page_number">
                                <span>Trang: </span>
                                <ul>
                                    <li>«</li>
                                    <li class="current_number">1</li>
                                    <li><a href="#">2</a></li>
                                    <li>»</li>
                                </ul>
                            </div>
                        </div>
                        <!--pagination style end-->
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
                                            <a href="#"><img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg"
                                                             alt=""></a>
                                        </div>
                                    </div>
                                    <!--                                    <div class="tab-pane fade" id="tab2" role="tabpanel">-->
                                    <!--                                        <div class="modal_tab_img">-->
                                    <!--                                            <a href="#"><img src="assets/img/pearl-dacade-maple-dmp943xp-c2281.jpg" alt=""></a>-->
                                    <!--                                        </div>-->
                                    <!--                                    </div>-->
                                    <!--                                    <div class="tab-pane fade" id="tab3" role="tabpanel">-->
                                    <!--                                        <div class="modal_tab_img">-->
                                    <!--                                            <a href="#"><img src="assets\img\product\product15.jpg" alt=""></a>-->
                                    <!--                                        </div>-->
                                    <!--                                    </div>-->
                                </div>
                                <!--                                <div class="modal_tab_button">-->
                                <!--                                    <ul class="nav product_navactive" role="tablist">-->
                                <!--                                        <li>-->
                                <!--                                            <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab"-->
                                <!--                                               aria-controls="tab1" aria-selected="false"><img-->
                                <!--                                                    src="assets\img\cart\cart17.jpg" alt=""></a>-->
                                <!--                                        </li>-->
                                <!--                                        <li>-->
                                <!--                                            <a class="nav-link" data-toggle="tab" href="#tab2" role="tab"-->
                                <!--                                               aria-controls="tab2" aria-selected="false"><img-->
                                <!--                                                    src="assets\img\cart\cart18.jpg" alt=""></a>-->
                                <!--                                        </li>-->
                                <!--                                        <li>-->
                                <!--                                            <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab"-->
                                <!--                                               aria-controls="tab3" aria-selected="false"><img-->
                                <!--                                                    src="assets\img\cart\cart19.jpg" alt=""></a>-->
                                <!--                                        </li>-->
                                <!--                                    </ul>-->
                                <!--                                </div>-->
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-sm-12">
                            <div class="modal_right">
                                <div class="modal_title mb-10">
                                    <h2>PEARL ROADSHOW RS525 STANDARD</h2>
                                    <p>Mã SP : RS525SC/C91</p>
                                </div>
                                <div class="modal_price mb-10">
                                    <span class="new_price">10,999,000đ</span>
                                    <span class="old_price">14,030,000đ</span>
                                </div>
                                <!--                                <div class="modal_content mb-10">-->
                                <!--                                    <p>Short-sleeved blouse with feminine draped sleeve detail.</p>-->
                                <!--                                </div>-->
                                <div class="modal_size mb-15">
                                    <h2>màu sắc</h2>
                                    <ul>
                                        <li><a href="#">trắng</a></li>
                                        <li><a href="#">vàng</a></li>
                                    </ul>
                                </div>
                                <div class="modal_add_to_cart mb-15">
                                    <form action="#">
                                        <input min="0" max="100" step="2" value="1" type="number">
                                        <button type="submit">Thêm vào giỏ hàng</button>
                                    </form>
                                </div>
                                <div class="modal_description mb-15">
                                    <p>Mua hàng trả góp 0%, Bảo hành chính hãng </br>
                                        Thiết kế ấn tượng, đẹp mắt, thoải mái cho người chơi </br>
                                        Hệ thống Pearl Opti-Loc Mounting </br>
                                        Giá lẻ không bao gồm hardware và cymbal</p>
                                </div>
                                <div class="modal_social">
                                    <h2>Ghé thăm chúng tôi</h2>
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

