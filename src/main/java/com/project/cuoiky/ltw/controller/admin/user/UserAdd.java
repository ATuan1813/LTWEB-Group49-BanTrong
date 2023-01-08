package com.project.cuoiky.ltw.controller.admin.user;

import com.project.cuoiky.ltw.service.NguoiDungService2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Useradd", value = "/admin-user-add")
public class UserAdd extends HttpServlet {
    NguoiDungService2 nguoiDungService2 = new NguoiDungService2();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/admin/addUser.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("bắt đầu thêm người dùng");
        String notify = nguoiDungService2.checkAndUser(request);

        request.setAttribute("notify",notify);
        request.getRequestDispatcher("/admin/addUser.jsp").forward(request,response);

    }
}
