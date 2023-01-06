package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.service.NguoiDungService;
import com.project.cuoiky.ltw.validator.RegisterValidator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registerController", value = "/register")
public class RegisterController extends HttpServlet {

    private NguoiDungService nguoiDungService = new NguoiDungService();
    private RegisterValidator registerValidator = new RegisterValidator();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean validator = registerValidator.validate(request);
        // kiem tra thong tin
        if (validator) {
            String taiKhoan = request.getParameter("taiKhoan");
            String matKhau = request.getParameter("matKhau");

            String url = request.getScheme() + "://" +   // "http" + "://
                    request.getServerName() +       // "myhost"
                    ":" +                           // ":"
                    request.getServerPort()     // "8080"
                    + "/login";

            // luu du lieu
            nguoiDungService.register(url, taiKhoan, matKhau);

            // chuyen trang dang chu
            request.getRequestDispatcher("register_success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }

}
