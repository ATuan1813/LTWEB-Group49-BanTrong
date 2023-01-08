package com.project.cuoiky.ltw.controller.admin.product;

import com.project.cuoiky.ltw.database.CategoryDao;
import com.project.cuoiky.ltw.database.HinhAnhDao;
import com.project.cuoiky.ltw.database.MauSacDao;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.MauSacLKSanPham;
import com.project.cuoiky.ltw.model.SanPham;
import com.project.cuoiky.ltw.service.SanPhamService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductUpdate", value = "/admin-product-update")
public class ProductUpdate extends HttpServlet {
    CategoryDao categoryDao = new CategoryDao();
    MauSacDao mauSacDao = new MauSacDao();
    SanPhamService sanPhamService = new SanPhamService();
    HinhAnhDao hinhAnhDao = new HinhAnhDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listCa1", categoryDao.getListPLC1());
        request.setAttribute("listCa2", categoryDao.getListPLC2());
        request.setAttribute("listMS", mauSacDao.getListMS());

       // update
        int idsp = Integer.parseInt(request.getParameter("idsp"));

        if(request.getParameter("notify") != null){
            request.setAttribute("notify","Update Sản Phẩm Thành Công");
        }

        SanPham sanPham = sanPhamService.getOneSp(idsp);
        MauSacLKSanPham mauSacLKSanPham = mauSacDao.findOneClo(idsp);
        HinhAnh hinhAnh = hinhAnhDao.findOneHA(idsp);

        request.setAttribute("sp", sanPham);
        request.setAttribute("ms", mauSacLKSanPham);
        request.setAttribute("ha", hinhAnh);

        request.getRequestDispatcher("/admin/editProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("listCa1", categoryDao.getListPLC1());
        request.setAttribute("listCa2", categoryDao.getListPLC2());
        request.setAttribute("listMS", mauSacDao.getListMS());

        // update
        System.out.println("Process update SanPham Start");
        int idsp = sanPhamService.updateSanPham(request);
        boolean notify = true;

        request.setAttribute("idsp", idsp);
        System.out.println("cập nhật thành công");

        response.sendRedirect("/shopbantrong_war//admin-product-update?idsp="+idsp+"&notify="+notify);
//        request.getRequestDispatcher("/admin/editProduct.jsp").forward(request,response);
    }
}
