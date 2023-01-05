package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.controller.HandleInput;
import com.project.cuoiky.ltw.database.MauSacDao;
import com.project.cuoiky.ltw.model.MauSacLKSanPham;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

public class ColorLKSanPhamService {
    MauSacDao mauSacDao = new MauSacDao();
    HandleInput handleInput = new HandleInput();

    public void saveColorLKSanPham(Map<Integer, Integer> imgColors, int IdSP, HttpServletRequest request) throws FileUploadException {

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

            for (Map.Entry<Integer,Integer> entry: imgColors.entrySet()) {
                int mavitrim = 0;
                int idha = 0;
                int soluongMS = 0;
                int idms = 0;

                while (it.hasNext()) {
                    FileItem fileItem = it.next();
                    boolean isFormField = fileItem.isFormField();

                    if (isFormField) {
                        String fileName = fileItem.getFieldName();
                        if(fileName.contains("categoryMS"+entry.getKey())){
                             mavitrim = handleInput.getnumberInString(fileName);
                             idha = imgColors.get(mavitrim);
                             idms = Integer.parseInt(fileItem.getString()); // value

                        }else if(fileName.contains("soLuongMS"+entry.getKey())){
                             soluongMS = Integer.parseInt(fileItem.getString()); // value
                        }
                    }
                }

                MauSacLKSanPham mauSacLKSanPham =  new MauSacLKSanPham(mavitrim,IdSP,idms,idha,soluongMS,0);
                int i =0;
                i = mauSacDao.SaveMSandSP3(mauSacLKSanPham);
                if (i != 0){
                    System.out.println("Save Màu Sắc Thành Công và Id là " + i);
                }
            }



        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
