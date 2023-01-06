<%@ page import="java.util.ArrayList" %>
<%@ page import="com.project.cuoiky.ltw.model.SanPham" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
   <head>
      <%-- head --%>
      <%@ include file="/common/admin/head.jsp" %>
      <style>
         .table-td{
            min-width: 100px !important;
         }
         .table-td1{
            min-width: 200px !important;
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
                                             <th>Số Lượng Trong Kho</th>
                                             <th>Số Lượng Đã Bán</th>
                                             <th>Vật Liệu</th>
                                             <th>Giá Bán</th>
                                             <th>Giá Vốn</th>
                                             <th>Tình Trạng</th>
                                             <th>Tùy Chọn</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <%ArrayList<SanPham> sanPhams = (ArrayList<SanPham>) request.getAttribute("sptb");
                                             Map<Integer, String> mapHaAndSps = (Map<Integer, String>) request.getAttribute("mapHaAndSps");
                                             Map<Integer, Integer> mapCaAndSps = (Map<Integer, Integer>) request.getAttribute("mapCaAndSps");

                                             for (SanPham sanPham: sanPhams) {
                                          %>
                                             <tr>
                                                <td class="table-td"><%out.print(sanPham.getIdSP());%></td>
                                                <td class="table-td"><img class="img-list-products-large" src="<%out.print(mapHaAndSps.get(sanPham.getIdSP()));%>" alt=""></td>
                                                <td class="table-td"><%out.print(sanPham.getTenSP());%></td>
                                                <td class="table-td table-td1"><%out.print(sanPham.getMotaSP());%></td>
                                                <td class="table-td"><%out.print(sanPham.getHang());%></td>
                                                <td class="table-td"><%out.print(mapCaAndSps.get(sanPham.getIdSP()));%></td>
                                                <td class="table-td"><%out.print(sanPham.getThongSoKyThuat());%></td>
                                                <td class="table-td"><%out.print(sanPham.getSoLuongTrongKho());%></td>
                                                <td class="table-td"><%out.print(sanPham.getSoLuongDaBan());%></td>
                                                <td class="table-td"><%out.print(sanPham.getVatLieu());%></td>
                                                <td class="table-td"><%out.print(sanPham.getGiaBan());%></td>
                                                <td class="table-td"><%out.print(sanPham.getGiaVon());%></td>
                                                <td class="table-td"><%out.print(sanPham.getTinhTrang());%></td>
                                                <td class="table-td button-td"><button class="btn btn-primary"><a href="/shopbantrong_war/admin-product-update?=<%out.print(sanPham.getIdSP());%>">Edit</a></button><button class="btn btn-danger">Remove</button></td>

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