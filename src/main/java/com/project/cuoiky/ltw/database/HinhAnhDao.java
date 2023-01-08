package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.HinhAnhMapper;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.SanPham;

import java.util.ArrayList;
import java.util.List;

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

    //find one hình ảnh
    public HinhAnh findOneHA(int idSp){
        String sql = "SELECT * FROM HINHANH WHERE IdSp = ?";
        List<HinhAnh> sp = queryHasId(sql, new HinhAnhMapper(), idSp);
        System.out.println("find id of findOneImg :" + sp.get(0).getIdHA());
        return sp.isEmpty() ? null : sp.get(0);

    }

    //update hình ảnh
    public int  updateHA(HinhAnh hinhAnh,int idSP){
        String sql = "UPDATE HINHANH SET MaViTriHA = ?, UrlHA = ? WHERE IdSP = ?";
        int idha =  update(sql,hinhAnh.getMaViTriHA(),hinhAnh.getUrlHA(),idSP);

        return  idha;
    }

    public ArrayList<HinhAnh> getListHAMain(int MaViTri){

        ArrayList<HinhAnh> HinhAnhs = new ArrayList<HinhAnh>();
        String sql= "SELECT * FROM HinhAnh ha Where ha.MaViTriHA = ?";

        HinhAnhs = queryHasId(sql, new HinhAnhMapper(), MaViTri);

        return HinhAnhs;
    }

    // xóa 1 hình ảnh dựa trên id sản phẩm
    public int removeImg(int idsp){
        int idimg = 0;
        String sql = "DELETE FROM HINHANH WHERE IdSP = ?";

        idimg = update(sql, idsp);
        System.out.println("đã xóa img có id : " + idimg);

        return idimg;
    }
}
