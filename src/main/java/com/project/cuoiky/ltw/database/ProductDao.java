package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.ProductMapper;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.MauSacLKSanPham;
import com.project.cuoiky.ltw.model.SanPham;

import java.util.ArrayList;
import java.util.List;

public class ProductDao extends AbsDao{

    MauSacDao mauSacDao = new MauSacDao();
    HinhAnhDao hinhAnhDao = new HinhAnhDao();


    //Save Product
    public int saveSP(SanPham sanPham, ArrayList<HinhAnh> listHA, ArrayList<MauSacLKSanPham> listMS) {
        int results = 0;
        // should use StringBuilder vì tránh lãng phí bộ nhớ
        String sqlAddSp = "INSERT INTO SANPHAM (TenSP, MoTaSP, IdPLC2,Hang, ThongSoKyThuat, KichThuoc, VatLieu, KhuyenMai, SoLuongTrongKho," +
                "SoLuongDaBan, GiaBan, GiaVon, TinhTrang) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        int idSP = insert(sqlAddSp,sanPham.getTenSP(),sanPham.getMotaSP(),sanPham.getIdPLC2(),sanPham.getHang(),sanPham.getThongSoKyThuat()
                , sanPham.getKickThuoc(),sanPham.getVatLieu(), sanPham.getKhuyenMai(), sanPham.getSoLuongTrongKho()
                , sanPham.getSoLuongDaBan(),sanPham.getGiaBan(), sanPham.getGiaVon(), sanPham.getTinhTrang());
        results++;

        ArrayList<Integer> idhas = new ArrayList<Integer>();
        ArrayList<Integer> idms = new ArrayList<Integer>();
        for (HinhAnh hinhAnh: listHA) {
            for (MauSacLKSanPham mauSacLKSanPham: listMS) {
                if(hinhAnh.getMaViTriHA() == mauSacLKSanPham.getMaVitriMS()){
                    idhas.add(hinhAnhDao.SaveHA(sanPham,hinhAnh));
                    idms.add(mauSacDao.SaveMSandSP(mauSacLKSanPham,sanPham,hinhAnh));
                    results++;
                }else{
                    idhas.add(hinhAnhDao.SaveHA(sanPham,hinhAnh));
                    results++;
                }
            }
        }
        for (int idm : idms) {
            System.out.println("đã thêm thành công màu sắc có id " + idm);
        }
        for (int idha : idhas) {
            System.out.println("đã thêm thành công hình ảnh có id " + idha);
        }

