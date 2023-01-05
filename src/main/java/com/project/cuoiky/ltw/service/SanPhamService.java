package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.controller.HandleInput;
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

    //thêm sản phẩm
    public void themSanPham(SanPham sanPham, ArrayList<HinhAnh> listHA, ArrayList<MauSacLKSanPham> listMS) {
        int i = productDao.saveSP(sanPham, listHA, listMS);
        System.out.println("tổng quá trình thêm thành công " + i);

    }

    public void themSanPham2(HttpServletRequest request) {
        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
        if (!isMultipartContent) {
            return;
        }
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
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
            Double KickThuoc = null;
            String VatLieu = null;
            Double KhuyenMai = null;
            int SoLuongTrongKho = 0;
            int SoLuongDaBan = 0;
            Double GiaBan = null;
            Double GiaVon = null;
            String TinhTrang = null;

            System.out.println("field size sp: " + fields.size());
            int plc1 = 0;
            while (it.hasNext()) {
                FileItem fileItem = it.next();
                boolean isFormField = fileItem.isFormField();
                String filename = fileItem.getFieldName();
                String fileValue = fileItem.getString();

                if (isFormField) {
                    if(filename.equalsIgnoreCase("TenSP")){
                        TenSP = fileValue;
                    } else if (filename.equalsIgnoreCase("MoTaSP")) {
                        MotaSP = fileValue;
                    } else if (filename.equalsIgnoreCase("ThongSoKyThuat")) {
                        ThongSoKyThuat = fileValue;
                    } else if (filename.equalsIgnoreCase("category")) {
                        plc1 = Integer.parseInt(fileValue);

                    } else if (filename.equalsIgnoreCase("category"+plc1)) {
                        IdPLC2 = Integer.parseInt(fileValue);

                    } else if (filename.equalsIgnoreCase("kichthuoc")) {
                        if(fileValue != null){
                            KickThuoc = Double.parseDouble(fileValue);
                        }
                    } else if (filename.equalsIgnoreCase("vatlieu")) {
                        VatLieu = fileValue;
                    } else if (filename.equalsIgnoreCase("sale")) {
                        if (fileValue != null){
                            KhuyenMai = Double.parseDouble(fileValue);
                        }
                    } else if (filename.equalsIgnoreCase("soLuong")) {
                        SoLuongTrongKho = Integer.parseInt(fileValue);
                    } else if (filename.equalsIgnoreCase("giaban")) {
                        GiaBan = Double.parseDouble(fileValue);
                    } else if (filename.equalsIgnoreCase("giavon")) {
                        GiaVon = Double.parseDouble(fileValue);
                    } else if (filename.equalsIgnoreCase("categoryStatus")) {
                        TinhTrang = fileValue;
                    } else if (filename.equalsIgnoreCase("categoryBranch")) {
                        Hang = fileValue;
                    }
                }
            }

            //insert into database
            SanPham sanPham = new SanPham(TenSP,MotaSP,IdPLC2,Hang, ThongSoKyThuat, KickThuoc, VatLieu, KhuyenMai, SoLuongTrongKho
            , SoLuongDaBan, GiaBan, GiaVon, TinhTrang);

            int IdSP = productDao.saveSP2(sanPham);
            System.out.println("idSP : " + IdSP);

            Map<Integer,Integer> imgColors = uploadFileService.uploadImg(fields,IdSP);
            colorLKSanPhamService.saveColorLKSanPham(imgColors,IdSP,request);

            System.out.println("==========================");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
