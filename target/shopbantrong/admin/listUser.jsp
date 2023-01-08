<%@ page import="java.util.ArrayList" %>
<%@ page import="com.project.cuoiky.ltw.model.NguoiDung" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%-- head --%>
    <%@ include file="/common/admin/head.jsp" %>

    <style>
        .table-td {
            min-width: 100px !important;
        }

        .table-td1 {
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
                                <h2>Quản Lý Khách Hàng</h2>
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
                                        <h2>Bảng Thông Tin Khách Hàng</h2>
                                        <a href="/shopbantrong_war/admin-user-add"><h4>Thêm Tài Khoản</h4></a>
                                    </div>
                                </div>
                                <div class="table_section scrollbar padding_infor_info">
                                    <div class="table-responsive-sm w-table">
                                        <table class="table " style="width: 1500px;">
                                            <thead>
                                            <tr class="table-tr">
                                                <th>id</th>
                                                <th>Tài Khoản</th>
                                                <th>Mật Khẩu</th>
                                                <th>Họ Và Tên</th>
                                                <th>Địa Chỉ</th>
                                                <th>Số Điện Thoại</th>
                                                <th>Email</th>
                                                <th>Đơn Hàng Đã Mua</th>
                                                <th>Tổng Tiền</th>
                                                <th>Tùy Chọn</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%
                                                ArrayList<NguoiDung> nguoiDungs = (ArrayList<NguoiDung>) request.getAttribute("users");
                                                for (NguoiDung nguoiDung : nguoiDungs) {
                                            %>
                                            <tr>
                                                <td class="table-td"><%out.print(nguoiDung.getIdNguoiDung());%></td>
                                                <td class="table-td"><%out.print(nguoiDung.getTaiKhoan());%></td>
                                                <td class="table-td"><%out.print(nguoiDung.getMatKhau());%></td>
                                                <td class="table-td"><%out.print(nguoiDung.getTenNguoiDung());%></td>
                                                <td class="table-td table-td1"><%
                                                    out.print(nguoiDung.getDiaChi());%></td>
                                                <td class="table-td"><%out.print(nguoiDung.getSdt());%></td>
                                                <td class="table-td"><%out.print(nguoiDung.getEmail());%></td>
                                                <td class="table-td">3</td>
                                                <td class="table-td">50.000.000 vnd</td>
                                                <td class="table-td button-td">
                                                    <button class="btn btn-primary"><a
                                                            href="/shopbantrong_war/admin-user-update?idnd=<%out.print(nguoiDung.getIdNguoiDung());%>">Edit</a>
                                                    </button>
                                                    <a class="btn btn-danger"
                                                       style="color: white; width: 100%; height: 100%"
                                                       onclick="return confirm('Bạn muốn xóa người dùng này ? <%out.print( nguoiDung.getIdNguoiDung()+" : "+nguoiDung.getTaiKhoan());%>');"
                                                       href="/shopbantrong_war/admin-user-delete?idnd=<%out.print(nguoiDung.getIdNguoiDung());%>">Delete
                                                    </a>
                                                </td>
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