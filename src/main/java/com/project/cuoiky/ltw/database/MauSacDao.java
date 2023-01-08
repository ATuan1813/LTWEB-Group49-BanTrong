package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.*;
import com.project.cuoiky.ltw.model.*;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

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

    // update mausaclksanpham
    public MauSacLKSanPham findOneClo(int idSp){
        String sql = "SELECT * FROM MAUSACLKPhamSan WHERE IdSp = ?";
        List<MauSacLKSanPham> sp = queryHasId(sql, new MauSacLKSanPhamMapper(), idSp);
        System.out.println("find id of findOneColor :" + sp.get(0).getIdMSSP());
        return sp.isEmpty() ? null : sp.get(0);

    }

    //update hình ảnh
    public int  updateClo(MauSacLKSanPham mauSacLKSanPham,int idSP){
        String sql = "UPDATE MAUSACLKPhamSan SET MaViTriMS = ?, IdMS = ?, SoLuongTrongKhoMS = ? WHERE IdSP = ?";
        int idha =  update(sql,mauSacLKSanPham.getMaVitriMS(), mauSacLKSanPham.getIdMS() ,mauSacLKSanPham.getSoLuongTrongKhoMS(), idSP);

        return  idha;
    }

    // remove mausaclkphamsan
    public int removeColorSp(int idsp){
        int idimg = 0;
        String sql = "DELETE FROM MAUSACLKPHAMSAN WHERE IdSP = ?";

        idimg = update(sql, idsp);
        System.out.println("đã xóa colorSP có id : " + idimg);
        return idimg;
    }

}
