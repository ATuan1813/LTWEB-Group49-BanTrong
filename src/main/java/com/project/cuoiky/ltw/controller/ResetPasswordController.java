package com.project.cuoiky.ltw.controller;

import com.project.cuoiky.ltw.service.NguoiDungService;
import com.project.cuoiky.ltw.utils.Base64Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "resetPasswordController", value = "/reset-password")
public class ResetPasswordController extends HttpServlet {

    private NguoiDungService nguoiDungService = new NguoiDungService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param =  request.getParameter("param");
        String decoder = Base64Util.decoderBase64ToString(param);

        String query = decoder.split("\\?")[1];
        Map<String, String> hm = getQueryMap(query);

        String email = hm.get("email");
        String time = hm.get("time");

        boolean validator = nguoiDungService.resetPassword(request, email, time);
        if (validator) {
            request.getRequestDispatcher("resetpass_success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("reset_password.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public static Map<String, String> getQueryMap(String query) {
        String[] params = query.split("&");
        Map<String, String> map = new HashMap<>();
        for (String param : params) {  String [] p=param.split("=");
            String name = p[0];
            if (p.length>1)  {
                String value = p[1];
                map.put(name, value);
            }
        }
        return map;
    }

}
