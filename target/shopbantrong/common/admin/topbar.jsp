<%--
  Created by IntelliJ IDEA.
  User: ANHTUAN
  Date: 12/12/2022
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- topbar -->
<div class="topbar">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="full">
            <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
            <div class="logo_section">
                <a href="/shopbantrong_war/admin"><img class="img-responsive" src="admin/images/logo/logo.png" alt="#" /></a>
            </div>
            <div class="right_topbar">
                <div class="icon_info">
                    <ul>
                        <li><a href="admin/admin/#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>
                        <li><a href="admin/#"><i class="fa fa-question-circle"></i></a></li>
                        <li><a href="admin/#"><i class="fa fa-envelope-o"></i><span class="badge">3</span></a></li>
                    </ul>
                    <ul class="user_profile_dd">
                        <li>
                            <a class="dropdown-toggle" data-toggle="dropdown"><img class="img-responsive rounded-circle" src="admin/images/layout_img/user_img.jpg" alt="#" /><span class="name_user">Anh Tuấn</span></a>
                            <div class="dropdown-menu">
                                <!-- <a class="dropdown-item" href="admin/profile.jsp">Profile Của Tôi</a> -->
                                <a class="dropdown-item" href="admin/#">Cài Đặt</a>
                                <a class="dropdown-item" href="admin/#">Trợ Giúp</a>
                                <a class="dropdown-item" href="admin/login.jsp"><span>Đăng Xuất</span> <i class="fa fa-sign-out"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div>
<!-- end topbar -->
