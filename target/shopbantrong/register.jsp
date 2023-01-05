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
    String taiKhoan = "";
    String taiKhoan_err = "";
    String matKhau_err = "";
    String xacNhanMatKhau_err = "";

    if (request.getAttribute("taiKhoan") != null) {
        taiKhoan = request.getAttribute("taiKhoan").toString();
    }

    if (request.getAttribute("taiKhoan_err") != null) {
        taiKhoan_err = request.getAttribute("taiKhoan_err").toString();
    }

    if (request.getAttribute("matKhau_err") != null) {
        matKhau_err = request.getAttribute("matKhau_err").toString();
    }

    if (request.getAttribute("xacNhanMatKhau_err") != null) {
        xacNhanMatKhau_err = request.getAttribute("xacNhanMatKhau_err").toString();
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
            <div class="breadcrumbs_area">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Trang chủ</a></li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li>Đăng nhập</li>
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
                            <h2>Đăng kí</h2>
                            <form action="register" method="post">
                                <p>
                                    <label for="taiKhoan">Địa chỉ email <span>*</span></label>
                                    <input type="text" id="taiKhoan" name="taiKhoan" value="<%=taiKhoan%>" >
                                        <%
                                        if (taiKhoan_err != "") {
                                    %>
                                <p class="text-danger"><%=taiKhoan_err%></p>
                                <%
                                    }
                                %>
                                </p>
                                <p>
                                    <label for="matKhau">Mật khẩu <span>*</span></label>
                                    <input type="password" id="matKhau" name="matKhau">
                                        <%
                                        if (matKhau_err != "") {
                                    %>
                                <p class="text-danger"><%=matKhau_err%></p>
                                <%
                                    }
                                %>
                                </p>
                                <p>
                                    <label for="xacNhanMatKhau">Xác Nhận Mật khẩu <span>*</span></label>
                                    <input type="password" id="xacNhanMatKhau" name="xacNhanMatKhau">
                                        <%
                                        if (xacNhanMatKhau_err != "") {
                                    %>
                                <p class="text-danger"><%=xacNhanMatKhau_err%></p>
                                <%
                                    }
                                %>
                                </p>
                                <div class="login_submit">
                                    <button type="submit">Đăng kí</button>

                                    <a href="login.jsp">Đăng nhập</a><br>

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

