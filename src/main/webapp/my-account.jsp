<%--
  Created by IntelliJ IDEA.
  User: ANHTUAN
  Date: 12/11/2022
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx" xmlns="http://www.w3.org/1999/html">
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
                                <li><a href="index.html">home</a></li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li>tài khoản của tôi</li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!-- Start Maincontent  -->
            <section class="main_content_area">
                <div class="account_dashboard">
                    <div class="row">
                        <div class="col-sm-12 col-md-3 col-lg-3">
                            <!-- Nav tabs -->
                            <div class="dashboard_tab_button">
                                <ul role="tablist" class="nav flex-column dashboard-list">
                                    <li><a href="#orders" data-toggle="tab" class="nav-link active">Lịch sử mua hàng</a></li>
                                    <li><a href="#address" data-toggle="tab" class="nav-link">Thông tin giao hàng</a></li>
                                    <li><a href="#account-details" data-toggle="tab" class="nav-link">Thông tin cá nhân</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-9 col-lg-9">
                            <!-- Tab panes -->
                            <div class="tab-content dashboard_content">
                                <div class="tab-pane fade show active" id="orders">
                                    <h2>Lịch sử mua hàng</h2>
                                    <div class="coron_table table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Ngày</th>
                                                <th>Trạng thái</th>
                                                <th>Tổng</th>
                                                <th>Chi tiết</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>10 / 05 / 2018</td>
                                                <td><span class="success">Đã giao & thanh toán</span></td>
                                                <td>14,030,000đ / 1 sản phẩm</td>
                                                <td><a href="cart.html" class="view">xem</a></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>10 / 05 / 2018</td>
                                                <td>Đang vận chuyển</td>
                                                <td>14,030,000đ / 1 sản phẩm</td>
                                                <td><a href="cart.html" class="view">xem</a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="address">
                                    <h2 class="billing-address">Thông tin giao hàng</h2>
                                    <p><strong>Nguyễn Văn Tùng</strong></p>
                                    <address>
                                        Đường: 265A Nguyễn Văn Khạ </br>
                                        Tổ/ấp: Cây Sộp </b>
                                        Xã/thị trấn: Tân An Hội </br>
                                        Quận/huyện: Củ Chi </br>
                                        Tỉnh/thành phố: Tp.HCM
                                    </address>
                                    <p>Việt Nam</p>
                                    <a href="#" class="view">Chỉnh sửa</a>
                                </div>
                                <div class="tab-pane fade" id="account-details">
                                    <h2>Thông tin cá nhân</h2>
                                    <div class="login">
                                        <div class="login_form_container">
                                            <div class="account_login_form">
                                                <form action="#">
                                                    <div class="form-group">
                                                        <label>Họ và tên</label>
                                                        <input type="text" name="first-name">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Email</label>
                                                        <input type="email" name="email-name">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Số Điện thoại</label>
                                                        <input type="text" name="user-password">
                                                    </div>
                                                    <div class="date_birthday form-group third_column"
                                                         style="width: 650px; display: flex;">
                                                        <div class=" one_column" style="margin-right: 20px;">
                                                            <select name="day">
                                                                <option value="0">Ngày Sinh</option>
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                <option value="7">7</option>
                                                                <option value="8">8</option>
                                                                <option value="9">9</option>
                                                                <option value="10">10</option>
                                                                <option value="11">11</option>
                                                                <option value="12">12</option>
                                                                <option value="13">13</option>
                                                                <option value="14">14</option>
                                                                <option value="15">15</option>
                                                                <option value="16">16</option>
                                                                <option value="17">17</option>
                                                                <option value="18">18</option>
                                                                <option value="19">19</option>
                                                                <option value="20">20</option>
                                                                <option value="21">21</option>
                                                                <option value="22">22</option>
                                                                <option value="23">23</option>
                                                                <option value="24">24</option>
                                                                <option value="25">25</option>
                                                                <option value="26">26</option>
                                                                <option value="27">27</option>
                                                                <option value="28">28</option>
                                                                <option value="29">29</option>
                                                                <option value="30">30</option>
                                                                <option value="30">31</option>
                                                            </select>
                                                        </div>
                                                        <div class=" one_column" style="margin-right: 20px;">
                                                            <select name="month">
                                                                <option value="month">Tháng sinh</option>
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5">5</option>
                                                                <option value="6">6</option>
                                                                <option value="7">7</option>
                                                                <option value="8">8</option>
                                                                <option value="9">9</option>
                                                                <option value="10">10</option>
                                                                <option value="11">11</option>
                                                                <option value="12">12</option>
                                                            </select>
                                                        </div>
                                                        <div class=" one_column">
                                                            <select name="year">
                                                                <option value="year">Năm sinh</option>
                                                                <option value="1990">1990</option>
                                                                <option value="1991">1991</option>
                                                                <option value="1992">1992</option>
                                                                <option value="1993">1993</option>
                                                                <option value="1994">1994</option>
                                                                <option value="1995">1995</option>
                                                                <option value="1996">1996</option>
                                                                <option value="1997">1997</option>
                                                                <option value="1998">1998</option>
                                                                <option value="1999">1999</option>
                                                                <option value="2000">2000</option>

                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label>Địa chỉ</label>
                                                        <input type="text" name="dia_chi">
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="button" class="btn btn-primary">Lưu</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Maincontent  -->
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

