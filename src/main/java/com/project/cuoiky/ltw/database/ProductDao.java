package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.ProductMapper;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.MauSac;
import com.project.cuoiky.ltw.model.MauSacLKSanPham;
import com.project.cuoiky.ltw.model.SanPham;

import java.util.ArrayList;
import java.util.List;

public class ProductDao extends AbsDao{

    //Save Product
    public int save(SanPham sanPham, ArrayList<HinhAnh> listHA, ArrayList<MauSacLKSanPham> listMS) {
        int results = 0;
        // should use StringBuilder vì tránh lãng phí bộ nhớ
        String sqlAddSp = "INSERT INTO SANPHAM (TenSP, MoTaSP, IdPLC2,Hang, ThongSoKyThuat, KichThuoc, VatLieu, KhuyenMai, SoLuongTrongKho," +
                "SoLuongDaBan, GiaBan, GiaVon, TinhTrang) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        int idSP = insert(sqlAddSp,sanPham.getTenSP(),sanPham.getMotaSP(),sanPham.getIdPLC2(),sanPham.getHang(),sanPham.getThongSoKyThuat()
                , sanPham.getKickThuoc(),sanPham.getVatLieu(), sanPham.getKhuyenMai(), sanPham.getSoLuongTrongKho()
                , sanPham.getSoLuongDaBan(),sanPham.getGiaBan(), sanPham.getGiaVon(), sanPham.getTinhTrang());
        results++;




        return  results;
    }

    // Save color of product

    // find by id
    public SanPham findOne(int id) {

        String sql = "SELECT * FROM NEWS WHERE ID = ?";
        List<SanPham> news2 = query(sql, new ProductMapper(), id);
        System.out.println("find id of findOneNew :" + news2.get(0).getIdSP());
        return news2.isEmpty() ? null : news2.get(0);

    }

}
