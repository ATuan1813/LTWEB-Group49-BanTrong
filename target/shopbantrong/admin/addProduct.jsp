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
                                                       required />
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="description">Mô Tả</label>
                                                <textarea class="form-control validate" rows="4" required></textarea>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="description">Thông Số Kỹ Thuật</label>
                                                <textarea class="form-control validate" rows="4" required></textarea>
                                            </div>
                                            <div class="row">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="categoryLable1">Bộ Sản Phẩm</label>
                                                    <select class="custom-select tm-select-accounts" id="category">
                                                        <option selected value="0">Trống Bộ</option>
                                                        <option value="2">Trống Lẻ</option>
                                                        <option value="3">Phụ Kiện</option>
                                                    </select>
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="categoryLable2">Loại Sản Phẩm</label>
                                                    <select class="custom-select tm-select-accounts" id="category1">
                                                        <option selected value="0">Trống Bộ Starter</option>
                                                        <option value="2">Trống Bộ Shell Pack</option>
                                                        <option value="3">Trống Bộ Travel</option>
                                                        <option value="4">Bộ Trống Điện</option>
                                                    </select>
                                                    <select style="display: none;"
                                                            class="custom-select tm-select-accounts" id="category2">
                                                        <option selected value="0">Tom</option>
                                                        <option value="2">Bass Drumm</option>
                                                        <option value="3">Snare Drum</option>
                                                    </select>
                                                    <select style="display: none;"
                                                            class="custom-select tm-select-accounts" id="category3">
                                                        <option selected value="0">Ghế</option>
                                                        <option value="2">Gậy Gõ Trống</option>
                                                        <option value="3">Bàn Đạp Trống</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row productColor">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="categoryLable1">Màu Sắc</label>
                                                    <select class="custom-select tm-select-accounts" id="categoryMS1">
                                                        <option selected>Chọn Màu Sắc</option>
                                                        <option value="0">Đỏ</option>
                                                        <option value="2">Trắng</option>
                                                        <option value="3">Đen</option>
                                                        <option value="3">Xanh Dương</option>
                                                        <option value="3">Vàng</option>
                                                        <option value="3">Cam</option>
                                                    </select>
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6" id="color">
                                                    <label for="categoryLable1">Số Lượng MS</label>
                                                    <input oninput="sumSoLuong()" id="soLuongMS1" name="stock"
                                                           class="form-control" min="0" max="10000" value="0" type="number"
                                                           required />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <input type="button" class="btn-ms btn-ms-add" onclick="addColor()"
                                                       value="Thêm Màu Sắc">
                                            </div>
                                            <div class="row">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="categoryLable1">Hãng</label>
                                                    <select class="custom-select tm-select-accounts"
                                                            id="categoryBranch">
                                                        <option selected>Chọn Hãng</option>
                                                        <option value="0">Pearl</option>
                                                        <option value="2">Mapex</option>
                                                        <option value="3">Roland</option>
                                                        <option value="3">Yamaha</option>
                                                        <option value="3">Drum Workshop</option>
                                                    </select>
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="categoryLable1">Tình Trạng</label>
                                                    <select class="custom-select tm-select-accounts"
                                                            id="categoryStatus">
                                                        <option selected>Chọn Tình Trạng</option>
                                                        <option value="0">Còn Hàng</option>
                                                        <option value="2">Hết Hàng</option>
                                                        <option value="3">Sản Phẩm Mới </option>
                                                        <option value="3">Hàng Hot</option>
                                                        <option value="3">Ẩn Món Hàng </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="expire_date">Số Lượng
                                                    </label>
                                                    <input id="soLuong" name="stock" readonly="readonly"
                                                           class="form-control" min="0" max="10000" value="0" type="number" required />
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="stock">Sale
                                                    </label>
                                                    <input id="stock" name="stock" type="text"
                                                           class="form-control validate" required />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="expire_date">Giá
                                                    </label>
                                                    <input id="currency-field" name="currency-field"
                                                           pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" value=""
                                                           data-type="currency" placeholder="1.000.000 vnd"
                                                           class="form-control validate" data-large-mode="true" />
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label for="stock">Vật Liệu
                                                    </label>
                                                    <input id="stock" name="stock" type="text"
                                                           class="form-control validate" required />
                                                </div>
                                            </div>

                                    </div>
                                    <!-- img upload -->
                                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                        <div class="upload-img">
                                            <div class="tm-product-img-dummy mx-auto" id="img-pre">
                                                <!-- <i class="fas fa-cloud-upload-alt tm-upload-icon"
                                                            onclick="document.getElementById('inputFile').click();"></i> -->
                                                <img id="nameImg" src="" alt="" class="img-pre__img">
                                                <span class="img-pre-text">Khung Hình</span>
                                            </div>
                                            <div class="custom-file mt-3 mb-3">
                                                <input id="inputFile" type="file" style="display:none;" />
                                                <input type="button" class="btn btn-primary btn-block mx-auto"
                                                       value="Tải Hình Ảnh"
                                                       onclick="document.getElementById('inputFile').click();" />
                                            </div>
                                        </div>
                                        <input type="button" class="btn-ms btn-img-add" onclick="addImgs()"
                                               value="Thêm Hình Ảnh Cho Sản Phẩm">

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.2/jquery.min.js"
        integrity="sha512-tWHlutFnuG0C6nQRlpvrEhE4QpkG1nn2MOUMWmUeRePl4e3Aki0VB6W1v3oLjFtd0hVOtRQ9PHpSfN6u6/QXkQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- all js here -->
