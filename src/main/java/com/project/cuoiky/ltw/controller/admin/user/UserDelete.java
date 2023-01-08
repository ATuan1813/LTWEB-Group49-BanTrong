package com.project.cuoiky.ltw.controller.admin.user;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UserDelete", value = "/admin-user-delete")
public class UserDelete extends HttpServlet {
    NguoiDungService2 nguoiDungService2 = new NguoiDungService2();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<NguoiDung> nguoiDungs = nguoiDungService2.getListUs();

        request.setAttribute("users" , nguoiDungs);
        int idnd = Integer.parseInt(request.getParameter("idnd"));
        System.out.println("delete id user : " + idnd);
        nguoiDungService2.deleteUser(idnd);

        //request.getRequestDispatcher("/admin/listUser.jsp").forward(request,response);
        response.sendRedirect("/shopbantrong_war/admin-user-view");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
