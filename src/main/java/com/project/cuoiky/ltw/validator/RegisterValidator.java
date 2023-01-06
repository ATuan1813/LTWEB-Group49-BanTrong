package com.project.cuoiky.ltw.validator;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService;
import com.project.cuoiky.ltw.utils.FormatUtils;

import javax.servlet.http.HttpServletRequest;

public class RegisterValidator {

    NguoiDungService nguoiDungService = new NguoiDungService();

    public boolean validate(HttpServletRequest request) {
        String taiKhoan_err = "";
        String matKhau_err = "";
        String xacNhanMatKhau_err = "";

        String taiKhoan = request.getParameter("taiKhoan");
        String matKhau = request.getParameter("matKhau");
        String xacNhanMatKhau = request.getParameter("xacNhanMatKhau");

        // kiểm tra tên đăng nhập
        if (taiKhoan == null || taiKhoan.equalsIgnoreCase("")) {
            taiKhoan_err = "Vui lòng nhập địa chỉ Email!";
        } else {
            if (!FormatUtils.validEmail(taiKhoan)) {
                taiKhoan_err = "Địa chỉ Email sai định dạng!";
            } else {
                NguoiDung nguoiDung = nguoiDungService.findTaiKhoan(taiKhoan);
                if (nguoiDung != null) {
                    taiKhoan_err = "Địa chỉ Email đã tồn tại!";
                }
            }
        }

        // kiểm tra mật khẩu
        if (matKhau == null || matKhau.equalsIgnoreCase("")) {
            matKhau_err = "Vui lòng nhập mật khẩu!";
        } else {
            if (matKhau.length() < 6) {
                matKhau_err = "Nhập mật khẩu lớn hơn 6 ký tự!";
            } else {
                if (!matKhau.equals(xacNhanMatKhau)) {
                    xacNhanMatKhau_err = "Xác nhận mật khẩu không khớp!";
                }
            }
        }

        if (xacNhanMatKhau == null || xacNhanMatKhau.equalsIgnoreCase("")) {
            xacNhanMatKhau_err = "Vui lòng nhập xác nhận mật khẩu!";
        }

        request.setAttribute("taiKhoan", taiKhoan);
        request.setAttribute("taiKhoan_err", taiKhoan_err);
        request.setAttribute("matKhau_err", matKhau_err);
        request.setAttribute("xacNhanMatKhau_err", xacNhanMatKhau_err);

        if (taiKhoan_err.equalsIgnoreCase("") && matKhau_err.equalsIgnoreCase("")
                && xacNhanMatKhau_err.equalsIgnoreCase("")) {
            return true;
        }

        return false;
    }

}
