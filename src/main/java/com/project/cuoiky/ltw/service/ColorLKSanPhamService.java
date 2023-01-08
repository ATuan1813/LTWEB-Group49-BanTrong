package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.controller.HandleInput;
import com.project.cuoiky.ltw.database.AbsDao;
import com.project.cuoiky.ltw.database.MauSacDao;
import com.project.cuoiky.ltw.model.MauSacLKSanPham;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ColorLKSanPhamService extends AbsDao {
    MauSacDao mauSacDao = new MauSacDao();
    HandleInput handleInput = new HandleInput();


    public void saveColorLKSanPham(Map<Integer, Integer> imgColors, int IdSP, List<FileItem> fields) throws FileUploadException {

        try {

            Iterator<FileItem> it = fields.iterator(); // lấy tất cả ảnh
            if (!it.hasNext()) {
                return;
            }

            for (Map.Entry<Integer, Integer> entry : imgColors.entrySet()) {
                int mavitrim = 0;
                int idha = 0;
                int soluongMS = 0;
                int idms = 0;

                System.out.println("Entry : " + entry.getKey());

                while (it.hasNext()) {
                    FileItem fileItem = it.next();
                    boolean isFormField = fileItem.isFormField();

                    if (isFormField) {
                        String fileName = fileItem.getFieldName();
                        if (fileName.contains("categoryMS" + entry.getKey())) {
                            mavitrim = handleInput.getnumberInString(fileName);
                            idha = imgColors.get(mavitrim);
                            idms = Integer.parseInt(fileItem.getString()); // value

                        } else if (fileName.contains("soLuongMS" + entry.getKey())) {
                            soluongMS = Integer.parseInt(fileItem.getString()); // value
                        }
                    }
                }

                MauSacLKSanPham mauSacLKSanPham = new MauSacLKSanPham(mavitrim, IdSP, idms, idha, soluongMS, 0);
                int i = 0;
                i = mauSacDao.SaveMSandSP3(mauSacLKSanPham);
                if (i != 0) {
                    System.out.println("Save Màu Sắc Thành Công và Id là " + i);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public int  UpdateColorLKSanPham(int IdSP, List<FileItem> fields) throws FileUploadException {
        int idcl = 0;
        try {

            Iterator<FileItem> it = fields.iterator(); // lấy tất cả ảnh
            if (!it.hasNext()) {
                return 0;
            }

            int mavitrim = 0;
            int idha = 0;
            int soluongMS = 0;
            int idms = 0;

            while (it.hasNext()) {
                FileItem fileItem = it.next();
                boolean isFormField = fileItem.isFormField();

                if (isFormField) {
                    String fileName = fileItem.getFieldName();
                    if (fileName.contains("categoryMS1000")) {
                        mavitrim = handleInput.getnumberInString(fileName);
                        idms = Integer.parseInt(fileItem.getString()); // value

                    } else if (fileName.contains("soLuongMS1000")) {
                        soluongMS = Integer.parseInt(fileItem.getString()); // value
                    }
                }
            }

            MauSacLKSanPham mauSacLKSanPham = new MauSacLKSanPham(mavitrim, IdSP, idms, idha, soluongMS, 0);

            idcl = mauSacDao.updateClo(mauSacLKSanPham, IdSP);
            if (idcl != 0) {
                System.out.println("update Màu Sắc Thành Công và Id là " + idcl);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return idcl;
    }

}
