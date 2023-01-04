<%@ page import="com.project.cuoiky.ltw.model.PhanLoaiCap1" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.project.cuoiky.ltw.model.PhanLoaiCap2" %>
<%@ page import="com.project.cuoiky.ltw.model.MauSac" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <%-- head --%>
    <%@ include file="/common/admin/head.jsp" %>
    <%-- css just for product --%>
    <link rel="stylesheet" href="admin/css/ProductStyle/styleProduct.css">
    <style>
        .btn-ms{
            margin-left: 15px;
            margin-bottom: 10px;
            margin-top: 10px;
            width: 40%;
            height: 30px;
            background-color: #f5a623;
            border: none;
            color: white;
            font-weight: 600;
        }
        .btn-ms:hover{
            background-color: #ebb256;
        }
        .btn-ms-remove, .btn-img-add{
            margin-left: 0;
        }
        .btn-img-add{
            width: 100%;
            margin: 20px 0px;
        }
        #soLuong{
            background-color: #50657b;
        }
    </style>
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
                                        <form action="" class="tm-edit-product-form" enctype="multipart/form-data">
                                            <div class="form-group mb-3">
                                                <label>Tên Sản Phẩm
                                                </label>
                                                <input id="TenSP" name="TenSP" type="text" class="form-control validate"
                                                       required />
                                            </div>
                                            <div class="form-group mb-3">
                                                <label >Mô Tả</label>
                                                <textarea name="MoTaSP" class="form-control validate" rows="4" required></textarea>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label >Thông Số Kỹ Thuật</label>
                                                <textarea name="ThongSoKyThuat" class="form-control validate" rows="4" required></textarea>
                                            </div>
                                            <div class="row">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label>Bộ Sản Phẩm</label>
                                                    <select class="custom-select tm-select-accounts" id="category">

                                                        <%ArrayList<PhanLoaiCap1> phanLoaiCap1s =  (ArrayList<PhanLoaiCap1>)request.getAttribute("listCa1");

                                                            for (PhanLoaiCap1 plc1 : phanLoaiCap1s) {%>

                                                        <option value="<%out.print(plc1.getIdPLC1());%>"><%out.print(plc1.getTenPLC1());%></option>

                                                        <%}%>
                                                    </select>
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label >Loại Sản Phẩm</label>
                                                    <select class="custom-select tm-select-accounts" id="category100">
                                                        <%ArrayList<PhanLoaiCap2> phanLoaiCap2s =  (ArrayList<PhanLoaiCap2>)request.getAttribute("listCa2");

                                                            for (PhanLoaiCap2 plc2 : phanLoaiCap2s) {
                                                            if(plc2.getIdPLC1()==100){
                                                        %>

                                                        <option value="<%out.print(plc2.getIdPLC2());%>"><%out.print(plc2.getTenPLC2());%></option>

                                                        <%}}%>

                                                    </select>
                                                    <select style="display: none;"
                                                            class="custom-select tm-select-accounts" id="category200">
                                                        <%ArrayList<PhanLoaiCap2> phanLoaiCap2s2 =  (ArrayList<PhanLoaiCap2>)request.getAttribute("listCa2");

                                                            for (PhanLoaiCap2 plc2 : phanLoaiCap2s2) {
                                                                if(plc2.getIdPLC1()==200){
                                                        %>

                                                        <option value="<%out.print(plc2.getIdPLC2());%>"><%out.print(plc2.getTenPLC2());%></option>

                                                        <%}}%>
                                                    </select>
                                                    <select style="display: none;"
                                                            class="custom-select tm-select-accounts" id="category300">
                                                        <%ArrayList<PhanLoaiCap2> phanLoaiCap2s3 =  (ArrayList<PhanLoaiCap2>)request.getAttribute("listCa2");

                                                            for (PhanLoaiCap2 plc2 : phanLoaiCap2s3) {
                                                                if(plc2.getIdPLC1()==300){
                                                        %>

                                                        <option value="<%out.print(plc2.getIdPLC2());%>"><%out.print(plc2.getTenPLC2());%></option>

                                                        <%}}%>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row productColor">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label>Màu Sắc</label>
                                                    <select class="custom-select tm-select-accounts" name="categoryMS1" id="categoryMS1">
                                                        <%ArrayList<MauSac> mauSacs = (ArrayList<MauSac>) request.getAttribute("listMS");
                                                            for (MauSac mauSac: mauSacs) {%>

                                                        <option style="background-color: <%mauSac.getMaMau();%>" value="<%out.print(mauSac.getIdMauSac());%>"><%out.print(mauSac.getTenMauSac());%></option>
                                                        <%}%>
                                                    </select>
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6" id="color">
                                                    <label >Số Lượng MS</label>
                                                    <input oninput="sumSoLuong()" id="soLuongMS1" name="soLuongMS1"
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
                                                    <label>Hãng</label>
                                                    <select class="custom-select tm-select-accounts"
                                                            id="categoryBranch" name="categoryBranch">
                                                        <option value="pearl">Pearl</option>
                                                        <option value="mapex">Mapex</option>
                                                        <option value="roland">Roland</option>
                                                        <option value="yamaha">Yamaha</option>
                                                        <option value="dw">Drum Workshop</option>
                                                        <option value="pdp">PDP</option>
                                                        <option value="odery">Odery</option>
                                                    </select>
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label >Tình Trạng</label>
                                                    <select class="custom-select tm-select-accounts"
                                                            id="categoryStatus" name="categoryStatus">
                                                        <option value="conhang">Còn Hàng</option>
                                                        <option value="hethang">Hết Hàng</option>
                                                        <option value="sanphammoi">Sản Phẩm Mới </option>
                                                        <option value="hanghot">Hàng Hot</option>
                                                        <option value="anmonhang">Ẩn Món Hàng </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label>Số Lượng Sản Phẩm
                                                    </label>
                                                    <input id="soLuong" name="soLuong" readonly="readonly"
                                                           class="form-control" min="0" max="10000" value="0" type="number" required />
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label>Sale
                                                    </label>
                                                    <input name="sale" type="text"
                                                           class="form-control validate" required />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label>Giá Vốn
                                                    </label>
                                                    <input id="inputGiaVon" name="inputGiaVon"
                                                           pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" value=""
                                                           data-type="currency" placeholder="1.000.000 vnd"
                                                           class="form-control validate" data-large-mode="true" />
                                                    <input id="giavon" name="giavon" style="display: block">
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label>Giá Bán
                                                    </label>
                                                    <input id="inputGiaBan" name="inputGiaBan"
                                                           pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" value=""
                                                           data-type="currency" placeholder="1.000.000 vnd"
                                                           class="form-control validate" data-large-mode="true" />
                                                    <input id="giaban" name="giaban" style="display: block">
                                                </div>
                                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                                    <label>Vật Liệu
                                                    </label>
                                                    <input id="vatlieu" name="vatlieu" type="text"
                                                           class="form-control validate" required />
                                                </div>
                                            </div>

                                    </div>
                                    <!-- img upload -->
                                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                        <div class="upload-img" id="imgColor1000">
                                            <div class="tm-product-img-dummy mx-auto" id="img-pre">
                                                <!-- <i class="fas fa-cloud-upload-alt tm-upload-icon"
                                                            onclick="document.getElementById('inputFile').click();"></i> -->
                                                <img id="nameImg" src="" alt="" class="img-pre__img">
                                                <span class="img-pre-text">Khung Hình Chính</span>
                                            </div>
                                            <div class="custom-file mt-3 mb-3">
                                                <input id="imgFile1000" name="imgFile1000" type="file" style="display:none;" />
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
    var idColorImg = 1;
    var arrayIdColor = [1];
    var arrayIdColorImg = [1];
    var soLuong = 0;
    var idImg = 1000;


    $('#category').change(function () {
        var lengthOption = $('#category > option').length;
        for (let index = 100; index <= 300; index += 100) {
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

                               <%for (MauSac mauSac: mauSacs) {%>
                                <option style="background-color: <%mauSac.getMaMau();%>" value="<%out.print(mauSac.getIdMauSac());%>"><%out.print(mauSac.getTenMauSac());%></option>
                                <%}%>

                        </select>
                    </div>
                    <div class="form-group mb-3 col-xs-12 col-sm-6" id="color">
                        <label for="categoryLable1">Số Lượng MS</label>
                        <input id="soLuongMS${idColorP}" oninput = "sumSoLuong()" name="soLuongMS${idColorP}"
                        class="form-control" min="0" max="10000" value="0" type="number" required />

                        <input type="button" onclick="removeColorAndImg(this,'${idColorP}')" class="btn-ms btn-ms-remove" value="Xóa">
                        <input type="button" onclick="addImgColor(${idColorP})" class="btn-ms btn-ms-remove" id="ms-img${idColorP}" value="Hình Ảnh">

                    </div>
                </div>`
        )
    }

    function addImgColor(idCategoryColor) {
        var textCategoryColor = $(`#categoryMS${idCategoryColor} option:selected`).text();
        // idColorImg++;
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
                        <input id="imgFile${idCategoryColor}" name="imgFile${idCategoryColor}" type="file" style="display:none;" />
                        <input type="button" class="btn btn-primary btn-block mx-auto"
                            value="Tải Hình Ảnh"
                            onclick="document.getElementById('inputFile').click();" />
                            <input type="button" onclick="removeImg(this,${idCategoryColor})" class="btn-ms btn-ms-remove" value="Xóa">
                    </div>
                </div>`
        )
    }

    function addImgs() {
        idImg++;
        console.log(idImg)
        const last = Array.from(document.querySelectorAll('.upload-img')).pop();

        last.insertAdjacentHTML(
            'afterend',
            ` <div  class="upload-img" id="imgColor${idImg}">
                    <div class="tm-product-img-dummy mx-auto" id="img-pre">
                        <!-- <i class="fas fa-cloud-upload-alt tm-upload-icon"
                                    onclick="document.getElementById('inputFile').click();"></i> -->
                        <img id="nameImg"  src="" alt="" class="img-pre__img">
                        <span class="img-pre-text">Khung Hình Phụ ${idImg-1000}</span>
                    </div>
                    <div class="custom-file mt-3 mb-3">
                        <input id="imgFile${idImg}" name="imgFile${idImg}" type="file" style="display:none;" />
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

        arrayIdColor.forEach(function (item, index) {
            if (id == item) {

                console.log("cũ : " + id + " và " + arrayIdColorImg + " và " + arrayIdColor)
                $('#imgColor' + id).remove();
                // xóa phần tử đi
                // còn lỗi
                const index = arrayIdColorImg.indexOf(id);
                if(index > -1){
                    arrayIdColorImg.splice(index, 1)
                }
                const index2 = arrayIdColor.indexOf(id);
                if(index2 > -1){
                    arrayIdColor.splice(index2, 1);
                }


                console.log("mới : " +id + " và " + arrayIdColorImg + " và " + arrayIdColor)
                // soLuong = soLuong - parseInt($(`#soLuongMS${id}`).val());

                // $(`#soLuong`).val(soLuong);
                // console.log(id)
                a.parentNode.parentNode.remove();
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
            GiaBan(this);
            GiaVon(this);
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
    function GiaBan(input){
        var str = document.getElementById("inputGiaBan").value;
        var num = str.match(/\d/g);
        num = num.join("");
        $("#giaban").val(num)
        console.log("giá bán " + parseInt(num)+2)
    }
    function GiaVon(input){
        var str = document.getElementById("inputGiaVon").value;
        var num = str.match(/\d/g);
        num = num.join("");
        $("#giavon").val(num)
        console.log("giá vốn " + parseInt(num)+2)
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