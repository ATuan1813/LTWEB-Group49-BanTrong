<%@ page import="java.util.ArrayList" %>
<%@ page import="com.project.cuoiky.ltw.model.SanPham" %>
<%@ page import="java.util.Map" %>
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
                              <a href="/shopbantrong_war/admin-product-tables"><h2>Quản Lý Sản Phẩm</h2></a>
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
                                    <a href="/shopbantrong_war/admin-product-table-view?pl=1"><h4>Xem Thêm</h4></a>

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
                                         <%ArrayList<SanPham> sanPhams = (ArrayList<SanPham>) request.getAttribute("sptb100");
                                            Map<Integer, String> mapUrl = (Map<Integer, String>) request.getAttribute("mapUrl");
                                            for (SanPham sanPham: sanPhams) {
                                         %>
                                          <tr>
                                             <td><%out.print(sanPham.getIdSP());%></td>
                                             <td><img class="img-list-products" src="<%out.print(mapUrl.get(sanPham.getIdSP()));%>" alt=""></td>
                                             <td><%out.print(sanPham.getTenSP());%></td>
                                             <td><%out.print(sanPham.getTinhTrang());%></td>
                                          </tr>
                                         <%}%>

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
                                    <a href="/shopbantrong_war/admin-product-table-view?pl=2"><h4>Xem Thêm</h4></a>
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
                                       <%ArrayList<SanPham> sanPhamtls = (ArrayList<SanPham>) request.getAttribute("sptb200");
                                          Map<Integer, String> mapUrlTL = (Map<Integer, String>) request.getAttribute("mapUrlTL");
                                          for (SanPham sanPham: sanPhamtls) {
                                       %>
                                       <tr>
                                          <td><%out.print(sanPham.getIdSP());%></td>
                                          <td><img class="img-list-products" src="<%out.print(mapUrlTL.get(sanPham.getIdSP()));%>" alt=""></td>
                                          <td><%out.print(sanPham.getTenSP());%></td>
                                          <td><%out.print(sanPham.getTinhTrang());%></td>
                                       </tr>
                                       <%}%>
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
                                    <a href="/shopbantrong_war/admin-product-table-view?pl=3"><h4>Xem Thêm</h4></a>
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
                                       <%ArrayList<SanPham> sanPhampks = (ArrayList<SanPham>) request.getAttribute("sptb300");
                                          Map<Integer, String> mapUrlPK = (Map<Integer, String>) request.getAttribute("mapUrlPK");
                                          for (SanPham sanPham: sanPhampks) {
                                       %>
                                       <tr>
                                          <td><%out.print(sanPham.getIdSP());%></td>
                                          <td><img class="img-list-products" src="<%out.print(mapUrlPK.get(sanPham.getIdSP()));%>" alt=""></td>
                                          <td><%out.print(sanPham.getTenSP());%></td>
                                          <td><%out.print(sanPham.getTinhTrang());%></td>
                                       </tr>
                                       <%}%>
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