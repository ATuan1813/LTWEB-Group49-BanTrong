package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "forgotPasswordController", value = "/forgot-password")
public class ForgotPasswordController extends HttpServlet {

    private NguoiDungService nguoiDungService = new NguoiDungService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("forgot_password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String taiKhoan =  request.getParameter("taiKhoan");
        String taiKhoan_err = "";

        if (taiKhoan == null || taiKhoan.equalsIgnoreCase("")) {
            taiKhoan_err = "Vui lòng nhập địa chỉ Email!";
            request.setAttribute("taiKhoan_err", taiKhoan_err);
            request.getRequestDispatcher("forgot_password.jsp").forward(request, response);
        } else {
            NguoiDung nguoiDung = nguoiDungService.findEmail(taiKhoan);
            if (nguoiDung == null) {
                taiKhoan_err = "Địa chỉ Email không tồn tại!";
                request.setAttribute("taiKhoan_err", taiKhoan_err);
                request.getRequestDispatcher("forgot_password.jsp").forward(request, response);
            } else {
                String url = request.getScheme() + "://" +   // "http" + "://
                        request.getServerName() +       // "myhost"
                        ":" +                           // ":"
                        request.getServerPort();      // "8080"

                nguoiDungService.forgotPassword(nguoiDung, url);
                request.getRequestDispatcher("forgotpass_success.jsp").forward(request, response);
            }
        }
    }

}
