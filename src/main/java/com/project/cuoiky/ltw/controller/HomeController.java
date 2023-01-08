package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.service.SanPhamService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "homeController", value = "/home")
public class HomeController extends HttpServlet {

    private SanPhamService sanPhamService = new SanPhamService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("danhSachSanPhamMoi", sanPhamService.getAllSanPhamMoi());
        request.setAttribute("danhSachSanPhamBanChay", sanPhamService.getAllSanPhamHot());
        request.setAttribute("danhSachSanPhamKhuyenMai", sanPhamService.getAllSanPhamKhuyenMai());
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
