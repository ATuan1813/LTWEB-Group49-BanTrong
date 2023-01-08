package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.database.MauSacDao;
import com.project.cuoiky.ltw.database.ProductDao;
import com.project.cuoiky.ltw.model.SanPham;
import com.project.cuoiky.ltw.service.SanPhamService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "shopController", value = "/shop")
public class ShopController extends HttpServlet {

    private SanPhamService sanPhamService = new SanPhamService();
    private ProductDao productDao = new ProductDao();
    private MauSacDao mauSacDao = new MauSacDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idsHang = request.getParameter("idsHang");
        String idsMauSac = request.getParameter("idsMauSac");
        String currentNumber = request.getParameter("currentNumber");

        String firstRecord = "0";
        if (currentNumber == null || currentNumber.equalsIgnoreCase("")) {
            firstRecord = "0";
        } else {
            firstRecord = currentNumber;
        }

        int tongSoLuongSanPham = 0;
        ArrayList<SanPham> dsSanPham = new ArrayList<>();

        dsSanPham = sanPhamService.getAllSanPhamTheoPhanTrang(firstRecord);
        tongSoLuongSanPham = productDao.getCountTheoPhanTrang();

        request.setAttribute("currentNumber", currentNumber);
        request.setAttribute("tongSoLuongSanPham", tongSoLuongSanPham);
        request.setAttribute("dsSanPham", dsSanPham);
        request.setAttribute("dsMauSac", mauSacDao.getListMS());
        request.setAttribute("dsHang", productDao.getAllHang());

        request.getRequestDispatcher("/shop.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
