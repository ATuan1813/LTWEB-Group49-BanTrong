<%@ page import="com.project.cuoiky.ltw.model.SanPham" %>
<%@ page import="com.project.cuoiky.ltw.model.HinhAnh" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
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
    <title>Sản Phẩm - Shop Drum</title>
</head>
<body>
<!-- Add your site or application content here -->

<%
    SanPham sanPham = null;
    ArrayList<HinhAnh> danhSachHinhAnh = null;

    if (request.getAttribute("sanPham") != null) {
        sanPham = (SanPham) request.getAttribute("sanPham");
    }

    if (request.getAttribute("danhSachHinhAnh") != null) {
        danhSachHinhAnh = (ArrayList<HinhAnh>) request.getAttribute("danhSachHinhAnh");
    }

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
            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="/">Trang Chủ</a></li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li>Sản Phẩm</li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li><%=sanPham.getTenSP()%></li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!--product wrapper start-->
            <div class="product_details">
                <div class="row">
                    <div class="col-lg-5 col-md-6">
                        <div class="product_tab fix">
                            <div class="tab-content produc_tab_c">
                                <%
                                    if (danhSachHinhAnh != null) {
                                        int i = 0;
                                        for (HinhAnh hinhAnh: danhSachHinhAnh) {
                                            i++;
                                %>
                                <div class="tab-pane fade show <%=i == 1 ? "active" : ""%>" id="p_tab<%=hinhAnh.getIdHA()%>" role="tabpanel">
                                    <div class="modal_img">
                                        <a href="#"><img src="<%=hinhAnh.getUrlHA()%>"
                                                         alt=""></a>
                                        <div class="img_icone">
                                            <img src="<%=hinhAnh.getUrlHA()%>" alt="">
                                        </div>
                                        <div class="view_img">
                                            <a class="large_view"
                                               href="<%=hinhAnh.getUrlHA()%>"><i
                                                    class="fa fa-search-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <%
                                        }
                                    }
                                %>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6">
                        <div class="product_d_right">
                            <h1><%=sanPham.getTenSP()%></h1>
                            <p>Mã Sản Phẩm: <%=sanPham.getIdSP()%></p>
                            <div class="product_ratting mb-10">
                                <ul>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#">Đánh giá</a></li>
                                </ul>
                            </div>
                            <div class="product_desc">
                                <p> <%=sanPham.getMotaSP()%> </p>
                            </div>

                            <div class="content_price mb-15">
                                <span>Giá Bán: <%=formatter.format(sanPham.getGiaBan())%> VND</span>

                                <% if (sanPham.getKhuyenMai() != null) { %>
                                <span>Khuyến Mãi: <%=sanPham.getKhuyenMai() != null ? sanPham.getKhuyenMai() + "%" : ""%></span>
                                <% } %>
                            </div>
                            <div class="box_quantity mb-20">
                                <form action="#">
                                    <label>Số lượng</label>
                                    <input min="0" max="100" value="1" type="number">
                                </form>
                                <button type="submit"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
                                <!--                                <a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a>-->
                            </div>

                            <div class="sidebar_widget color">
                                <h2>Chọn màu</h2>
                                <div class="widget_color">
                                    <ul>
                                        <li><a href="#"></a></li>
                                        <li><a href="#"></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="product_stock mb-20">
                                <span>Còn <%=sanPham.getSoLuongTrongKho() - sanPham.getSoLuongDaBan()%> sản phẩm</span>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--product details end-->


            <!--product info start-->
            <div class="product_d_info">
                <div class="row">
                    <div class="col-12">
                        <div class="product_d_inner">
                            <div class="product_info_button">
                                <ul class="nav" role="tablist">
                                    <li>
                                        <a class="active" data-toggle="tab" href="#info" role="tab" aria-controls="info"
                                           aria-selected="false">Mô tả sản phẩm</a>
                                    </li>
                                    <li>
                                        <a data-toggle="tab" href="#sheet" role="tab" aria-controls="sheet"
                                           aria-selected="false">Thông số kỹ thuật</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="info" role="tabpanel">
                                    <div class="product_info_content">
                                        <p> <%=sanPham.getMotaSP()%> </p>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="sheet" role="tabpanel">
                                    <div class="product_info_content">
                                        <p> <%=sanPham.getThongSoKyThuat()%> </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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
<!-- all js here -->
<%@ include file="/common/web/bottom.jsp" %>
</body>
</html>

