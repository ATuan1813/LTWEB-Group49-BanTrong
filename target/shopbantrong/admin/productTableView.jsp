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
                        <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 heading-table margin_0">
                                    <h2>Trống Bộ</h2>
                                    <a href="/shopbantrong_war/admin-product-add"><h4>Thêm Sản Phẩm</h4></a>
                                 </div>
                              </div>
                              <div class="table_section scrollbar padding_infor_info">
                                 <div class="table-responsive-sm w-table">
                                    <table class="table " style="width: 1500px;">
                                       <thead>
                                          <tr class="table-tr">
                                             <th>id</th>
                                             <th>Hình Ảnh</th>
                                             <th>Tên</th>
                                             <th>Mô tả</th>
                                             <th>Hãng</th>
                                             <th>Loại Trống</th>
                                             <th>Thông Số Kỹ Thuật</th>
                                             <th>Số Lượng</th>
                                             <th>Vật Liệu</th>
                                             <th>Màu Sắc</th>
                                             <th>Giá Bán</th>
                                             <th>Tình Trạng</th>
                                             <th>Tùy Chọn</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr >
                                             <td class="table-td">TB1003</td>
                                             <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template1.png" alt=""></td>
                                             <td class="table-td">Pearl President Series Phenolic 3-piece Limited Edition Shell Pack </td>
                                             <td class="table-td">Là nguyên bản có thật từ lịch sử 75 năm của Pearl, President Series đã đi tiên phong trong những lợi ích độc đáo của lớp vỏ Phenolic có áp suất kín</td>
                                             <td class="table-td">Pearl</td>
                                             <td class="table-td">Sell pack</td>
                                             <td class="table-td">22″x14″ Bass Drum
                                                ,13″x9″ Tom
                                                ,16″x16″ Floor Tom
                                                </td>
                                             <td class="table-td">35</td>
                                             <td class="table-td">Nhôm</td>
                                             <td class="table-td">Trắng</td>
                                             <td class="table-td">15.000.000 vnd</td>
                                             <td class="table-td">Còn hàng</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="editProduct.jsp">Edit</a></button><button class="btn btn-danger">Remove</button></td>
                                          </tr>
                                          <tr >
                                             <td class="table-td">TB1003</td>
                                             <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template2.png" alt=""></td>
                                             <td class="table-td">Pearl President Series Phenolic 3-piece Limited Edition Shell Pack </td>
                                             <td class="table-td">Là nguyên bản có thật từ lịch sử 75 năm của Pearl, President Series đã đi tiên phong trong những lợi ích độc đáo của lớp vỏ Phenolic có áp suất kín</td>
                                             <td class="table-td">Pearl</td>
                                             <td class="table-td">Sell pack</td>
                                             <td class="table-td">22″x14″ Bass Drum
                                                ,13″x9″ Tom
                                                ,16″x16″ Floor Tom
                                                </td>
                                             <td class="table-td">35</td>
                                             <td class="table-td">Nhôm</td>
                                             <td class="table-td">Trắng</td>
                                             <td class="table-td">15.000.000 vnd</td>
                                             <td class="table-td">Còn hàng</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="editProduct.jsp">Edit</a></button><button class="btn btn-danger">Remove</button></td>
                                          </tr>
                                          <tr >
                                             <td class="table-td">TB1003</td>
                                             <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template3.png" alt=""></td>
                                             <td class="table-td">Pearl President Series Phenolic 3-piece Limited Edition Shell Pack </td>
                                             <td class="table-td">Là nguyên bản có thật từ lịch sử 75 năm của Pearl, President Series đã đi tiên phong trong những lợi ích độc đáo của lớp vỏ Phenolic có áp suất kín</td>
                                             <td class="table-td">Pearl</td>
                                             <td class="table-td">Sell pack</td>
                                             <td class="table-td">22″x14″ Bass Drum
                                                ,13″x9″ Tom
                                                ,16″x16″ Floor Tom
                                                </td>
                                             <td class="table-td">35</td>
                                             <td class="table-td">Nhôm</td>
                                             <td class="table-td">Trắng</td>
                                             <td class="table-td">15.000.000 vnd</td>
                                             <td class="table-td">Còn hàng</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="editProduct.jsp">Edit</a></button><button class="btn btn-danger">Remove</button></td>
                                          </tr>
                                          <tr >
                                             <td class="table-td">TB1003</td>
                                             <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template4.png" alt=""></td>
                                             <td class="table-td">Pearl President Series Phenolic 3-piece Limited Edition Shell Pack </td>
                                             <td class="table-td">Là nguyên bản có thật từ lịch sử 75 năm của Pearl, President Series đã đi tiên phong trong những lợi ích độc đáo của lớp vỏ Phenolic có áp suất kín</td>
                                             <td class="table-td">Pearl</td>
                                             <td class="table-td">Sell pack</td>
                                             <td class="table-td">22″x14″ Bass Drum
                                                ,13″x9″ Tom
                                                ,16″x16″ Floor Tom
                                                </td>
                                             <td class="table-td">35</td>
                                             <td class="table-td">Nhôm</td>
                                             <td class="table-td">Trắng</td>
                                             <td class="table-td">15.000.000 vnd</td>
                                             <td class="table-td">Còn hàng</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="editProduct.jsp">Edit</a></button><button class="btn btn-danger">Remove</button></td>
                                          </tr>
                                          <tr >
                                             <td class="table-td">TB1003</td>
                                             <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template5.png" alt=""></td>
                                             <td class="table-td">Pearl President Series Phenolic 3-piece Limited Edition Shell Pack </td>
                                             <td class="table-td">Là nguyên bản có thật từ lịch sử 75 năm của Pearl, President Series đã đi tiên phong trong những lợi ích độc đáo của lớp vỏ Phenolic có áp suất kín</td>
                                             <td class="table-td">Pearl</td>
                                             <td class="table-td">Sell pack</td>
                                             <td class="table-td">22″x14″ Bass Drum
                                                ,13″x9″ Tom
                                                ,16″x16″ Floor Tom
                                                </td>
                                             <td class="table-td">35</td>
                                             <td class="table-td">Nhôm</td>
                                             <td class="table-td">Trắng</td>
                                             <td class="table-td">15.000.000 vnd</td>
                                             <td class="table-td">Còn hàng</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="editProduct.jsp">Edit</a></button><button class="btn btn-danger">Remove</button></td>
                                          </tr>
                                          <tr >
                                             <td class="table-td">TB1003</td>
                                             <td class="table-td"><img class="img-list-products-large" src="/durmshop/assets/img/product2/template1/template6.png" alt=""></td>
                                             <td class="table-td">Pearl President Series Phenolic 3-piece Limited Edition Shell Pack </td>
                                             <td class="table-td">Là nguyên bản có thật từ lịch sử 75 năm của Pearl, President Series đã đi tiên phong trong những lợi ích độc đáo của lớp vỏ Phenolic có áp suất kín</td>
                                             <td class="table-td">Pearl</td>
                                             <td class="table-td">Sell pack</td>
                                             <td class="table-td">22″x14″ Bass Drum
                                                ,13″x9″ Tom
                                                ,16″x16″ Floor Tom
                                                </td>
                                             <td class="table-td">35</td>
                                             <td class="table-td">Nhôm</td>
                                             <td class="table-td">Trắng</td>
                                             <td class="table-td">15.000.000 vnd</td>
                                             <td class="table-td">Còn hàng</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="editProduct.jsp">Edit</a></button><button class="btn btn-danger">Remove</button></td>
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