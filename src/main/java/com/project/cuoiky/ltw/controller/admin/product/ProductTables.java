package com.project.cuoiky.ltw.controller.admin.product;

import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.SanPham;
import com.project.cuoiky.ltw.service.SanPhamService;
import com.project.cuoiky.ltw.service.UploadFileService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "ProductTables", urlPatterns = {"/admin-product-tables"})
public class ProductTables extends HttpServlet {
    SanPhamService sanPhamService = new SanPhamService();
    UploadFileService uploadFileService = new UploadFileService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<SanPham> sptb100 = sanPhamService.getAllSpPLC1(100);
        ArrayList<SanPham> sptb200 = sanPhamService.getAllSpPLC1(200);
        ArrayList<SanPham> sptb300 = sanPhamService.getAllSpPLC1(300);

        ArrayList<HinhAnh> haMains = uploadFileService.hinhAnhMains();
        Map<Integer, String> mapHaAndSps = new HashMap<Integer,String>();
        System.out.println(haMains.size());
        System.out.println(sptb100.size());

        String path = "http://localhost:8080/shopbantrong_war";
        for (int i = 0; i < sptb100.size(); i++) {
            for (int j = 0; j < haMains.size(); j++) {
                if(sptb100.get(i).getIdSP() == haMains.get(j).getIdSP()){
                    mapHaAndSps.put(sptb100.get(i).getIdSP(),path+haMains.get(j).getUrlHA());
                }
            }
        }

        ArrayList<SanPham> sanPhamTbs = new ArrayList<SanPham>();

        for (int i = 0; i < 6; i++) {
            sanPhamTbs.add(sptb100.get(i));
        }

        request.setAttribute("sptb100" , sanPhamTbs);
        request.setAttribute("mapUrl" , mapHaAndSps);

        request.getRequestDispatcher("/admin/tables.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
