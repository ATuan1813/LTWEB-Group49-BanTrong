package com.project.cuoiky.ltw.service;

import com.project.cuoiky.ltw.database.NguoiDungDao;
import com.project.cuoiky.ltw.model.NguoiDung;
import com.project.cuoiky.ltw.utils.Base64Util;
import com.project.cuoiky.ltw.utils.Md5Util;
import com.project.cuoiky.ltw.utils.RandomUtil;
import com.project.cuoiky.ltw.utils.SendMailUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;

public class NguoiDungService {

    private NguoiDungDao nguoiDungDao = new NguoiDungDao();

    public NguoiDung findTaiKhoan(String taiKhoan) {
        return nguoiDungDao.findTaiKhoan(taiKhoan);
    }

    public NguoiDung findEmail(String email) {
        return nguoiDungDao.findEmail(email);
    }

    public int register(String link, String taiKhoan, String matKhau) {
        int result = 0;
        try {
            NguoiDung nd = new NguoiDung();
            nd.setTaiKhoan(taiKhoan);
            nd.setEmail(taiKhoan);
            nd.setMatKhau(Md5Util.hashMD5(matKhau));
            nd.setQuyen(1);
            nd.setTinhtrang(1);

            result = nguoiDungDao.register(nd);

            if (result > 0) {
                HashMap<String, String> hashMapContent = new HashMap<>();
                hashMapContent.put("TITLE", "Đăng Ký Tài Khoản");
                hashMapContent.put("CONTENT", "Xin chào " + nd.getEmail() + ", chúc mừng bạn đã đăng ký tài khoản thành công. " +
                        "Vui lòng nhấn vào nút đăng nhập bên dưới để đăng nhập.");
                hashMapContent.put("BUTTON", "Đăng Nhập");
                hashMapContent.put("LINK", link);

                // send mail
                SendMailUtil.send(taiKhoan, "Shop Drum - Đăng Ký Tài Khoản", hashMapContent);
            }
        } catch (Exception ex) {
        }

        return result;
    }

    public int registerWithSocial(NguoiDung nd) {
        int result = 0;
        try {
            result = nguoiDungDao.registerWithSocial(nd);
        } catch (Exception ex) {
        }

        return result;
    }

    public void forgotPassword(NguoiDung nguoiDung, String url) {
        try {
            Date dnow = new Date();

            String param = "?email=" + nguoiDung.getEmail() + "&time=" + dnow.getTime() + "&";
            String encoder = Base64Util.encoderStringToBase64(param);
            String hostUrl = url + "/reset-password?param=" + encoder;

            HashMap<String, String> hashMapContent = new HashMap<>();
            hashMapContent.put("TITLE", "Quên Mật Khẩu");
            hashMapContent.put("CONTENT", "Vui lòng nhấn Xác Nhận để được cấp mật khẩu mới");
            hashMapContent.put("BUTTON", "Xác Nhận");
            hashMapContent.put("LINK", hostUrl);

            // send mail
            SendMailUtil.send(nguoiDung.getEmail(), "Shop Drum - Quên Mật Khẩu", hashMapContent);
        } catch (Exception ex) {
        }
    }

    public boolean resetPassword(HttpServletRequest request,  String email, String time) {
        try {
            NguoiDung nguoiDung = findEmail(email);
            if (nguoiDung != null) {
                Date currentTime = new Date();
                // cong them 30 phut
                Date afterAdding30Mins = new Date(Long.parseLong(time) + (30 * 60 * 1000));
                if (currentTime.after(afterAdding30Mins)) {
                    request.setAttribute("taiKhoan_err", "Đã hết thời gian xác thực tài khoản!");
                } else {
                    // tao mat khau ngau nhien 6 ky tu
                    String password = RandomUtil.generatePassword(6);
                    nguoiDung.setMatKhau(Md5Util.hashMD5(password));
                    nguoiDungDao.update(nguoiDung);

                    String url = request.getScheme() + "://" +   // "http" + "://
                            request.getServerName() +       // "myhost"
                            ":" +                           // ":"
                            request.getServerPort()     // "8080"
                            + "/login";

                    HashMap<String, String> hashMapContent = new HashMap<>();
                    hashMapContent.put("TITLE", "Khôi Phục Mật Khẩu");
                    hashMapContent.put("CONTENT", "Mật khẩu của bạn đã được khôi phục, vui lòng sử dụng mật khẩu bên dưới để đăng nhập");
                    hashMapContent.put("BUTTON", password);
                    hashMapContent.put("LINK", url);

                    // gui mail
                    SendMailUtil.send(nguoiDung.getEmail(), "Shop Drum - Khôi Phục Mật Khẩu", hashMapContent);

                    return true;
                }
            }
        } catch (Exception ex) {
        }

        return false;
    }

}
