<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
   <head>
      <%-- head --%>
      <%@ include file="/common/admin/head.jsp" %>
   </head>
   <body class="inner_page login">
      <div class="full_container">
         <div class="container">
            <div class="center verticle_center full_height">
               <div class="login_section">
                  <div class="logo_login">
                     <div class="center">

                     </div>
                  </div>
                  <div class="login_form">
                     <form>
                        <fieldset>
                           <div class="field">
                              <label class="label_field">Tài Khoản</label>
                              <input type="text" name="email" placeholder="username hoặc email" />
                           </div>
                           <div class="field">
                              <label class="label_field">Mật Khẩu</label>
                              <input type="password" name="password" placeholder="Password" />
                           </div>
                           <div class="field">
                              <label class="label_field hidden">hidden label</label>
                              <label class="form-check-label"><input type="checkbox" class="form-check-input"> Nhớ Mật Khẩu</label>

                           </div>
                           <div class="field margin_0">
                              <label class="label_field hidden">hidden label</label>
                              <button class="main_bt">Đăng Nhập</button>
                              <p style="color: red; text-align: center; margin-right: 50px; margin-top: 20px">Sai tài khoản hoặc mật khẩu</p>
                           </div>
                        </fieldset>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- all js here -->
      <%@ include file="/common/admin/bottom.jsp" %>
   </body>
</html>