package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.database.ProductDao;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.MauSacLKSanPham;
import com.project.cuoiky.ltw.model.SanPham;

import java.util.ArrayList;

public class SanPhamService {
    ProductDao productDao = new ProductDao();

    //thêm sản phẩm
    public void themSanPham(SanPham sanPham, ArrayList<HinhAnh> listHA, ArrayList<MauSacLKSanPham> listMS){
        int i = productDao.saveSP(sanPham,listHA,listMS);
        System.out.println("tổng quá trình thêm thành công " + i);



    }
}
