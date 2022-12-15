<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <%-- head --%>
    <%@ include file="/common/admin/head.jsp" %>
    <%-- css just for product --%>
    <link rel="stylesheet" href="admin/css/ProductStyle/styleProduct.css">
</head>

<body class="inner_page tables_page">
<div class="full_container">
    <div class="inner_container">
        <!-- Sidebar  -->
        <%@ include file="/common/admin/sidebar.jsp" %>
        <!-- right content -->
        <div id="content">
            <%-- topbar--%>
            <%@ include file="/common/admin/topbar.jsp" %>
            <!-- dashboard inner -->
            <div class="container tm-mt-big tm-mb-big">
                <div class="row">
                    <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12 mx-auto">
                        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                            <div class="row">
                                <div class="col-12">
                                    <h2 class="tm-block-title d-inline-block">Thêm Sản Phẩm</h2>
                                </div>
                            </div>
                            <div class="row tm-edit-product-row">
                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <form action="" class="tm-edit-product-form">
                                        <div class="form-group mb-3">
                                            <label for="name">Tên Sản Phẩm
                                            </label>
                                            <input id="name" name="name" type="text" class="form-control validate"
                                                   required/>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="description">Mô Tả</label>
                                            <textarea class="form-control validate" rows="4" required></textarea>
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="specifications">Thông Số Kỹ Thuật</label>
                                            <textarea class="form-control validate" rows="4" required></textarea>
                                        </div>
                                        <!-- <div class="form-group mb-3">
                                            <label for="category">Loại Sản Phẩm</label>
                                            <select class="custom-select tm-select-accounts" id="category">
                                                <option selected>Chọn Loại Trống</option>
                                                <option value="1">Shell pack</option>
                                                <option value="2">Bộ Trống Travel</option>
                                                <option value="3">Bộ Trống Starter</option>
                                            </select>
                                        </div>
                                        <div class="form-group mb-3">

                                        </div> -->
                                        <div class="row">
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label for="category">Loại Sản Phẩm</label>
                                                <select class="custom-select tm-select-accounts" id="category">
                                                    <option selected>Chọn Loại Trống</option>
                                                    <option value="1">Shell pack</option>
                                                    <option value="2">Bộ Trống Travel</option>
                                                    <option value="3">Bộ Trống Starter</option>
                                                </select>
                                            </div>
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label for="category">Màu Sắc</label>
                                                <select class="custom-select tm-select-accounts" id="category">
                                                    <option selected>Chọn Màu Sắc</option>
                                                    <option value="1">Đỏ</option>
                                                    <option value="2">Trắng</option>
                                                    <option value="3">Đen</option>
                                                    <option value="3">Xanh Dương</option>
                                                    <option value="3">Vàng</option>
                                                    <option value="3">Cam</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label for="category">Hãng</label>
                                                <select class="custom-select tm-select-accounts" id="category">
                                                    <option selected>Chọn Hãng</option>
                                                    <option value="1">Pearl</option>
                                                    <option value="2">Mapex</option>
                                                    <option value="3">Roland</option>
                                                    <option value="3">Yamaha</option>
                                                    <option value="3">Drum Workshop</option>
                                                </select>
                                            </div>
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label for="category">Tình Trạng</label>
                                                <select class="custom-select tm-select-accounts" id="category">
                                                    <option selected>Chọn Tình Trạng</option>
                                                    <option value="1">Còn Hàng</option>
                                                    <option value="2">Hết Hàng</option>
                                                    <option value="3">Sản Phẩm Mới</option>
                                                    <option value="3">Hàng Hot</option>
                                                    <option value="3">Ẩn Món Hàng</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label for="expire_date">Số Lượng
                                                </label>
                                                <input id="expire_date" name="expire_date" type="text"
                                                       class="form-control validate" data-large-mode="true"/>
                                            </div>
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label for="stock">Sale
                                                </label>
                                                <input id="stock" name="stock" type="text"
                                                       class="form-control validate" required/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label for="expire_date">Giá
                                                </label>
                                                <input id="expire_date" name="expire_date" type="text"
                                                       class="form-control validate" data-large-mode="true"/>
                                            </div>
                                            <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                <label for="stock">Vật Liệu
                                                </label>
                                                <input id="stock" name="stock" type="text"
                                                       class="form-control validate" required/>
                                            </div>
                                        </div>

                                </div>
                                <!-- img upload -->
                                <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                    <div class="tm-product-img-dummy mx-auto" id="img-pre">
                                        <!-- <i class="fas fa-cloud-upload-alt tm-upload-icon"
                                            onclick="document.getElementById('inputFile').click();"></i> -->
                                        <img id="nameImg" src="" alt="" class="img-pre__img">
                                        <span class="img-pre-text">Khung Hình</span>
                                    </div>
                                    <div class="custom-file mt-3 mb-3">
                                        <input id="inputFile" type="file" style="display:none;"/>
                                        <input type="button" class="btn btn-primary btn-block mx-auto"
                                               value="Tải Hình Ảnh"
                                               onclick="document.getElementById('inputFile').click();"/>
                                    </div>

                                </div>
                                <!-- button submit -->
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary btn-block text-uppercase">
                                        Thêm Sản Phẩm
                                    </button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
<!-- jQuery -->

<!-- all js here -->
<%@ include file="/common/admin/bottom.jsp" %>

<!-- style addProduct -->
<script>
    var nameImg1 = "";
    const inputFile = document.getElementById("inputFile");
    const previewContainer = document.getElementById("img-pre");
    const previewImage = document.querySelector(".img-pre__img");
    const previewText = document.querySelector(".img-pre-text");

    inputFile.addEventListener("change", function () {
        const file = this.files[0];
        nameImg1 = file.name;
        console.log(nameImg1);
        console.log(file);
        if (file) {
            const reader = new FileReader();
            previewText.style.display = "none";
            previewImage.style.display = "block";

            reader.addEventListener("load", function () {
                console.log(this);
                previewImage.setAttribute("src", this.result);
            });

            reader.readAsDataURL(file);
        }
    })
</script>
</body>

</html>