package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.CategoryMSMapper;
import com.project.cuoiky.ltw.mapper.HinhAnhMapper;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.MauSac;
import com.project.cuoiky.ltw.model.MauSacLKSanPham;
import com.project.cuoiky.ltw.model.SanPham;

import java.util.ArrayList;

public class HinhAnhDao extends AbsDao{
    // get list hinh anh for update
    public ArrayList<HinhAnh> getListMS(SanPham sanPham){

        ArrayList<HinhAnh> HinhAnhs = new ArrayList<HinhAnh>();
        String sql= "SELECT * FROM HinhAnh ha Where ha.IdSP = ?";

        HinhAnhs = query(sql, new HinhAnhMapper(),sanPham.getIdSP());

        return HinhAnhs;
    }

    // Save MauSacLKSanPham From Save SanPham
    public int  SaveMSandSP(MauSacLKSanPham mauSacLKSanPham, SanPham sanPham, HinhAnh hinhAnh){
        String sql = "INSERT INTO mausaclkphamsan(MaViTriMS,IdSP,IdMS,IdHA, SoLuongTrongKhoMS,SoLuongDaBanMS)" +
                " VALUES(?,?,?,?,?,?)";

        int idms =  insert(sql,mauSacLKSanPham.getMaVitriMS(),sanPham.getIdSP(),hinhAnh.getIdHA(),mauSacLKSanPham.getSoLuongTrongKhoMS(),
                mauSacLKSanPham.getSoLuongDaBanMS());

        return  idms;
    }
}
