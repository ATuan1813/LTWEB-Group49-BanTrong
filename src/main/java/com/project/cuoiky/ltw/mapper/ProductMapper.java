package com.project.cuoiky.ltw.mapper;

import com.project.cuoiky.ltw.database.ProductDao;
import com.project.cuoiky.ltw.model.SanPham;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper{


    @Override
    public SanPham mapRow(ResultSet resultSet) throws SQLException {
        String tensp = resultSet.getString("TenSP");
        String MoTaSP = resultSet.getString("MoTaSP");
        String Hang = resultSet.getString("Hang");
        String ThongSoKyThuat = resultSet.getString("ThongSoKyThuat");
        String VatLieu = resultSet.getString("VatLieu");
        String TinhTrang = resultSet.getString("TinhTrang");
        int IdPLC2 = resultSet.getInt("IdPLC2");
        int SoLuongTrongKho = resultSet.getInt("SoLuongTrongKho");
        int SoLuongDaBan = resultSet.getInt("SoLuongDaBan");
        Long GiaBan = resultSet.getLong("GiaBan");
        Long GiaVon = resultSet.getLong("GiaVon");
        Long KichThuoc = resultSet.getLong("KichThuoc");
        Long KhuyenMai = resultSet.getLong("KhuyenMai");

        SanPham sp = new SanPham(tensp,MoTaSP,IdPLC2,Hang,ThongSoKyThuat,KichThuoc,VatLieu,KhuyenMai,SoLuongTrongKho,SoLuongDaBan,GiaBan,GiaVon,TinhTrang);


        return sp;

    }

    @Override
    public Object mapRowID(ResultSet resultSet) throws SQLException {
        int IdSP = resultSet.getInt("IdSP");
        String tensp = resultSet.getString("TenSP");
        String MoTaSP = resultSet.getString("MoTaSP");
        String Hang = resultSet.getString("Hang");
        String ThongSoKyThuat = resultSet.getString("ThongSoKyThuat");
        String VatLieu = resultSet.getString("VatLieu");
        String TinhTrang = resultSet.getString("TinhTrang");
        int IdPLC2 = resultSet.getInt("IdPLC2");
        int SoLuongTrongKho = resultSet.getInt("SoLuongTrongKho");
        int SoLuongDaBan = resultSet.getInt("SoLuongDaBan");
        Long GiaBan = resultSet.getLong("GiaBan");
        Long GiaVon = resultSet.getLong("GiaVon");
        Long KichThuoc = resultSet.getLong("KichThuoc");
        Long KhuyenMai = resultSet.getLong("KhuyenMai");

        SanPham sp = new SanPham(IdSP,tensp,MoTaSP,IdPLC2,Hang,ThongSoKyThuat,KichThuoc,VatLieu,KhuyenMai,SoLuongTrongKho,SoLuongDaBan,GiaBan,GiaVon,TinhTrang);


        return sp;
    }

}
