<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
   <head>
      <%-- head --%>
      <%@ include file="/common/admin/head.jsp" %>
          <%-- css just for product --%>
          <link rel="stylesheet" href="css/ProductStyle/styleProduct.css">
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
                  <form action="" class="tm-signup-form row">
                    <div class="form-group col-lg-6">
                      <label for="name">Tên Tài Khoản</label>
                      <input id="name" name="name" type="text" class="form-control validate">
                    </div>
                    <div class="form-group col-lg-6">
                      <label for="email">Email</label>
                      <input id="email" name="email" type="email" class="form-control validate">
                    </div>
                    <div class="form-group col-lg-6">
                      <label for="password">Password</label>
                      <input id="password" name="password" type="password" class="form-control validate">
                    </div>
                    <div class="form-group col-lg-6">
                      <label for="password2">Nhập Lại Password</label>
                      <input id="password2" name="password2" type="password" class="form-control validate">
                    </div>
                    <div class="form-group col-lg-6">
                      <label for="phone">Số Di Động</label>
                      <input id="phone" name="phone" type="tel" class="form-control validate">
                    </div>
                    <div class="form-group col-lg-6">
                     <label for="phone">Địa Chỉ</label>
                     <input id="phone" name="phone" type="tel" class="form-control validate">
                   </div>
                    <!-- <div class="form-group col-lg-6">
                      <label class="tm-hide-sm">&nbsp;</label>
                      <button type="submit" class="btn btn-primary btn-block text-uppercase">
                        Update Your Profile
                      </button>
                    </div> -->
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