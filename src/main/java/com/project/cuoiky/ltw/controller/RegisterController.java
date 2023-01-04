package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.model.NguoiDung;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/register.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        String errorusername = "";
        if (username == null || username.equalsIgnoreCase("")) {
            errorusername = "firstName Please enter your first name";
        }

        String errorpassword = "";
        if (password == null || password.equalsIgnoreCase("")) {
            errorpassword = "errorpassword Please enter your first name";
        }

        String errorrepassword = "";
        if (repassword == null || repassword.equalsIgnoreCase("")) {
            errorrepassword = "errorrepassword Please enter your first name";
        }

        NguoiDung nguoiDung = new NguoiDung();
        nguoiDung.setTenNguoiDung(username);

        if (errorusername.equalsIgnoreCase("") || errorpassword.equalsIgnoreCase("") || errorrepassword.equalsIgnoreCase("")) {
            request.setAttribute("account", nguoiDung);
            request.setAttribute("errorusername", errorusername);
            request.setAttribute("errorpassword", errorpassword);
            request.setAttribute("errorrepassword", errorrepassword);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            request.setAttribute("account", nguoiDung);
            request.getRequestDispatcher("loginsuccess.jsp").forward(request, response);
        }

    }

}
