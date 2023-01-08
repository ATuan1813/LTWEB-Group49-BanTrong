package com.project.cuoiky.ltw.controller.admin.user;

import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.NguoiDungService2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserUpdate", value = "/admin-user-update")
public class UserUpdate extends HttpServlet {
    NguoiDungService2 nguoiDungService2 = new NguoiDungService2();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idnd = Integer.parseInt(request.getParameter("idnd"));
        NguoiDung nguoiDung = nguoiDungService2.findonend(idnd);

        String notify = request.getParameter("notify");

        if( notify != null){
            request.setAttribute("notify", "Cập Nhật Thành Công Người Dùng : " + nguoiDung.getTaiKhoan());
        }
        request.setAttribute("nguoiDung",nguoiDung);

        request.getRequestDispatcher("/admin/editUser.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idnd = Integer.parseInt(request.getParameter("idnd"));
        System.out.println("start process update user " + idnd);

        String notify = nguoiDungService2.updateUser(request);

        response.sendRedirect("/shopbantrong_war/admin-user-update?idnd="+idnd+"&notify="+notify);
    }
}
