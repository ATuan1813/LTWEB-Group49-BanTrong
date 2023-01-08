package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.*;
import com.project.cuoiky.ltw.model.*;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class MauSacDao extends AbsDao{
   // get list color
   public ArrayList<MauSac> getListMS(){
       ArrayList<MauSac> MauSacs = new ArrayList<MauSac>();
       String sql= "SELECT * FROM mausac";

       MauSacs = queryHasId(sql, new CategoryMSMapper());
       return MauSacs;
   }

    // get list MauSacLKSanPham for update
    public ArrayList<MauSacLKSanPham> getListMSToUpdate(SanPham sanPham){

        ArrayList<MauSacLKSanPham> mauSacLKSanPhams = new ArrayList<MauSacLKSanPham>();
        String sql= "SELECT * FROM mauSacLKSanPham ms ha Where ms.IdSP = ?";

        mauSacLKSanPhams = query(sql, new MauSacLKSanPhamMapper(),sanPham.getIdSP());
        return mauSacLKSanPhams;
    }

   // Save MauSacLKSanPham From Save SanPham
    public int  SaveMSandSP(MauSacLKSanPham mauSacLKSanPham, SanPham sanPham, HinhAnh hinhAnh){
        String sql = "INSERT INTO mausaclkphamsan(MaViTriMS,IdSP,IdMS,IdHA, SoLuongTrongKhoMS,SoLuongDaBanMS)" +
                " VALUES(?,?,?,?,?,?)";

        int idms =  insert(sql,mauSacLKSanPham.getMaVitriMS(),sanPham.getIdSP(),hinhAnh.getIdHA(),mauSacLKSanPham.getSoLuongTrongKhoMS(),
                mauSacLKSanPham.getSoLuongDaBanMS());

        return  idms;
    }
    public int  SaveMSandSP2(MauSacLKSanPham mauSacLKSanPham, int idSP, int idHA){
        String sql = "INSERT INTO mausaclkphamsan(MaViTriMS,IdSP,IdMS,IdHA, SoLuongTrongKhoMS,SoLuongDaBanMS)" +
                " VALUES(?,?,?,?,?,?)";

        int idms =  insert(sql,mauSacLKSanPham.getMaVitriMS(),idSP,idHA,mauSacLKSanPham.getSoLuongTrongKhoMS(),
                mauSacLKSanPham.getSoLuongDaBanMS());

        return  idms;
    }
    public int  SaveMSandSP3(MauSacLKSanPham mauSacLKSanPham){
        String sql = "INSERT INTO mausaclkphamsan(MaViTriMS,IdSP,IdMS,IdHA, SoLuongTrongKhoMS,SoLuongDaBanMS)" +
                " VALUES(?,?,?,?,?,?)";

        int idms =  insert(sql,mauSacLKSanPham.getMaVitriMS(),mauSacLKSanPham.getIdSP(),mauSacLKSanPham.getIdMS(),mauSacLKSanPham.getIdHA()
                ,mauSacLKSanPham.getSoLuongTrongKhoMS(),
                mauSacLKSanPham.getSoLuongDaBanMS());

        return  idms;
    }

}
