<%--
  Created by IntelliJ IDEA.
  User: ANHTUAN
  Date: 12/11/2022
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <%-- all library here--%>
    <%@ include file="/common/web/head.jsp" %>
</head>
<body>
<!-- Add your site or application content here -->

<!--pos page start-->
<div class="pos_page">
    <div class="container">
        <!--pos page inner-->
        <div class="pos_page_inner">
            <!-- header -->
            <%@ include file="/common/web/header.jsp" %>
            <!-- header -->
            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="index.html">Trang chủ</a></li>
                                <li><i class="fa fa-angle-right"></i></li>
                                <li>Giỏ hàng</li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!--shopping cart area start -->
            <div class="shopping_cart_area">
                <form action="#">
                    <div class="row">
                        <div class="col-12">
                            <div class="table_desc">
                                <div class="cart_page table-responsive">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th class="product_remove">Xóa</th>
                                            <th class="product_thumb">Hình ảnh</th>
                                            <th class="product_name">Sản phẩm</th>
                                            <th class="product-price">Đơn Giá</th>
                                            <th class="product_quantity">Số lượng</th>
                                            <th class="product_total">Thành tiền</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                            <td class="product_thumb"><a href="#"><img src="durmshop/assets/img/product2/template1/template1.png" alt=""></a></td>
                                            <td class="product_name"><a href="#">CommandMeshKit_SE</a></td>
                                            <td class="product-price">6.600.000 vnd</td>
                                            <td class="product_quantity"><input min="0" max="100" value="1" type="number"></td>
                                            <td class="product_total">7.600.000 vnd</td>


                                        </tr>

                                        <tr>
                                            <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                            <td class="product_thumb"><a href="#"><img src="durmshop/assets/img/product2/template1/template2.png" alt=""></a></td>
                                            <td class="product_name"><a href="#">pearl-reference-rf924xedp</a></td>
                                            <td class="product-price">9.000.000 vnd</td>
                                            <td class="product_quantity"><input min="0" max="100" value="1" type="number"></td>
                                            <td class="product_total">10.000.000 vnd</td>


                                        </tr>
                                        <tr>
                                            <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                            <td class="product_thumb"><a href="#"><img src="durmshop/assets/img/product2/template1/template3.png" alt=""></a></td>
                                            <td class="product_name"><a href="#">inrock-fl-401-fs-hw-1</a></td>
                                            <td class="product-price">11.000.000 vnd</td>
                                            <td class="product_quantity"><input min="0" max="100" value="1" type="number"></td>
                                            <td class="product_total">36.600.000 vnd</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="cart_submit">
                                    <button type="submit">Cập nhật giỏ hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--coupon code area start-->
                    <div class="coupon_area">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="coupon_code">
                                    <h3>Giảm giá</h3>
                                    <div class="coupon_inner">
                                        <p>Nhập mã giảm giá dưới đây</p>
                                        <input placeholder="Mã giảm giá" type="text">
                                        <button type="submit">Sử dụng mã</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="coupon_code">
                                    <h3>Tổng sản phẩm</h3>
                                    <div class="coupon_inner">
                                        <div class="cart_subtotal">
                                            <p>Tổng tiền hàng</p>
                                            <p class="cart_amount">21.500.000 vnd</p>
                                        </div>
                                        <div class="cart_subtotal ">
                                            <p>Vận chuyển</p>
                                            <p class="cart_amount">255.000 vnd</p>
                                        </div>
                                        <!-- <a href="#">Calculate shipping</a> -->

                                        <div class="cart_subtotal">
                                            <p>Tổng cộng</p>
                                            <p class="cart_amount">21.755.000 vnd</p>
                                        </div>
                                        <div class="checkout_btn">
                                            <a href="#">Thanh toán</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--coupon code area end-->
                </form>
            </div>
            <!--shopping cart area end -->

        </div>
        <!--pos page inner end-->
    </div>
</div>
<!--pos page end-->

<!-- footer -->
<%@ include file="/common/web/footer.jsp" %>
<!-- footer -->

<!-- all js here -->
<%@ include file="/common/web/bottom.jsp" %>

</body>
</html>

