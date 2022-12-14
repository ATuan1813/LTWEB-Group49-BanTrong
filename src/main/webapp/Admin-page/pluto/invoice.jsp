<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
   <head>
      <%-- head --%>
      <%@ include file="/common/admin/head.jsp" %>
   </head>
   <body class="inner_page invoice_page">
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
                              <h2>Hóa Đơn</h2>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                        <!-- invoice section -->
                        <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 heading-table margin_0">
                                    <h2><i class="fa fa-file-text-o"></i> Bảng Thông Tin Hóa Đơn</h2>
                                    <h5>Đã giao đơn hàng</h5>

                                 </div>
                                 <!-- <div class="heading1 gr-form">
                                    <div class="group-form">
                                       <span>Mã Hóa Đơn</span>
                                       <input type="text" placeholder="MHDXXX" name="search">
                                       <button type="submit">Tìm Kiếm</button>
                                    </div>
                                    <div class="group-form">
                                       <span>Mã Khách Hàng</span>
                                       <input type="text" placeholder="MKHXXX" name="search">
                                       <button type="submit">Tìm Kiếm</button>
                                    </div>
                                 </div> -->
                              </div>
                              <div class="full">
                                 <div class="invoice_inner">
                                    <div class="row">
                                       <div class="col-md-4">
                                          <div class="full invoice_blog padding_infor_info padding-bottom_0">
                                             <h4>Khách Hàng</h4>
                                             <p><strong>KH02856</strong><br>  
                                                <strong>Anh Tuấn</strong><br>  
                                                496 Đường Lê Văn Thọ, Q. Gò Vấp, TP. Hồ Chí Minh<br>    
                                                <strong>Phone : </strong><a href="tel:09876543210">0978 543 219</a><br>  
                                                <strong>Email : </strong><a href="mailto:yourmail@gmail.com">atuan89@gmail.com</a>
                                             </p>
                                          </div>
                                       </div>
                                       <!-- <div class="col-md-4">
                                          <div class="full invoice_blog padding_infor_info padding-bottom_0">
                                             <h4>To</h4>
                                             <p><strong>David Roman</strong><br>  
                                                427 Schoen Circles Suite 124<br> 
                                                Melbourne Australia<br>    
                                                <strong>Phone : </strong><a href="tel:9876543210">9876 543 210</a><br>  
                                                <strong>Email : </strong><a href="mailto:yourmail@gmail.com">Yourmail@gmail.com</a>
                                             </p>
                                          </div>
                                       </div>
                                       <div class="col-md-4">
                                          <div class="full invoice_blog padding_infor_info padding-bottom_0">
                                             <h4>Invoice No - #111457 </h4>
                                             <p><strong>Order ID : </strong>5b6R9C<br> 
                                                <strong>Payment Due : </strong>July/18/2018<br> 
                                                <strong>Account : </strong>254-55847
                                             </p>
                                          </div>
                                       </div> -->
                                    </div>
                                 </div>
                              </div>
                              <div class="full padding_infor_info">
                                 <div class="table_row">
                                    <div class="table-responsive">
                                       <table class="table table-striped">
                                          <thead>
                                             <tr>
                                                <th>ID</th>
                                                <th>Hình ẢNH</th>
                                                <th>Tên Sản Phẩm</th>
                                                <th>Số Lượng</th>
                                                <th>Giá Tiền</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <tr>
                                                <td>BT1512</td>
                                                <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template2.png" alt=""></td>
                                                <td>Pearl President Series Phenolic 3-piece Limited Edition Shell Pack</td>
                                                <td>1</td>
                                                <td>12.000.000 vnđ</td>
                                             </tr>
                                             <tr>
                                                <td>BT1512</td>
                                                <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template2.png" alt=""></td>
                                                <td>Pearl President Series Phenolic 3-piece Limited Edition Shell Pack</td>
                                                <td>1</td>
                                                <td>12.000.000 vnđ</td>
                                             </tr>
                                             <tr>
                                                <td>BT1512</td>
                                                <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template2.png" alt=""></td>
                                                <td>Pearl President Series Phenolic 3-piece Limited Edition Shell Pack</td>
                                                <td>1</td>
                                                <td>12.000.000 vnđ</td>
                                             </tr>
                                             <tr>
                                                <td>BT1512</td>
                                                <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template2.png" alt=""></td>
                                                <td>Pearl President Series Phenolic 3-piece Limited Edition Shell Pack</td>
                                                <td>1</td>
                                                <td>12.000.000 vnđ</td>
                                             </tr>
                                          </tbody>
                                       </table>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- row -->
                     <div class="row">
                        <!-- <div class="col-md-6">
                           <div class="full white_shd">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2>Payment Methods</h2>
                                 </div>
                              </div>
                              <div class="full padding_infor_info">
                                 <ul class="payment_option">
                                    <li><img src="images/layout_img/visa.png" alt="#" /></li>
                                    <li><img src="images/layout_img/mastercard.png" alt="#" /></li>
                                    <li><img src="images/layout_img/paypal.png" alt="#" /></li>
                                 </ul>
                              </div>
                           </div>
                        </div> -->
                        <div class="col-md-6">
                           <div class="full white_shd">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2>Tổng Hóa Đơn</h2>
                                 </div>
                              </div>
                              <div class="full padding_infor_info">
                                 <div class="price_table">
                                    <div class="table-responsive">
                                       <table class="table">
                                          <tbody>
                                             <tr>
                                                <th style="width:50%">Tổng</th>
                                                <td>61.000.000 vnđ</td>
                                             </tr>
                                             <tr>
                                                <th>Phí Ship</th>
                                                <td>5673000 vnđ</td>
                                             </tr>
                                             <tr>
                                                <th>Sau Khi Cộng Ship</th>
                                                <td>66673000 vnđ</td>
                                             </tr>
                                          </tbody>
                                       </table>
                                    </div>
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