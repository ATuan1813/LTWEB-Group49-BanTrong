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
            <%-- all library here--%>
            <%@ include file="/common/web/header.jsp" %>
            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Trang Chủ</a></li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li>Tài Khoản</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!--contact area start-->
            <div class="contact_area">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message">
                            <div class="contact_message contact_info">
                                <h3><strong>Quên Mật Khẩu Thành Công</strong></h3>
                                <p><strong>Vui lòng kiểm tra hộp thư đến hoặc thư mục Spam!</strong></p>
                                <ul>
                                    <li><a href="/login">Đăng Nhập Tại Đây</a></li>
                                    <li><a href="/register">Đăng Ký Tài Khoản Mới</a></li>
                                    <li><a href="/forgot-password">Quên Mật Khẩu</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message contact_info">
                            <h3><strong>Giờ làm việc</strong></h3>
                            <p><strong>Thứ hai – Thứ bảy</strong>:  08AM – 22PM</p>
                            <ul>
                                <li><i class="fa fa-fax"></i>  Địa chỉ : Cách mạng tháng 8, HCM</li>
                                <li><i class="fa fa-envelope-o"></i> Email :  <a href="#">Drums@shop.com</a></li>
                                <li><i class="fa fa-phone"></i> Điện thoại : 0(1234) 567 890</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!--contact area end-->

        </div>
        <!--pos page inner end-->
    </div>
</div>
<!--pos page end-->

<!-- footer -->
<%@ include file="/common/web/footer.jsp" %>
<!-- footer -->

<!-- all js here -->
<%@ include file="/common/web/bottom.jsp" %>
</body>
</html>