        return  results;
    }
    public int saveSP2(SanPham sanPham) {

        // should use StringBuilder vì tránh lãng phí bộ nhớ
        String sqlAddSp = "INSERT INTO SANPHAM (TenSP, MoTaSP, IdPLC2,Hang, ThongSoKyThuat, KichThuoc, VatLieu, KhuyenMai, SoLuongTrongKho," +
                "SoLuongDaBan, GiaBan, GiaVon, TinhTrang) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        int idSP = insert(sqlAddSp,sanPham.getTenSP(),sanPham.getMotaSP(),sanPham.getIdPLC2(),sanPham.getHang(),sanPham.getThongSoKyThuat()
                , sanPham.getKickThuoc(),sanPham.getVatLieu(), sanPham.getKhuyenMai(), sanPham.getSoLuongTrongKho()
                , sanPham.getSoLuongDaBan(),sanPham.getGiaBan(), sanPham.getGiaVon(), sanPham.getTinhTrang());

        System.out.println("Added SanPham has id : " +idSP);

        return  idSP;
    }

    // find by id
    public SanPham findOne(int idsp) {
        String sql = "SELECT * FROM sanpham WHERE IDSP = ?";
        List<SanPham> news2 = queryHasId(sql, new ProductMapper(), idsp);
        System.out.println("find id of findOneNew :" + news2.get(0).getIdSP());
        return news2.isEmpty() ? null : news2.get(0);
    }

    //update san phẩm
    public int updateSp(SanPham sanPham, int idSp){

        sanPham.setIdSP(idSp);

        String sql = "UPDATE SANPHAM SET TenSP = ?, MoTaSP = ?, IdPLC2 = ?, Hang = ?, ThongSoKyThuat = ?, KichThuoc = ?," +
                "VatLieu = ?, KhuyenMai = ?, SoLuongTrongKho = ?, GiaBan = ?, GiaVon = ?, TinhTrang = ? WHERE IdSP = ?";

        int i = update(sql, sanPham.getTenSP(), sanPham.getMotaSP(), sanPham.getIdPLC2(), sanPham.getHang(), sanPham.getThongSoKyThuat()
            , sanPham.getKickThuoc(), sanPham.getVatLieu(), sanPham.getKhuyenMai(), sanPham.getSoLuongTrongKho(), sanPham.getGiaBan()
            , sanPham.getGiaVon(), sanPham.getTinhTrang(), idSp);


        return i;
    }

    public ArrayList<SanPham> getAllSp(){
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT * FROM SANPHAM";
        sanPhams = queryHasId(sql, new ProductMapper());

        return sanPhams;
    }

    public ArrayList<SanPham> getAllSpPLC1(int idplc1){
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT * FROM SANPHAM sp Where sp.IdPLC2 IN (SELECT IdPLC2 FROM PHANLOAICAP2 c2 WHERE c2.IdPLC1 = ?)";
        sanPhams = queryHasId(sql, new ProductMapper(), idplc1);

        return sanPhams;
    }
    public ArrayList<SanPham> getAllSpPLC2(int idplc2){
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT * FROM SANPHAM sp Where sp.IdPLC2 = ?)";
        sanPhams = queryHasId(sql, new ProductMapper(), idplc2);

        return sanPhams;
    }

    public ArrayList<SanPham> getAllSpPLC1Top6(int idplc1, int top){
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT TOP 6 * FROM SANPHAM sp Where sp.IdPLC2 IN (SELECT IdPLC2 FROM PHANLOAICAP2 c2 WHERE c2.IdPLC1 = ?)";
        sanPhams = queryHasId(sql, new ProductMapper(), idplc1);

        return sanPhams;
    }

    public ArrayList<SanPham> getAllSanPhamTheoTinhTrang(String tinhTrang) {
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT * FROM sanpham sp WHERE tinhTrang LIKE ? LIMIT 5";
        sanPhams = queryHasId(sql, new ProductMapper(), tinhTrang);

        return sanPhams;
    }

    public ArrayList<SanPham> getAllSanPhamKhuyenMai() {
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT * FROM sanpham sp ORDER BY KhuyenMai DESC LIMIT 5";
        sanPhams = queryHasId(sql, new ProductMapper());

        return sanPhams;
    }

    // San pham theo phan trang
    public ArrayList<SanPham> getAllSanPhamTheoPhanTrang(String firstRecord) {
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT * FROM sanpham sp ORDER BY TenSP ASC LIMIT " + firstRecord + ", 9";
        sanPhams = queryHasId(sql, new ProductMapper());

        return sanPhams;
    }

    // tinh tong so luong san pham
    public int getCountTheoPhanTrang() {
        String sql = "SELECT count(sp.idSP) FROM sanpham sp ORDER BY TenSP ASC";
        int total = count(sql);

        return total;
    }

    // lay san pham dua theo hang
    public ArrayList<SanPham> getAllSanPhamTheoHang(String idsHang, String firstRecord) {
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT * FROM sanpham sp WHERE sp.Hang IN (" + idsHang + ") ORDER BY TenSP ASC LIMIT " + firstRecord + ", 9";
        sanPhams = queryHasId(sql, new ProductMapper());

        return sanPhams;
    }

    // lay danh sach tat ca cac hang
    public ArrayList<SanPham> getAllHang() {
        ArrayList<SanPham> sanPhams = new ArrayList<>();

        String sql = "SELECT sp.* FROM sanpham sp GROUP BY hang";
        sanPhams = queryHasId(sql, new ProductMapper());

        return sanPhams;
    }

    // xóa sp
    public int removeSp(int idsp){
        int idimg = 0;
        String sql = "DELETE FROM SANPHAM WHERE IdSP = ?";

        idimg = update(sql, idsp);
        System.out.println("đã xóa san pham có id : " + idimg);
        return idimg;
    }

}
