<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
   <head>
      <%-- head --%>
      <%@ include file="/common/admin/head.jsp" %>
   </head>
   <body class="inner_page error_404">
      <div class="full_container">
         <div class="container">
            <div class="center verticle_center full_height">
               <div class="error_page">
                  <div class="center">
                     <div class="error_icon">
                        <img class="img-responsive" src="images/layout_img/error.png" alt="#">
                     </div>
                  </div>
                  <br>
                  <h3>PAGE NOT FOUND !</h3>
                  <P>YOU SEEM TO BE TRYING TO FIND HIS WAY HOME</P>
                  <div class="center"><a class="main_bt" href="index.jsp">Go To Home Page</a></div>
               </div>
            </div>
         </div>
      </div>
      <!-- all js here -->
      <%@ include file="/common/admin/bottom.jsp" %>
   </body>
</html>