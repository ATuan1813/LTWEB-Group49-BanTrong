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
<%

    String taiKhoan_err = "";
    String taiKhoan = "";

    if (request.getAttribute("taiKhoan_err") != null) {
        taiKhoan_err = request.getAttribute("taiKhoan_err").toString();
    }

    if (request.getAttribute("taiKhoan") != null) {
        taiKhoan = request.getAttribute("taiKhoan").toString();
    }
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

            <!--breadcrumbs area end-->
            <!--header end -->
            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Trang chủ</a></li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li>Quên mật khẩu</li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!-- customer login start -->
            <div class="customer_login">
                <div class="row">
                    <!--login area start-->
                    <div class="col-lg-6 col-md-6" style="margin-left: 25%;">
                        <div class="account_form">
                            <h2>Quên mật khẩu</h2>
                            <form action="forgot-password" method="post">
                                <p>
                                    <label>Địa chỉ email <span>*</span></label>
                                    <input type="text" name="taiKhoan" value="<%=taiKhoan%>">
                                        <%
                                        if (taiKhoan_err != "") {
                                    %>
                                <p class="text-danger"><%=taiKhoan_err%>
                                </p>
                                <%
                                    }
                                %>
                                </p>
                                <div class="login_submit">
                                    <button type="submit">Quên mật khẩu</button>
                                    <a href="login.jsp">Đăng nhập</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--login area start-->
                </div>
            </div>
            <!-- customer login end -->

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

