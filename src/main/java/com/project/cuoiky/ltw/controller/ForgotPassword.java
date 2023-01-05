package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "forgotPassword", value = "/forgot-password")
public class ForgotPassword extends HttpServlet {

    NguoiDungService nguoiDungService = new NguoiDungService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("forgot_password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String taiKhoan =  request.getParameter("taiKhoan");
        String taiKhoan_err = "";

        NguoiDung nguoiDung = nguoiDungService.findTaiKhoan(taiKhoan);

        if (taiKhoan.equals("")){
            taiKhoan_err = "Vui lòng nhập địa chỉ Email";
            request.setAttribute("taiKhoan_err", taiKhoan_err);
        }
        if (nguoiDung == null) {
            taiKhoan_err = "Địa chỉ Email không tồn tại";
            request.setAttribute("taiKhoan_err", taiKhoan_err);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            nguoiDungService.update(nguoiDung);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
