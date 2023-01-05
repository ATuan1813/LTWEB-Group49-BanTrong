package com.project.cuoiky.ltw.controller.admin.product;

import com.project.cuoiky.ltw.database.CategoryDao;
import com.project.cuoiky.ltw.database.MauSacDao;
import com.project.cuoiky.ltw.model.PhanLoaiCap1;
import com.project.cuoiky.ltw.service.SanPhamService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductAdd", value = "/admin-product-add")
public class ProductAdd extends HttpServlet {
    CategoryDao categoryDao = new CategoryDao();
    MauSacDao mauSacDao = new MauSacDao();
    SanPhamService sanPhamService = new SanPhamService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listCa1", categoryDao.getListPLC1());
        request.setAttribute("listCa2", categoryDao.getListPLC2());
        request.setAttribute("listMS", mauSacDao.getListMS());


        request.getRequestDispatcher("/admin/addProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");


        System.out.println("Process add SanPham Start");
        sanPhamService.themSanPham2(request);


//        request.setAttribute("notify","Thêm Sản Phẩm Thành Công");
        request.getRequestDispatcher("/admin/addProduct.jsp").forward(request,response);
    }
}
