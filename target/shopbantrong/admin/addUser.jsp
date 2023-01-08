<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
   <head>
      <%-- head --%>
      <%@ include file="/common/admin/head.jsp" %>
          <%-- css just for product --%>
          <link rel="stylesheet" href="admin/css/ProductStyle/styleProduct.css">

       <style>
           .tm-bg-primary-dark{
               height: 600px;
           }
           @media screen and (max-width: 1000px) {
               .tm-bg-primary-dark{
                   height: 1000px;
               }
           }
       </style>
   </head>
   <body class="inner_page tables_page">
      <div class="full_container">
         <div class="inner_container">
            <!-- Sidebar -->
            <%@ include file="/common/admin/sidebar.jsp" %>

            <!-- right content -->
            <div id="content">
               <%-- topbar--%>
               <%@ include file="/common/admin/topbar.jsp" %>

               <!-- dashboard inner -->
               <!-- <div class="tm-block-col tm-col-avatar">
                  <div class="tm-bg-primary-dark tm-block tm-block-avatar">
                    <h2 class="tm-block-title">Change Avatar</h2>
                    <div class="tm-avatar-container">
                      <img src="img/avatar.png" alt="Avatar" class="tm-avatar img-fluid mb-4">
                      <a href="#" class="tm-avatar-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </div>
                    <button class="btn btn-primary btn-block text-uppercase">
                      Upload New Photo
                    </button>
                  </div>
                </div> -->
               <div class="tm-bg-primary-dark tm-block-user tm-block tm-block-settings">
                  <h2 class="tm-block-title">Thêm Tài Khoản Cho Khách Hàng</h2>
                   <p id="notify" style="color: chartreuse"><% String notify = request.getAttribute("notify") != null ? request.getAttribute("notify").toString() :"";
                       out.println(notify);%></p>
                  <form action="/shopbantrong_war/admin-user-add" method="post" class="tm-signup-form row">
                      <div class="form-group col-lg-6">
                          <label >Tài Khoản</label>
                          <input id="username" name="username" value="Sucana123" type="text" class="form-control validate">
                      </div>
                      <div class="form-group col-lg-6">
                          <label for="password">Password</label>
                          <input id="password" name="password" value="123456" type="text"
                                 class="form-control validate">
                      </div>
                      <div class="form-group col-lg-6">
                          <label for="email">Địa Chỉ Email</label>
                          <input id="email" name="email" value="Atuan@gmail.com" type="email"
                                 class="form-control validate">
                      </div>
                      <div class="form-group col-lg-6">
                          <label >Họ Và Tên</label>
                          <input id="fullname" name="fullname" value="Anh Tuan" type="text" class="form-control validate">
                      </div>
                      <div class="form-group col-lg-6">
                          <label for="phone">Số Di Động</label>
                          <input id="phone" name="phone" value="0978271157" type="tel" class="form-control validate">
                      </div>
                      <div class="form-group col-lg-6">
                          <label >Địa Chỉ</label>
                          <input id="diachi" name="diachi" value="123 đường Hùng Vương, Q. Đống Đa, TP. Hà Nội " type="tel"
                                 class="form-control validate">
                      </div>
                      <div class="form-group col-lg-6">
                          <label >Tình Trạng</label>
                          <select name="tinhtrang" class="custom-select tm-select-accounts">
                              <option value="1">Mở Tài Khoản</option>
                              <option value="0">Khóa Tài Khoản</option>
                          </select>
                      </div>
                    <div class="col-12">
                      <button type="submit" class="btn btn-primary btn-block text-uppercase">
                         Thêm Tài Khoản
                      </button>
                    </div>
                  </form>
                </div>
               <!-- end dashboard inner -->
            </div>
         </div>
         <!-- model popup -->
         <!-- The Modal -->
         <div class="modal fade" id="myModal">
            <div class="modal-dialog">
               <div class="modal-content">
                  <!-- Modal Header -->
                  <div class="modal-header">
                     <h4 class="modal-title">Modal Heading</h4>
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <!-- Modal body -->
                  <div class="modal-body">
                     Modal body..
                  </div>
                  <!-- Modal footer -->
                  <div class="modal-footer">
                     <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                  </div>
               </div>
            </div>
         </div>
         <!-- end model popup -->
      </div>
      <!-- all js here -->
      <%@ include file="/common/admin/bottom.jsp" %>
   </body>
</html>