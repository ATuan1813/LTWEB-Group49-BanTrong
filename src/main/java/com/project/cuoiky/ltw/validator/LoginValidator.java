package com.project.cuoiky.ltw.validator;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService;
import com.project.cuoiky.ltw.utils.Md5Util;

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
            if (nguoiDung == null || nguoiDung.getNguonGoc() == null || !nguoiDung.getNguonGoc().equalsIgnoreCase("MYAPP")) {
                taiKhoan_err = "Tên đăng nhập hoặc mật khẩu không đúng!";
            } else {
                if (!nguoiDung.getMatKhau().equals(Md5Util.hashMD5(matKhau))) {
                    taiKhoan_err = "Tên đăng nhập hoặc mật khẩu không đúng!";
                }
            }
        }
        request.setAttribute("taiKhoan", taiKhoan);
        request.setAttribute("taiKhoan_err", taiKhoan_err);
        request.setAttribute("matKhau_err", matKhau_err);

        if (taiKhoan_err.equalsIgnoreCase("") && matKhau_err.equalsIgnoreCase("")) {
            HttpSession session = request.getSession();
            session.setAttribute("nguoiDung", nguoiDung);
            session.setAttribute("userLogin", taiKhoan);
            return true;
        }

        return false;
    }
}
