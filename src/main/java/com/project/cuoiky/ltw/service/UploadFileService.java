package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.controller.HandleInput;
import com.project.cuoiky.ltw.database.HinhAnhDao;
import com.project.cuoiky.ltw.model.HinhAnh;
import com.project.cuoiky.ltw.model.SanPham;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

public class UploadFileService {
    HandleInput handleInput = new HandleInput();
    HinhAnhDao hinhAnhDao = new HinhAnhDao();

    public Map<Integer,Integer> uploadImg(List< FileItem > fields , int IdSP) throws IOException {

        Map<Integer,Integer> idimgs =  new HashMap<Integer,Integer>();

        try {
            System.out.println("size fields : " + fields.size());
            Iterator<FileItem> it = fields.iterator(); // lấy tất cả ảnh
            if (!it.hasNext()) {
                return null;
            }

            ArrayList<Integer> MavitriHas = new ArrayList<>();
            ArrayList<String> urlHSa = new ArrayList<>();
            System.out.println("co it : " + it.hasNext());
            int index = 1;

            while (it.hasNext()) {
                FileItem fileItem = it.next();
                boolean isFormField = fileItem.isFormField();
                if (isFormField) {
//                    System.out.println(index + " - From field img : " + fileItem.getFieldName());
                    index++;
                } else {
                    if (fileItem.getSize() > 0) {
                        System.out.println("Ma vi tri image > 0: " + handleInput.getnumberInString(fileItem.getFieldName()));
                        MavitriHas.add(handleInput.getnumberInString(fileItem.getFieldName()));
                        String path = "F:\\intelij\\Source-web\\shopbantrong1\\shopbantrong\\src\\main\\webapp\\assets\\img\\sanpham\\" +fileItem.getName();

                        File file = new File(path);
                        if(file.exists()){
                            urlHSa.add(path);
                        }else {
                            urlHSa.add(path);
                            fileItem.write(new File(path));
                        }
                    }
                    System.out.println(index + " - File field image : " + handleInput.getnumberInString(fileItem.getFieldName()));
                    index++;
                }
            }

            for (int i = 0; i < MavitriHas.size(); i++) {
                System.out.println("in test " + MavitriHas.get(i));
                System.out.println("in test " + urlHSa.get(i));
            }

            // save imgs and return idimgs
            for (int i = 0; i < MavitriHas.size(); i++){
                if(MavitriHas.get(i)%1000 > 0){
                    HinhAnh hinhAnh = new HinhAnh(MavitriHas.get(i), IdSP, urlHSa.get(i));
                    System.out.println("Ma vi tri just img : " + MavitriHas.get(i) + " idSP " + IdSP);
                    int idimg = hinhAnhDao.SaveHA2(hinhAnh,IdSP);
                    System.out.println("Save img có id là " + idimg);

                }else {
                    // save img has color
                    HinhAnh hinhAnh = new HinhAnh(MavitriHas.get(i), IdSP, urlHSa.get(i));
                    System.out.println("Ma vi tri img and color : " + MavitriHas.get(i));

                    int idimg = hinhAnhDao.SaveHA2(hinhAnh,IdSP);
                    idimgs.put(MavitriHas.get(i), idimg);
                    System.out.println("Save img có id là " + idimg);
                }
            }
            return idimgs;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return idimgs;
    }

}
