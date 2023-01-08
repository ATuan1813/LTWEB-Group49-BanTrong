package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.database.HinhAnhDao;
import com.project.cuoiky.ltw.model.SanPham;
import com.project.cuoiky.ltw.service.SanPhamService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "singleProductController", value = "/single-product")
public class SingleProductController extends HttpServlet {

    private SanPhamService sanPhamService = new SanPhamService();
    private HinhAnhDao hinhAnhDao = new HinhAnhDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idSp = request.getParameter("idSanPham");
        SanPham sanPham = sanPhamService.getOneSp(Integer.parseInt(idSp));
        request.setAttribute("sanPham", sanPham);
        request.setAttribute("danhSachHinhAnh", hinhAnhDao.getListMS(sanPham));
        request.getRequestDispatcher("/single-product.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
