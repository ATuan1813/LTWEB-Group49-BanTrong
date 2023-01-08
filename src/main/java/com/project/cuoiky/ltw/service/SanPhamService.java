package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.controller.HandleInput;
import com.project.cuoiky.ltw.database.HinhAnhDao;
import com.project.cuoiky.ltw.database.MauSacDao;
import com.project.cuoiky.ltw.database.ProductDao;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.MauSacLKSanPham;
import com.project.cuoiky.ltw.model.SanPham;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class SanPhamService {
    MauSacDao mauSacDao = new MauSacDao();
    HandleInput handleInput = new HandleInput();
    ProductDao productDao = new ProductDao();
    ColorLKSanPhamService colorLKSanPhamService = new ColorLKSanPhamService();
    UploadFileService uploadFileService = new UploadFileService();
    HinhAnhDao hinhAnhDao = new HinhAnhDao();

    //Query sản phẩm
    public ArrayList<SanPham> getAllSpPLC1(int idplc1) {
        return productDao.getAllSpPLC1(idplc1);
    }

    public ArrayList<SanPham> getAllSpPLC1Top6(int idplc1, int top) {
        return productDao.getAllSpPLC1Top6(idplc1, top);
    }

    public ArrayList<SanPham> getAllSpPLC2(int idplc2) {
        return productDao.getAllSpPLC1(idplc2);
    }

    public SanPham getOneSp(int IdSp) {
        return productDao.findOne(IdSp);
    }

    public ArrayList<SanPham> getAllSp() {
        return productDao.getAllSp();
    }


    //thêm sản phẩm
    public void themSanPham(SanPham sanPham, ArrayList<HinhAnh> listHA, ArrayList<MauSacLKSanPham> listMS) {
        int i = productDao.saveSP(sanPham, listHA, listMS);
        System.out.println("tổng quá trình thêm thành công " + i);

    }

    public void themSanPham2(HttpServletRequest request) throws UnsupportedEncodingException {


        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
        if (!isMultipartContent) {
            return;
        }
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("iso-8859-2");
        try {
            List<FileItem> fields = upload.parseRequest(request);
            Iterator<FileItem> it = fields.iterator(); // lấy tất cả ảnh
            if (!it.hasNext()) {
                return;
            }

            String TenSP = null;
            String MotaSP = null;
            int IdPLC2 = 0;
            String Hang = null;
            String ThongSoKyThuat = null;
            Long KickThuoc = null;
            String VatLieu = null;
            Long KhuyenMai = null;
            int SoLuongTrongKho = 0;
            int SoLuongDaBan = 0;
            Long GiaBan = null;
            Long GiaVon = null;
            String TinhTrang = null;

            System.out.println("field size sp: " + fields.size());
            int plc1 = 0;
            while (it.hasNext()) {
                FileItem fileItem = it.next();

                boolean isFormField = fileItem.isFormField();
                String filename = fileItem.getFieldName();
                String fileValue = fileItem.getString();

                if (isFormField) {
                    if (filename.equalsIgnoreCase("TenSP")) {
                        TenSP = fileValue;
                    } else if (filename.equalsIgnoreCase("MoTaSP")) {
                        MotaSP = "Một bộ trống cổ điển như bản gốc của Pearl “series President” Là nguyên bản có thật từ lịch sử 75 năm của Pearl, President Series đã đi tiên phong trong những lợi ích độc đáo của lớp vỏ Phenolic có áp suất kín. Dự án vật liệu rắn nhiều lớp, mỏng độc đáo này với âm vang lớn, xuyên thấu, rất được các nhà sưu tập và người chơi thèm muốn.";
                        System.out.println("Mô tả : " + MotaSP);
                    } else if (filename.equalsIgnoreCase("ThongSoKyThuat")) {
                        ThongSoKyThuat = "22″x14″ Bass Drum," +
                                "13″x9″ Tom," +
                                "16″x16″ Floor Tom," +
                                "Giá đỡ";
                    } else if (filename.equalsIgnoreCase("category")) {
                        plc1 = Integer.parseInt(fileValue);

                    } else if (filename.equalsIgnoreCase("category" + plc1)) {
                        IdPLC2 = Integer.parseInt(fileValue);

                    } else if (filename.equalsIgnoreCase("kichthuoc")) {
                        if (!fileValue.isEmpty()) {
                            KickThuoc = Long.parseLong(fileValue);
                        }
                    } else if (filename.equalsIgnoreCase("vatlieu")) {
                        VatLieu = fileValue;
                    } else if (filename.equalsIgnoreCase("sale")) {
                        if (!fileValue.isEmpty()) {
                            KhuyenMai = Long.parseLong(fileValue);
                        }
                    } else if (filename.equalsIgnoreCase("soLuong")) {
                        SoLuongTrongKho = Integer.parseInt(fileValue);
                    } else if (filename.equalsIgnoreCase("giaban")) {
                        GiaBan = Long.parseLong(fileValue);
                    } else if (filename.equalsIgnoreCase("giavon")) {
                        GiaVon = Long.parseLong(fileValue);
                    } else if (filename.equalsIgnoreCase("categoryStatus")) {
                        TinhTrang = fileValue;
                    } else if (filename.equalsIgnoreCase("categoryBranch")) {
                        Hang = fileValue;
                    }
                }
            }

            //insert into database
            SanPham sanPham = new SanPham(TenSP, MotaSP, IdPLC2, Hang, ThongSoKyThuat, KickThuoc, VatLieu, KhuyenMai, SoLuongTrongKho
                    , SoLuongDaBan, GiaBan, GiaVon, TinhTrang);

            int IdSP = productDao.saveSP2(sanPham);
            System.out.println("idSP : " + IdSP);

            Map<Integer, Integer> imgColors = uploadFileService.uploadImg(fields, IdSP);
            colorLKSanPhamService.saveColorLKSanPham(imgColors, IdSP, fields);

            System.out.println("====================================");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int updateSanPham(HttpServletRequest request) throws UnsupportedEncodingException {
        int idsp = 0;

        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
        if (!isMultipartContent) {
            return 0;
        }
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("iso-8859-2");
        try {
            List<FileItem> fields = upload.parseRequest(request);
            Iterator<FileItem> it = fields.iterator(); // lấy tất cả ảnh
            if (!it.hasNext()) {
                return 0;
            }

            String TenSP = null;
            String MotaSP = null;
            int IdPLC2 = 0;
            String Hang = null;
            String ThongSoKyThuat = null;
            Long KickThuoc = null;
            String VatLieu = null;
            Long KhuyenMai = null;
            int SoLuongTrongKho = 0;
            int SoLuongDaBan = 0;
            Long GiaBan = null;
            Long GiaVon = null;
            String TinhTrang = null;

            System.out.println("field size sp: " + fields.size());
            int plc1 = 0;
            while (it.hasNext()) {
                FileItem fileItem = it.next();

                boolean isFormField = fileItem.isFormField();
                String filename = fileItem.getFieldName();
                String fileValue = fileItem.getString();

                if (isFormField) {
                    if (filename.equalsIgnoreCase("TenSP")) {
                        TenSP = fileValue;
                    } else if (filename.equalsIgnoreCase("MoTaSP")) {
                        MotaSP = "Một bộ trống cổ điển như bản gốc của Pearl “series President” Là nguyên bản có thật từ lịch sử 75 năm của Pearl, President Series đã đi tiên phong trong những lợi ích độc đáo của lớp vỏ Phenolic có áp suất kín. Dự án vật liệu rắn nhiều lớp, mỏng độc đáo này với âm vang lớn, xuyên thấu, rất được các nhà sưu tập và người chơi thèm muốn.";
                        System.out.println("Mô tả : " + MotaSP);
                    } else if (filename.equalsIgnoreCase("ThongSoKyThuat")) {
                        ThongSoKyThuat = "22″x14″ Bass Drum," +
                                "13″x9″ Tom," +
                                "16″x16″ Floor Tom," +
                                "Giá đỡ";
                    } else if (filename.equalsIgnoreCase("category")) {
                        plc1 = Integer.parseInt(fileValue);

                    } else if (filename.equalsIgnoreCase("category" + plc1)) {
                        IdPLC2 = Integer.parseInt(fileValue);

                    } else if (filename.equalsIgnoreCase("kichthuoc")) {
                        if (!fileValue.isEmpty()) {
                            KickThuoc = Long.parseLong(fileValue);
                        }
                    } else if (filename.equalsIgnoreCase("vatlieu")) {
                        VatLieu = fileValue;
                    } else if (filename.equalsIgnoreCase("sale")) {
                        if (!fileValue.isEmpty()) {
                            KhuyenMai = Long.parseLong(fileValue);
                        }
                    } else if (filename.equalsIgnoreCase("soLuong")) {
                        SoLuongTrongKho = Integer.parseInt(fileValue);
                    } else if (filename.equalsIgnoreCase("giaban")) {
                        GiaBan = Long.parseLong(fileValue);
                    } else if (filename.equalsIgnoreCase("giavon")) {
                        GiaVon = Long.parseLong(fileValue);
                    } else if (filename.equalsIgnoreCase("categoryStatus")) {
                        TinhTrang = fileValue;
                    } else if (filename.equalsIgnoreCase("categoryBranch")) {
                        Hang = fileValue;
                    }else if (filename.equalsIgnoreCase("idsp")) {
                        idsp = Integer.parseInt(fileValue);
                        System.out.println("idsp request " + idsp);
                    }
                }
            }

            //insert into database
            SanPham sanPham = new SanPham(TenSP, MotaSP, IdPLC2, Hang, ThongSoKyThuat, KickThuoc, VatLieu, KhuyenMai, SoLuongTrongKho
                    , SoLuongDaBan, GiaBan, GiaVon, TinhTrang);

            int IdSP = productDao.updateSp(sanPham, idsp);
            System.out.println("idSP update : " + IdSP);

            int Idha =  uploadFileService.updateimg(fields, idsp);
            int idcolor = colorLKSanPhamService.UpdateColorLKSanPham(idsp, fields);

            System.out.println("====================================");

            return idsp;
        } catch (Exception e) {
            e.printStackTrace();
        }
    return idsp;
    }

    // XÓA SẢN PHẨM
    public void removeSp(int idsp){
        hinhAnhDao.removeImg(idsp);
        mauSacDao.removeColorSp(idsp);
        productDao.removeSp(idsp);

        System.out.println("đã xóa xong");
    }
}
