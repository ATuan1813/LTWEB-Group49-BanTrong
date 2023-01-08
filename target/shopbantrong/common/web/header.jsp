<%@ page import="com.project.cuoiky.ltw.model.NguoiDung" %><%--
  Created by IntelliJ IDEA.
  User: ANHTUAN
  Date: 12/12/2022
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--header area -->
<div class="header_area">
    <!--header top-->
    <div class="header_top">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-6">
                <div class="switcher">
                    <ul>
                        <li class="languages"><a href="#"><img src="assets/img/logo/logoVN.png" alt=""> Tiếng Việt </a>
                            <ul class="dropdown_languages">
                                <li><a href="#" class="logo_languages"><img src="assets/img/logo/logoVN.png" alt=""> Tiếng Việt</a></li>
                                <li><a href="#"><img src="assets/img/logo/fontlogo2.jpg" alt=""> English </a></li>
                            </ul>
                        </li>

                        <!-- <li class="currency"><a href="#"> Currency : $ <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown_currency">
                                <li><a href="#"> Dollar (USD)</a></li>
                                <li><a href="#"> Euro (EUR)  </a></li>
                            </ul>
                        </li>  -->
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="header_links">
                    <ul>
                        <li><a href="contact.jsp" title="">Liên Lạc</a></li>
                        <li><a href="my-account.jsp" title="">Tài khoản của tôi</a></li>
                        <li><a href="cart.jsp" title="">Giỏ hàng</a></li>
                        <%
                            if (session.getAttribute("userLogin") == null) {
                        %>
                        <li><a href="/login" title="">Đăng nhập</a></li>
                        <%
                            } else {
                        %>
                        <li><a href="/profile" title="">Xin chào <%=session.getAttribute("userLogin")%><a/></li>
                        <li><a></a></li>
                        <%
                            }
                        %>

                        <%
                            if (session.getAttribute("userLogin") != null) {
                        %>
                        <li><a href="/logout" title="">Đăng xuất</a></li>
                        <%
                            }
                        %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--header top end-->

    <!--header middel-->
    <div class="header_middel">
        <div class="row align-items-center">
            <!--logo start-->
            <div class="col-lg-3 col-md-3">
                <div class="logo">
                    <a href="/"><img src="assets/img/logo/logoShop.jpg" alt=""></a>
                </div>
            </div>
            <!--logo end-->
            <div class="col-lg-9 col-md-9">
                <div class="header_right_info">
                    <div class="search_bar">
                        <form action="#">
                            <input placeholder="Tìm kiếm..." type="text">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <div class="shopping_cart">
                        <a href="#"><i class="fa fa-shopping-cart"></i> 2 Items - 215.600.000 vnd <i class="fa fa-angle-down"></i></a>

                        <!--mini cart-->
                        <div class="mini_cart">
                            <div class="cart_item">
                                <div class="cart_img">
                                    <a href="#"><img src="assets/img/product2/template1/template1.png" alt=""></a>
                                </div>
                                <div class="cart_info">
                                    <a href="#">Pearl President Series Phenolic 3-piece Limited Edition Shell Pack in Pearl White Oyster</a>
                                    <span class="cart_price">115.000.000 vnd</span>
                                    <span class="quantity">Số Lượng: 1</span>
                                </div>
                                <div class="cart_remove">
                                    <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                </div>
                            </div>
                            <div class="cart_item">
                                <div class="cart_img">
                                    <a href="#"><img src="assets/img/product2/template1/template2.png" alt=""></a>
                                </div>
                                <div class="cart_info">
                                    <a href="#">Pearl Session Studio Select 22″ 4 Piece Shell Pack-Gloss Barnwood</a>
                                    <span class="cart_price">105.000.000 vnd</span>
                                    <span class="quantity">Số Lượng: 1</span>
                                </div>
                                <div class="cart_remove">
                                    <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                </div>
                            </div>
                            <div class="shipping_price">
                                <span> Vận Chuyển </span>
                                <span>  600.000 vnd  </span>
                            </div>
                            <div class="total_price">
                                <span> Tổng </span>
                                <span class="prices">  215.600.000 vnd  </span>
                            </div>
                            <div class="cart_button">
                                <a href="cart.jsp"> Thanh Toán</a>
                            </div>
                        </div>
                        <!--mini cart end-->
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--header middel end-->
    <div class="header_bottom">
        <div class="row">
            <div class="col-12">
                <div class="main_menu_inner">
                    <div class="main_menu d-none d-lg-block">
                        <nav>
                            <ul>
                                <li class="active"><a href="/">Trang chủ</a></li>
                                <li><a href="/shop">Cửa Hàng</a></li>
                                <li><a href="shop.jsp">BỘ TRỐNG</a>
                                    <div class="mega_menu drum-category" >
                                        <div class="mega_top fix">
                                            <div class="mega_items-col">
                                                <div class="mega_items">
                                                    <h3><a href="shop.jsp">Bộ Trống</a></h3>
                                                    <ul>
                                                        <li><a href="shop.jsp">Bộ Trống Starter</a></li>
                                                        <li><a href="shop.jsp">Bộ Trống Shell Pack</a></li>
                                                        <li><a href="shop.jsp">Bộ Trống Travel</a></li>

                                                    </ul>
                                                </div>
                                                <div class="mega_items item-category">
                                                    <h3 class="title-item"><a href="shop.jsp">Bộ Trống Điện</a></h3>

                                                </div>
                                            </div>

                                            <div class="mega_items">
                                                <a href="shop.jsp" class="img-head"><img src="assets/img/product2/head-img-drum.jpg" alt=""></a>
                                                <a href="shop.jsp" class="img-head"><img src="assets/img/product2/head-img-drumE.jpg" alt=""></a>
                                            </div>
                                        </div>

                                    </div>
                                </li>
                                <li><a href="shop.jsp">Hãng Trống</a>
                                    <div class="mega_menu brands">
                                        <div class="mega_top fix brands-items">
                                            <div class="mega_items">
                                                <a href="shop.jsp" class="img-brand--center">
                                                    <div>
                                                        <img src="assets/img/brand/DW.png" alt="">
                                                    </div>
                                                    <p>Drum Workshop</p>
                                                </a>
                                            </div>
                                            <div class="mega_items">
                                                <a href="shop.jsp" class="img-brand--center">
                                                    <div>
                                                        <img src="assets/img/brand/Mapex.png" alt="">
                                                    </div>
                                                    <p>Mapex</p>
                                                </a>
                                            </div>
                                            <div class="mega_items">
                                                <a href="shop.jsp" class="img-brand--center">
                                                    <div>
                                                        <img src="assets/img/brand/odery.png" alt="">
                                                    </div>
                                                    <p>Odery</p>
                                                </a>
                                            </div>
                                            <div class="mega_items">
                                                <a href="shop.jsp" class="img-brand--center">
                                                    <div>
                                                        <img src="assets/img/brand/PDP.png" alt="">
                                                    </div>
                                                    <p>PDP</p>
                                                </a>
                                            </div>
                                            <div class="mega_items">
                                                <a href="shop.jsp" class="img-brand--center">
                                                    <div>
                                                        <img src="assets/img/brand/Pearl.png" alt="">
                                                    </div>
                                                    <p>Pearl</p>
                                                </a>
                                            </div>
                                            <div class="mega_items">
                                                <a href="shop.jsp" class="img-brand--center">
                                                    <div>
                                                        <img src="assets/img/brand/Roland.png" alt="">
                                                    </div>
                                                    <p>Roland</p>
                                                </a>
                                            </div>
                                            <div class="mega_items">
                                                <a href="shop.jsp" class="img-brand--center">
                                                    <div>
                                                        <img src="assets/img/brand/Yamaha.jpg" alt="">
                                                    </div>
                                                    <p>Yamaha</p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="shop.jsp">Trống Lẻ & Phụ Kiện</a>
                                    <div class="mega_menu">
                                        <div class="mega_top fix">
                                            <div class="mega_items">
                                                <h3><a href="shop.jsp">Trống Lẻ</a></h3>
                                                <ul>
                                                    <li><a href="shop.jsp">Bộ Tom</a></li>
                                                    <li><a href="shop.jsp">Trống Tom</a></li>
                                                    <li><a href="shop.jsp">Trống Snare</a></li>
                                                </ul>
                                            </div>
                                            <div class="mega_items">
                                                <h3><a href="shop.jsp">Phụ Kiện</a></h3>
                                                <ul>
                                                    <li><a href="shop.jsp">Bộ Khung</a></li>
                                                    <li><a href="shop.jsp">Chân Hi-Hat Đứng</a></li>
                                                    <li><a href="shop.jsp">Gậy Nối Cymbal</a></li>
                                                    <li><a href="shop.jsp">Ghế</a></li>
                                                    <li><a href="shop.jsp">Gậy Gõ Trống</a></li>
                                                    <li><a href="shop.jsp">Bàn Đạp Trống</a></li>
                                                </ul>
                                            </div>
                                            <div class="mega_items">
                                                <a href="shop.jsp"><img src="assets/img/elementHardware/hardwear-pack.jpg" alt=""></a>
                                                <a href="shop.jsp"><img src="assets/img/elementHardware/clamd-cymbal.jpg" alt=""></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="shop.jsp">CYMBAL</a>
                                    <div class="mega_menu cymbal-items">
                                        <div class="mega_top fix cymbal-items1">
                                            <div class="mega_items mega_items1">
                                                <ul>
                                                    <li><a href="shop.jsp">FX Cymbal</a></li>
                                                    <li><a href="shop.jsp">Crash Cymbals</a></li>
                                                    <li><a href="shop.jsp">Hi-Hat Cymbals</a></li>
                                                </ul>
                                            </div>
                                            <div class="mega_items">
                                                <a href="shop.jsp"><img src="assets/img/elementHardware/Cymbal.jpg" alt=""></a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="contact.jsp">Liên lạc</a></li>

                            </ul>
                        </nav>
                    </div>
                    <div class="mobile-menu d-lg-none">
                        <nav>
                            <ul>
                                <li><a href="index.jsp">Trang chủ</a>
                                    <!-- <div>
                                        <div>
                                            <ul>
                                                <li><a href="index.jsp">Home 1</a></li>
                                                <li><a href="index-2.jsp">Home 2</a></li>
                                            </ul>
                                        </div>
                                    </div>  -->
                                </li>
                                <li><a href="shop.jsp">Bộ trống</a>
                                    <div>
                                        <div>
                                            <ul>
                                                <li><a href="#">Bộ Trống Starter</a></li>
                                                <li><a href="#">Shell Pack</a></li>
                                                <li><a href="#">Bộ Trống Travel</a></li>
                                                <li><a href="#">Bộ Trống Điện</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="shop.jsp">Hãng</a>
                                    <div>
                                        <div>
                                            <div>
                                                <!-- <h3><a href="#">Tops</a></h3> -->
                                                <ul>
                                                    <li><a href="#">Drum Workshop</a></li>
                                                    <li><a href="#">Mapex</a></li>
                                                    <li><a href="#">Odery</a></li>
                                                    <li><a href="#">PDP</a></li>
                                                    <li><a href="#">Pearl</a></li>
                                                    <li><a href="#">Roland</a></li>
                                                    <li><a href="#">Yamaha</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="shop.jsp">CYMBAL</a>
                                    <div>
                                        <div>
                                            <div>
                                                <!-- <h3><a href="#">Bands</a></h3> -->
                                                <ul>
                                                    <li><a href="#">FX Cymbal</a></li>
                                                    <li><a href="#">Crash Cymbals</a></li>
                                                    <li><a href="#">Hi-Hat Cymbals</a></li>
                                                </ul>
                                            </div>
                                            <!-- <div>
                                                <a href="#"><img src="assets\img\banner\banner3.jpg" alt=""></a>
                                            </div> -->
                                        </div>

                                    </div>
                                </li>
                                <li><a href="shop.jsp">Trống Lẻ & Phụ Kiện</a>
                                    <div>
                                        <div>
                                            <div>
                                                <ul class="drum-li-ele">
                                                    <li><a class="small-title" href="#"><h6>Trống Lẻ</h6></a></li>
                                                    <li><a href="#">Bộ Tom</a></li>
                                                    <li><a href="#">Trống Tom</a></li>
                                                    <li><a href="#">Trống Snare</a></li>


                                                    <li><a class="small-title" href="#"><h6>Phụ Kiện</h6></a></li>
                                                    <li><a href="#">Bộ Khung</a></li>
                                                    <li><a href="#">Chân Hi-Hat Đứng</a></li>
                                                    <li><a href="#">Gậy Nối Cymbal</a></li>
                                                    <li><a href="#">Ghế</a></li>
                                                    <li><a href="#">Gậy Gõ Trống</a></li>
                                                    <li><a href="#">Bàn Đạp Trống</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li><a href="contact.jsp">Liên lạc</a>

                                </li>
                                <li><a href="contact.jsp">Login</a></li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--header end -->
