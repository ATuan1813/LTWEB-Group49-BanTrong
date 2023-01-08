package com.project.cuoiky.ltw.controller.admin.user;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UserViews", value = "/admin-user-view")
public class UserViews extends HttpServlet {
    NguoiDungService2 nguoiDungService2 = new NguoiDungService2();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<NguoiDung> nguoiDungs = nguoiDungService2.getListUs();

        request.setAttribute("users" , nguoiDungs);

        request.getRequestDispatcher("/admin/listUser.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
