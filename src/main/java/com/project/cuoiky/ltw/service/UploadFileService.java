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

    public Map<Integer,Integer> uploadImg(HttpServletRequest request , int IdSP) throws IOException {
        String file_name = null;
        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
        if (!isMultipartContent) {
            return null;
        }

        Map<Integer,Integer> idimgs =  new HashMap<Integer,Integer>();

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List< FileItem > fields = upload.parseRequest(request);
            Iterator<FileItem> it = fields.iterator(); // lấy tất cả ảnh
            if (!it.hasNext()) {
                return null;
            }
            ArrayList<Integer> MavitriHas = new ArrayList<>();
            ArrayList<String> urlHSa = new ArrayList<>();
            while (it.hasNext()) {
                FileItem fileItem = it.next();
                boolean isFormField = fileItem.isFormField();
                if (isFormField) {
                    if (file_name == null) {
                        if (fileItem.getFieldName().equals("file_name")) {
                            file_name = fileItem.getString();
                        }
                    }
                } else {
                    if (fileItem.getSize() > 0) {
                        MavitriHas.add(handleInput.getnumberInString(fileItem.getFieldName()));
                        urlHSa.add("F:\\intelij\\Source-web\\shopbantrong1\\shopbantrong\\src\\main\\webapp\\assets\\img\\sanpham\\" + fileItem.getName());
                        fileItem.write(new File("F:\\intelij\\Source-web\\shopbantrong1\\shopbantrong\\src\\main\\webapp\\assets\\img\\sanpham\\" + fileItem.getName()));
                    }
                }
            }

            // save imgs and return idimgs
            for (int i = 0; i < MavitriHas.size(); i++){
                if(MavitriHas.get(i)%1000 >= 0){
                    HinhAnh hinhAnh = new HinhAnh(MavitriHas.get(i), IdSP, urlHSa.get(i));
                    hinhAnhDao.SaveHA2(hinhAnh,IdSP);
                }else {
                    // save img has color
                    HinhAnh hinhAnh = new HinhAnh(MavitriHas.get(i), IdSP, urlHSa.get(i));
                    int idimg = hinhAnhDao.SaveHA2(hinhAnh,IdSP);
                    idimgs.put(MavitriHas.get(i), idimg);
                }
            }
            return idimgs;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
//            out.println("<script type='text/javascript'>");
//            out.println("window.location.href='index.jsp?filename="+file_name+"'");
//            out.println("</script>");
//            out.close();
        }
        return idimgs;
    }

}
