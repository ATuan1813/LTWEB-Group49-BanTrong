<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
   <head>
      <%-- head --%>
      <%@ include file="/common/admin/head.jsp" %>
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
               <div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <a href="tables.jsp"><h2>Quản Lý Sản Phẩm</h2></a>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                        <!-- table section -->
                        <div class="col-md-6">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 heading-table margin_0">
                                    <h2>Trống Bộ</h2>
                                    <a href="product_manage_trongbo.jsp"><h4>Xem Thêm</h4></a>
                                 </div>
                              </div>
                              <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
                                    <table class="table">
                                       <thead>
                                          <tr>
                                             <th>ID</th>
                                             <th>Hình ảnh</th>
                                             <th>Tên</th>
                                             <th>Tình Trạng</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TB1003</td> 
                                             <td><img class="img-list-products" src="webapp/assets/img/product2/template1/template1.png" alt=""></td>
                                             <td>Pear Iron Man</td>
                                             <td>Hết Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TB1005</td> 
                                             <td><img class="img-list-products" src="http://localhost:8080/shopbantrong_war/assets/img/product2/template1/template2.png" alt=""></td>
                                             <td>Pear Iron Man</td>
                                             <td>Hết Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TB1006</td> 
                                             <td><img class="img-list-products" src="durmshop/assets/img/product2/template1/template3.png" alt=""></td>
                                             <td>Pear Iron Man</td>
                                             <td>Hết Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TB1007</td> 
                                             <td><img class="img-list-products" src="durmshop/assets/img/product2/template1/template4.png" alt=""></td>
                                             <td>Pear Iron Man</td>
                                             <td>Hết Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TB1008</td> 
                                             <td><img class="img-list-products" src="durmshop/assets/img/product2/template1/template5.png" alt=""></td>
                                             <td>Pear Iron Man</td>
                                             <td>Hết Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TB1009</td> 
                                             <td><img class="img-list-products" src="durmshop/assets/img/product2/template1/template6.png" alt=""></td>
                                             <td>Pear Iron Man</td>
                                             <td>Hết Hàng</td>
                                          </tr>
                                         
                                       </tbody>
                                    </table>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- table section -->
                        <div class="col-md-6">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 heading-table margin_0">
                                    <h2>Trống Lẻ</h2>
                                    <a href="product_manage_trongbo.jsp"><h4>Xem Thêm</h4></a>
                                 </div>
                              </div>
                              <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
                                    <table class="table">
                                       <thead>
                                          <tr>
                                             <th>ID</th>
                                             <th>Hình ảnh</th>
                                             <th>Tên</th>
                                             <th>Tình Trạng</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TL3113</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/oddDrums/oddDrum1.jpg" alt=""></td>
                                             <td>Tom Like 03</td>
                                             <td>Còn Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TL3114</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/oddDrums/oddDrum2.jpg" alt=""></td>
                                             <td>Tom Like 03</td>
                                             <td>Còn Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TL3116</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/oddDrums/oddDrum3.jpg" alt=""></td>
                                             <td>Tom Like 03</td>
                                             <td>Còn Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TL3117</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/oddDrums/oddDrum6.jpg" alt=""></td>
                                             <td>Tom Like 03</td>
                                             <td>Còn Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TL3118</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/oddDrums/oddDrum5.jpg" alt=""></td>
                                             <td>Tom Like 03</td>
                                             <td>Còn Hàng</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>TL3115</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/oddDrums/oddDrum6.jpg" alt=""></td>
                                             <td>Tom Like 03</td>
                                             <td>Còn Hàng</td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- table section -->
                        <div class="col-md-6">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 heading-table margin_0">
                                    <h2>Phụ Kiện</h2>
                                    <a href="#"><h4>Xem Thêm</h4></a>
                                 </div>
                              </div>
                              <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
                                    <table class="table">
                                       <thead>
                                          <tr>
                                             <th>ID</th>
                                             <th>Hình ảnh</th>
                                             <th>Tên</th>
                                             <th>Tình Trạng</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>PK6003</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/accessory/accessory1.jpg" alt=""></td>
                                             <td>Ghế Dyland</td>
                                             <td>Hàng Hot</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>PK6004</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/accessory/accessory1.jpg" alt=""></td>
                                             <td>Ghế Dyland</td>
                                             <td>Hàng Hot</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>PK6005</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/accessory/accessory2.jpg" alt=""></td>
                                             <td>Ghế Dyland</td>
                                             <td>Hàng Hot</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>PK6006</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/accessory/accessory3.jpg" alt=""></td>
                                             <td>Bàn Đạp Trống</td>
                                             <td>Hàng Hot</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>PK6007</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/accessory/accessory4.jpg" alt=""></td>
                                             <td>Bàn Đạp Trống</td>
                                             <td>Hàng Hot</td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>PK6008</td> 
                                             <td><img class="img-list-products" src="/durmshop/Admin-page/pluto/images/myImg/accessory/accessory8.jpg" alt=""></td>
                                             <td>Bộ Khung</td>
                                             <td>Hàng Hot</td>
                                          </tr>
                                         
                                         
                                       </tbody>
                                    </table>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- footer -->
                  <%@ include file="/common/admin/footer.jsp" %>
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