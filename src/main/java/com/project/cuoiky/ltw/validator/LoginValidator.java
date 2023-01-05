package com.project.cuoiky.ltw.validator;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService;
import com.project.cuoiky.ltw.utils.MD5;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginValidator {

    NguoiDungService nguoiDungService = new NguoiDungService();

    public boolean validate(HttpServletRequest request) {
        String taiKhoan_err = "";
        String matKhau_err = "";

        String taiKhoan = request.getParameter("taiKhoan");
        String matKhau = request.getParameter("matKhau");

        NguoiDung nguoiDung = nguoiDungService.findTaiKhoan(taiKhoan);
        // kiểm tra tên đăng nhập
        if (taiKhoan == null || taiKhoan.equalsIgnoreCase("")) {
            taiKhoan_err = "Vui lòng nhập địa chỉ Email!";
        }

        // kiểm tra mật khẩu
        if (matKhau == null || matKhau.equalsIgnoreCase("")) {
            matKhau_err = "Vui lòng nhập mật khẩu!";
        } else {
            if (nguoiDung == null) {
                taiKhoan_err = "Địa chỉ Email không tồn tại!";
            } else {
                if (!nguoiDung.getMatKhau().equals(MD5.hashMD5(matKhau))) {
                    matKhau_err = "Sai mật khẩu!";
                }
            }
        }
        request.setAttribute("taiKhoan", taiKhoan);

        if (taiKhoan_err.equalsIgnoreCase("") && matKhau_err.equalsIgnoreCase("")) {
            HttpSession session = request.getSession();
            session.setAttribute("nguoiDung", nguoiDung);
            return true;
        }

        return false;
    }
}
