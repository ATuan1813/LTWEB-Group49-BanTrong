package com.project.cuoiky.ltw.controller.admin.product;

import com.project.cuoiky.ltw.database.CategoryDao;
import com.project.cuoiky.ltw.database.MauSacDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductAdd", urlPatterns = {"/admin-product-add"})
public class ProductAdd extends HttpServlet {
    CategoryDao categoryDao = new CategoryDao();
    MauSacDao mauSacDao = new MauSacDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listCa1", categoryDao.getListPLC1());
        request.setAttribute("listCa2", categoryDao.getListPLC2());
        request.setAttribute("listMS", mauSacDao.getListMS());


        request.getRequestDispatcher("/admin/addProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
