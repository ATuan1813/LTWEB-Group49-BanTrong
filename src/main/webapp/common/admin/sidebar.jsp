<%--
  Created by IntelliJ IDEA.
  User: ANHTUAN
  Date: 12/12/2022
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Sidebar  -->
<nav id="sidebar">
    <div class="sidebar_blog_1">
        <div class="sidebar-header">
            <div class="logo_section">
                <a href="admin/index.jsp"><img class="logo_icon img-responsive" src="admin/images/logo/logo_icon.png" alt="#" /></a>
            </div>
        </div>
        <div class="sidebar_user_info">
            <div class="icon_setting"></div>
            <div class="user_profle_side">
                <div class="user_img"><img class="img-responsive" src="admin/images/layout_img/user_img.jpg" alt="#" /></div>
                <div class="user_info">
                    <h6>Anh Tuấn</h6>
                    <p><span class="online_animation"></span> Online</p>
                </div>
            </div>
        </div>
    </div>
    <div class="sidebar_blog_2">
        <h4>Admin</h4>
        <ul class="list-unstyled components">
            <!-- <li>
               <a href="admin/#element" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-diamond orange_color"></i> <span>Đơn Hàng</span></a>
               <ul class="collapse list-unstyled" id="element">
                  <li><a href="admin/invoice.jsp">> <span>Đơn Hàng Hôm Nay</span></a></li>
                  <li><a href="admin/invoice.jsp">> <span>Hóa Đơn Tuần Này</span></a></li>
                  <li><a href="admin/invoice.jsp">> <span>Hóa Đơn Tháng Này</span></a></li>
                  <li><a href="admin/invoice.jsp">> <span>Tất Cả</span></a></li>

               </ul>
            </li> -->
            <li>
                <div class="a-dropdown">
                    <a href="admin/ViewAllinvoices.jsp" id="a-link"><i class="fa fa-diamond orange_color"></i> <span>Đơn Hàng</span></a>
                    <a href="admin/#manage2" data-toggle="collapse" aria-expanded="false" style="padding:15px 10px" class="dropdown-toggle "></a>
                </div>

                <ul class="collapse list-unstyled" id="manage2">
                    <li><a href="admin/invoiceTable.jsp">> <span>Đơn Hàng Hôm Nay</span></a></li>
                    <li><a href="admin/invoiceTable.jsp">> <span>Đơn Hàng Tuần Này</span></a></li>
                    <li><a href="admin/invoiceTable.jsp">> <span>Đơn Hàng Tháng Này</span></a></li>
                    <li><a href="admin/invoiceTable.jsp">> <span>Tất Cả</span></a></li>
                </ul>
            </li>
            <li>
                <div class="a-dropdown">
                    <a href="admin/tables.jsp" id="a-link"><i class="fa fa-object-group purple_color2"></i> <span>Quản Lý Sản Phẩm</span></a>
                    <a href="admin/#manage1" data-toggle="collapse" aria-expanded="false" style="padding:15px 10px" class="dropdown-toggle "></a>
                </div>

                <ul class="collapse list-unstyled" id="manage1">
                    <li><a href="admin/product_manage_trongbo.jsp">> <span>Trống Bộ</span></a></li>
                    <li><a href="admin/tables.jsp">> <span>Trống Lẻ</span></a></li>
                    <li><a href="admin/tables.jsp">> <span>Phụ Kiện</span></a></li>
                </ul>
            </li>
            <li>
                <div class="a-dropdown">
                    <a href="admin/listUser.jsp" id="a-link"><i class="fa fa-user red_color"></i> <span>Quản Lý Khách Hàng</span></a>
                </div>
            </li>
            <li>
                <div class="a-dropdown">
                    <a href="admin/tables.jsp" id="a-link"><i class="fa fa-user yellow_color"></i> <span>Tài Khoản Admin</span></a>
                </div>
            </li>
            <li>
                <a href="admin/charts.jsp">
                    <i class="fa fa-bar-chart-o red_color"></i> <span>Thống Kê</span></a>
            </li>
            <li>
                <a href="admin/contact.jsp">
                    <i class="fa fa-paper-plane red_color"></i> <span>Liên Lạc</span></a>
            </li>
            <!-- <li class="active">
               <a href="admin/#additional_page" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-clone yellow_color"></i> <span>Additional Pages</span></a>
               <ul class="collapse list-unstyled" id="additional_page">
                  <li>
                     <a href="admin/profile.jsp">> <span>Profile</span></a>
                  </li>
                  <li>
                     <a href="admin/project.jsp">> <span>Projects</span></a>
                  </li>
                  <li>
                     <a href="admin/login.jsp">> <span>Login</span></a>
                  </li>
                  <li>
                     <a href="admin/404_error.jsp">> <span>404 Error</span></a>
                  </li>
               </ul>
            </li> -->

        </ul>
    </div>
</nav>
<!-- end sidebar -->
