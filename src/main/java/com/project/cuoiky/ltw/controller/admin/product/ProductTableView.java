package com.project.cuoiky.ltw.controller.admin.product;

import com.project.cuoiky.ltw.database.CategoryDao;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.PhanLoaiCap2;
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

@WebServlet(name = "ProductTableView", value = "/admin-product-table-view")
public class ProductTableView extends HttpServlet {
    SanPhamService sanPhamService = new SanPhamService();
    UploadFileService uploadFileService = new UploadFileService();
    CategoryDao categoryDao = new CategoryDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<SanPham> sanPhams = new ArrayList<SanPham>();
        int pl = Integer.parseInt(request.getParameter("pl"));

        String notify = "";

        if (pl == 1){
            sanPhams = sanPhamService.getAllSpPLC1(100);
            notify = "Trống Bộ";
        } else if (pl == 2) {
            sanPhams = sanPhamService.getAllSpPLC1(200);
            notify = "Trống Lẻ";
        }else if (pl == 3) {
            sanPhams = sanPhamService.getAllSpPLC1(300);
            notify = "Phụ Kiện";
        }

        ArrayList<SanPham> sptb100 = sanPhams;
        ArrayList<PhanLoaiCap2> phanLoaiCap2s = categoryDao.getListPLC2();
        ArrayList<HinhAnh> haMains = uploadFileService.hinhAnhMains();


        Map<Integer, String> mapHaAndSps = new HashMap<Integer,String>();
        Map<Integer, String> mapCaAndSps = new HashMap<Integer,String>();

        // map hình ảnh with product
        String path = "http://localhost:8080/shopbantrong_war";
        for (int i = 0; i < sptb100.size(); i++) {
            for (int j = 0; j < haMains.size(); j++) {
                if(sptb100.get(i).getIdSP() == haMains.get(j).getIdSP()){
                    mapHaAndSps.put(sptb100.get(i).getIdSP(),path+haMains.get(j).getUrlHA());
                }
            }
        }

        // map category with product
        for (int i = 0; i < sptb100.size(); i++) {
            for (int j = 0; j < phanLoaiCap2s.size(); j++) {
                if(sptb100.get(i).getIdPLC2() == phanLoaiCap2s.get(j).getIdPLC2()){
                    mapCaAndSps.put(sptb100.get(i).getIdSP(),phanLoaiCap2s.get(j).getTenPLC2());
                }
            }
        }

        request.setAttribute("sptb", sptb100);
        request.setAttribute("mapHaAndSps", mapHaAndSps);
        request.setAttribute("mapCaAndSps", mapCaAndSps);
        request.setAttribute("notify",notify);
        request.getRequestDispatcher("/admin/productTableView.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
