package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.database.NguoiDungDao;
import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.utils.MD5;
import com.project.cuoiky.ltw.utils.SendMail;

import java.util.UUID;

public class NguoiDungService {

    NguoiDungDao nguoiDungDao = new NguoiDungDao();

    public NguoiDung findTaiKhoan(String taiKhoan) {
        return nguoiDungDao.findTaiKhoan(taiKhoan);
    }

    public int register(String taiKhoan, String matKhau) {
        int result = 0;
        try {
            NguoiDung nd = new NguoiDung();
            nd.setTaiKhoan(taiKhoan);
            nd.setEmail(taiKhoan);
            nd.setMatKhau(MD5.hashMD5(matKhau));
            nd.setQuyen(1);
            nd.setTinhtrang(1);

            result = nguoiDungDao.register(nd);

            if (result > 0) {
                // send mail
                SendMail.send(taiKhoan, "A", "");
            }
        } catch (Exception ex) {
        }

        return result;
    }

    public int update(NguoiDung nguoiDung) {
        int result = 0;
        try {
            String password = UUID.randomUUID().toString();
            System.out.println(password);
            nguoiDung.setMatKhau(MD5.hashMD5(password));
            System.out.println(nguoiDung.getMatKhau());
            result = nguoiDungDao.update(nguoiDung);

            SendMail.send(nguoiDung.getEmail(), "A" + password, "");

        } catch (Exception ex) {
        }

        return result;
    }
}
