<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
   <head>
      <%-- all library here--%>
      <%@ include file="/common/admin/head.jsp" %>
   </head>
   <body class="dashboard dashboard_1">
      <div class="full_container">
         <div class="inner_container">
            <!-- Sidebar  -->
            <%@ include file="/common/admin/sidebar.jsp" %>
            <!-- end sidebar -->
            <!-- right content -->
            <div id="content">
               <%-- topbar--%>
               <%@ include file="/common/admin/topbar.jsp" %>

               <!-- dashboard inner -->
               <div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>Bảng Điều Khiển</h2>
                           </div>
                        </div>
                     </div>
                     <div class="row column1">
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user yellow_color"></i>
                                   
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no">251</p>
                                    <p class="head_couter">Khách Hàng</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <!-- <i class="fa fa-product-hunt blue1_color" aria-hidden="true"></i> -->
                                    <!-- <i class="fa fa-clock-o blue1_color"></i> -->
                                    <a class="icon-products" href="#"><img class="icon-product" src="images/myImg/product.png" alt=""></a>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no">235</p>
                                    <p class="head_couter">Tổng Sản Phẩm</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <!-- <i class="fa fa-cloud-download green_color"></i> -->
                                    <a class="icon-products" href="#"><img class="icon-product" src="images/myImg/package.png" alt=""></a>

                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no">59</p>
                                    <p class="head_couter">Sản Phẩm Đã Bán</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-comments-o red_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no">54</p>
                                    <p class="head_couter">Bình Luận</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="row column1 social_media_section">
                        <div class="col-md-6 col-lg-3">
                           <div class="full socile_icons fb margin_bottom_30">
                              <div class="social_icon">
                                 <i class="fa fa-facebook"></i>
                              </div>
                              <div class="social_cont">
                                 <ul>
                                    <li>
                                       <span><strong>35k</strong></span>
                                       <span>Friends</span>
                                    </li>
                                    <li>
                                       <span><strong>128</strong></span>
                                       <span>Feeds</span>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full socile_icons tw margin_bottom_30">
                              <div class="social_icon">
                                 <i class="fa fa-twitter"></i>
                              </div>
                              <div class="social_cont">
                                 <ul>
                                    <li>
                                       <span><strong>584k</strong></span>
                                       <span>Followers</span>
                                    </li>
                                    <li>
                                       <span><strong>978</strong></span>
                                       <span>Tweets</span>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full socile_icons linked margin_bottom_30">
                              <div class="social_icon">
                                 <i class="fa fa-linkedin"></i>
                              </div>
                              <div class="social_cont">
                                 <ul>
                                    <li>
                                       <span><strong>758+</strong></span>
                                       <span>Contacts</span>
                                    </li>
                                    <li>
                                       <span><strong>365</strong></span>
                                       <span>Feeds</span>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full socile_icons google_p margin_bottom_30">
                              <div class="social_icon">
                                 <i class="fa fa-google-plus"></i>
                              </div>
                              <div class="social_cont">
                                 <ul>
                                    <li>
                                       <span><strong>450</strong></span>
                                       <span>Followers</span>
                                    </li>
                                    <li>
                                       <span><strong>57</strong></span>
                                       <span>Circles</span>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- graph -->
                    
                     <!-- end graph -->
                  </div>
                  <!-- footer -->
                  <%@ include file="/common/admin/footer.jsp" %>

               </div>
               <!-- end dashboard inner -->
            </div>
         </div>
      </div>
      <!-- footer -->
      <%@ include file="/common/admin/bottom.jsp" %>
   </body>
</html>