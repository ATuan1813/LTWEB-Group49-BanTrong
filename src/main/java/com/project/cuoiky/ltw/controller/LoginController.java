package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.validator.LoginValidator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "loginController", value = "/login")
public class LoginController extends HttpServlet {

    private LoginValidator loginValidator = new LoginValidator();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean validator = loginValidator.validate(request);

        // kiem tra thong tin
        if (validator) {
            // chuyen sang trang chu
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}
