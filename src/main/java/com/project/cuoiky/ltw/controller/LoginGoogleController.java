package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.dto.GooglePojo;
import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.service.GoogleService;
import com.project.cuoiky.ltw.service.NguoiDungService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "loginGoogleController", value = "/login-google")
public class LoginGoogleController extends HttpServlet {
    private NguoiDungService nguoiDungService = new NguoiDungService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = GoogleService.getToken(code);
            GooglePojo googlePojo = GoogleService.getUserInfo(accessToken);

            NguoiDung nguoiDung = nguoiDungService.findTaiKhoan(googlePojo.getEmail());
            if (nguoiDung == null) {
                nguoiDung = new NguoiDung();
                nguoiDung.setTaiKhoan(googlePojo.getEmail());
                nguoiDung.setMatKhau(null);
                nguoiDung.setEmail(googlePojo.getEmail());
                nguoiDung.setQuyen(1);
                nguoiDung.setTinhtrang(1);
                nguoiDung.setTenNguoiDung(googlePojo.getName());
                nguoiDung.setNguonGoc("GOOGLE");
                nguoiDung.setAvartar(googlePojo.getPicture());

                nguoiDungService.registerWithSocial(nguoiDung);

                HttpSession session = request.getSession();
                session.setAttribute("nguoiDung", nguoiDung);
                session.setAttribute("userLogin", googlePojo.getEmail());
            }

            RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
            dis.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