<%--<%@ include file="/common/admin/bottom.jsp" %>--%>

<%-- xử lý js cho sản phẩm  --%>
<script>
    // các biến hữu dụng
    var a = "hỏi";
    var idColorP = 1;
    var arrayIdColor = [1];
    var arrayIdColorImg = [1];
    var soLuong = 0;


    $('#category').change(function () {
        var lengthOption = $('#category > option').length;
        for (let index = 1; index <= lengthOption; index++) {
            if ($('#category').val() == index) {
                $('#category' + index).css('display', 'block')
                console.log(index)
            } else {
                $('#category' + index).css('display', 'none')
            }
        }

    })

    // Thêm sửa xóa color và img của color
    function addColor(a) {
        idColorP++;
        arrayIdColor.push(idColorP);
        console.log(arrayIdColorImg + "  " +arrayIdColor)

        const last = Array.from(document.querySelectorAll('.productColor')).pop();
        last.insertAdjacentHTML(
            'afterend',
            `<div class="row productColor">
                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                        <label for="categoryLable1">Màu Sắc</label>
                        <select class="custom-select tm-select-accounts" id="categoryMS${idColorP}">
                            <option value="0">Đỏ</option>
                            <option value="2">Trắng</option>
                            <option value="3">Đen</option>
                            <option value="3">Xanh Dương</option>
                            <option value="3">Vàng</option>
                            <option value="3">Cam</option>

                        </select>
                    </div>
                    <div class="form-group mb-3 col-xs-12 col-sm-6" id="color">
                        <label for="categoryLable1">Số Lượng MS</label>
                        <input id="soLuongMS${idColorP}" oninput = "sumSoLuong()" name="stock"
                        class="form-control" min="0" max="10000" value="0" type="number" required />

                        <input type="button" onclick="removeColorAndImg(this,'${idColorP}')" class="btn-ms btn-ms-remove" value="Xóa">
                        <input type="button" onclick="addImgColor(${idColorP})" class="btn-ms btn-ms-remove" id="ms-img${idColorP}" value="Hình Ảnh">

                    </div>
                </div>`
        )
    }

    function addImgColor(idCategoryColor) {
        var textCategoryColor = $(`#categoryMS${idCategoryColor} option:selected`).text();
        console.log(textCategoryColor);
        arrayIdColorImg.push(idCategoryColor);
        console.log(arrayIdColorImg + "  " + arrayIdColor)

        $('#ms-img' + idCategoryColor).css('display', 'none');

        const last = Array.from(document.querySelectorAll('.upload-img')).pop();
        last.insertAdjacentHTML(
            'afterend',
            ` <div  class="upload-img" id="imgColor${idCategoryColor}">
                    <div class="tm-product-img-dummy mx-auto" id="img-pre">
                        <!-- <i class="fas fa-cloud-upload-alt tm-upload-icon"
                                    onclick="document.getElementById('inputFile').click();"></i> -->
                        <img id="nameImg" src="" alt="" class="img-pre__img">
                        <span class="img-pre-text">Hình Ảnh CHo Màu ${textCategoryColor}</span>
                    </div>
                    <div class="custom-file mt-3 mb-3">
                        <input id="inputFile" type="file" style="display:none;" />
                        <input type="button" class="btn btn-primary btn-block mx-auto"
                            value="Tải Hình Ảnh"
                            onclick="document.getElementById('inputFile').click();" />
                            <input type="button" onclick="removeImg(this,${idCategoryColor})" class="btn-ms btn-ms-remove" value="Xóa">
                    </div>
                </div>`
        )
    }

    function addImgs() {
        document.querySelector('.upload-img').insertAdjacentHTML(
            'afterend',
            ` <div  class="upload-img">
                    <div class="tm-product-img-dummy mx-auto" id="img-pre">
                        <!-- <i class="fas fa-cloud-upload-alt tm-upload-icon"
                                    onclick="document.getElementById('inputFile').click();"></i> -->
                        <img id="nameImg" src="" alt="" class="img-pre__img">
                        <span class="img-pre-text">Khung Hình</span>
                    </div>
                    <div class="custom-file mt-3 mb-3">
                        <input id="inputFile" type="file" style="display:none;" />
                        <input type="button" class="btn btn-primary btn-block mx-auto"
                            value="Tải Hình Ảnh"
                            onclick="document.getElementById('inputFile').click();" />
                            <input type="button" onclick="removeImg(this)" class="btn-ms btn-ms-remove" value="Xóa">
                    </div>
                </div>`
        )
    }

    function removeImg(a, id) {
        a.parentNode.parentNode.remove();
        $('#ms-img' + id).css('display', 'inline-block');
    }

    function removeColorAndImg(a, id) {
        a.parentNode.parentNode.remove();
        console.log("hiae")
        arrayIdColor.forEach(function (item, index) {
            if (id == item) {
                console.log("hiae2")
                $('#imgColor' + id).remove();
                // xóa phần tử đi
                // còn lỗi
                const index = arrayIdColorImg.indexOf(id);
                arrayIdColorImg.splice(index, 1)

                const index2 = arrayIdColor.indexOf(id);
                arrayIdColor.splice(index2, 1);

                // soLuong = soLuong - parseInt($(`#soLuongMS${id}`).val());

                // $(`#soLuong`).val(soLuong);
                // console.log(id)
                sumSoLuong();

                // console.log(arrayIdColorImg)
                // console.log(arrayIdColor)
            }
        })

    }
    //
    //
    //
    // current format field
    $("input[data-type='currency']").on({
        keyup: function () {
            formatCurrency($(this));
        },
        blur: function () {
            formatCurrency($(this), "blur");
        }
    });


    function formatNumber(n) {
        // format number 1000000 to 1,234,567
        return n.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ".")
    }


    function formatCurrency(input, blur) {
        // appends $ to value, validates decimal side
        // and puts cursor back in right position.

        // get input value
        var input_val = input.val();

        // don't validate empty input
        if (input_val === "") {
            return;
        }

        // original length
        var original_len = input_val.length;

        // initial caret position
        var caret_pos = input.prop("selectionStart");
        // no decimal entered
        // add commas to number
        // remove all non-digits
        input_val = formatNumber(input_val);

        // send updated string to input
        input.val(input_val);
        // put caret back in the right position
        var updated_len = input_val.length;
        caret_pos = updated_len - original_len + caret_pos;
        input[0].setSelectionRange(caret_pos, caret_pos);
    }

    // chỉnh lại số lượng sản phẩm theo số lượng màu sắc


    function sumSoLuong() {
        var sum = 0;

        for (let value of arrayIdColor) {
            if($(`#soLuongMS${value}`).val() == null){
                $(`#soLuongMS${value}`).val(0)
            }else{
                sum = parseInt($(`#soLuongMS${value}`).val()) + sum;
                //console.log(a)
            }

        }
        soLuong = sum;
        $(`#soLuong`).val(soLuong);

    }
</script>

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