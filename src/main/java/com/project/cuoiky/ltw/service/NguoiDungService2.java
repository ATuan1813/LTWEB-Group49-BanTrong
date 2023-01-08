package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.database.NguoiDungDao2;
import com.project.cuoiky.ltw.model.NguoiDung;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class NguoiDungService2 {
    NguoiDungDao2 nguoiDungDao2 = new NguoiDungDao2();

    // add user
    public int adduser(HttpServletRequest request) {
        int idnd = 0;
        String TAIKHOAN =  request.getParameter("username");
        String MatKhau =  request.getParameter("password");
        String TenNguoiDung = request.getParameter("fullname");
        int Quyen = Integer.parseInt(request.getParameter("quyen"));
        int sdt = Integer.parseInt(request.getParameter("phone"));
        String Email = request.getParameter("email");
        String diachi =  request.getParameter("diachi");
        String avartar =  request.getParameter("tinhtrang");
        int tinhtrang = Integer.parseInt(request.getParameter(""));

        NguoiDung nguoiDung = new NguoiDung(TAIKHOAN,MatKhau,TenNguoiDung,Quyen,sdt,Email,diachi,avartar,tinhtrang);
        idnd = nguoiDungDao2.adduser(nguoiDung);

        return idnd;

    }

    public String checkAndUser(HttpServletRequest request){
        int idnd = 0;
        ArrayList<NguoiDung> nguoiDungs = nguoiDungDao2.getListND();
        String usernameND = request.getParameter("username");

        for (NguoiDung nguoiDung : nguoiDungs) {
            if (usernameND.equals(nguoiDung.getTenNguoiDung())){
                idnd = adduser(request);
            }
        }

        if (idnd > 0){
            return "Đã thêm người dùng với id : " +idnd;
        }else {
            return "Thêm thất bại, tên Tài Khoản đã tồn tại";
        }
    }
}
