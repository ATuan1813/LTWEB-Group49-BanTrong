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
                              <a href="/shopbantrong_war/admin-invoice-tables"><h2>Quản Lý Đơn Hàng</h2></a>
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
                                    <h2>Hôm Nay</h2>
                                    <a href="/shopbantrong_war/admin-invoice-table"><h4>Xem Thêm</h4></a>
                                 </div>
                              </div>
                              <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
                                    <table class="table">
                                       <thead>
                                          <tr>
                                             <th>MaDH</th>
                                             <th>Ngày Tháng</th>
                                             <th>Tên Tài Khoản</th>
                                             <th>Thành Tiền</th>
                                             <th>Chi Tiết</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 heading-table margin_0">
                                    <h2>Trong Tuần</h2>
                                    <a href="/shopbantrong_war/admin-invoice-table"><h4>Xem Thêm</h4></a>
                                 </div>
                              </div>
                              <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
                                    <table class="table">
                                       <thead>
                                          <tr>
                                             <th>MaDH</th>
                                             <th>Ngày Tháng</th>
                                             <th>Tên Tài Khoản</th>
                                             <th>Thành Tiền</th>
                                             <th>Chi Tiết</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 heading-table margin_0">
                                    <h2>Trong Tháng</h2>
                                    <a href="/shopbantrong_war/admin-invoice-table"><h4>Xem Thêm</h4></a>
                                 </div>
                              </div>
                              <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
                                    <table class="table">
                                       <thead>
                                          <tr>
                                             <th>MaDH</th>
                                             <th>Ngày Tháng</th>
                                             <th>Tên Tài Khoản</th>
                                             <th>Thành Tiền</th>
                                             <th>Chi Tiết</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
                                          </tr>
                                          <tr>
                                             <!-- TBộ - loại trống - hãng - sp -->
                                             <td>DH1003</td> 
                                             <td>10-12-2022</td> 
                                             <td>linh213</td>
                                             <td>20.000.000 vnd</td>
                                             <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-invoice-detail">Link</a></button></td>
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