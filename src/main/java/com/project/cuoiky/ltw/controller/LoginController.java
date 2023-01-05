package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService;
import com.project.cuoiky.ltw.utils.FormatUtils;
import com.project.cuoiky.ltw.utils.MD5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "loginController", value = "/login")
public class LoginController extends HttpServlet {

    NguoiDungService nguoiDungService = new NguoiDungService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String taiKhoan = request.getParameter("taiKhoan");
        String matKhau = request.getParameter("matKhau");

        if (FormatUtils.validEmail(taiKhoan)) {
            request.setAttribute("taiKhoan_err", "Tai khoan sai dinh dang");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {

            NguoiDung nguoiDung = nguoiDungService.findTaiKhoan(taiKhoan);

            if (nguoiDung == null) {
                request.setAttribute("taiKhoan_err", "Tai khoan khong ton tai");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else if (nguoiDung.getMatKhau().equals(MD5.hashMD5(matKhau))) {

                HttpSession session = request.getSession();
                session.setAttribute("nguoiDung", nguoiDung);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }
    }
}
