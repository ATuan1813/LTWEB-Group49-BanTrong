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
        String sql= "SELECT * FROM hinhanh ha Where ha.IdSP = ?";

        HinhAnhs = query(sql, new HinhAnhMapper(),sanPham.getIdSP());

        return HinhAnhs;
    }

    // Save MauSacLKSanPham From Save SanPham
    public int  SaveHA(SanPham sanPham, HinhAnh hinhAnh){
        String sql = "INSERT INTO mausaclkphamsan(MaViTriHA,IdSP,UrlHA) VALUES(?,?,?)";
        int idha =  insert(sql,hinhAnh.getMaViTriHA(),sanPham.getIdSP(),hinhAnh.getUrlHA());

        return  idha;
    }
    public int  SaveHA2(HinhAnh hinhAnh,int idSP){
        String sql = "INSERT INTO HinhAnh(MaViTriHA,IdSP,UrlHA) VALUES(?,?,?)";
        int idha =  insert(sql,hinhAnh.getMaViTriHA(),idSP,hinhAnh.getUrlHA());

        return  idha;
    }

    public ArrayList<HinhAnh> getListHAMain(int MaViTri){

        ArrayList<HinhAnh> HinhAnhs = new ArrayList<HinhAnh>();
        String sql= "SELECT * FROM HinhAnh ha Where ha.MaViTriHA = ?";

        HinhAnhs = queryHasId(sql, new HinhAnhMapper(), MaViTri);

        return HinhAnhs;
    }
}
