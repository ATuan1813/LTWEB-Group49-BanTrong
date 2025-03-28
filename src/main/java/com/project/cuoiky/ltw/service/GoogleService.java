package com.project.cuoiky.ltw.service;

import java.io.IOException;

import com.project.cuoiky.ltw.dto.GooglePojo;
import com.project.cuoiky.ltw.utils.ConstantUtil;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class GoogleService {

    public static String getToken(final String code) throws ClientProtocolException, IOException {
        String response = Request.Post(ConstantUtil.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", ConstantUtil.GOOGLE_CLIENT_ID)
                        .add("client_secret", ConstantUtil.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri",ConstantUtil.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", ConstantUtil.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }
    public static GooglePojo getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = ConstantUtil.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
        GooglePojo googlePojo = new Gson().fromJson(response, GooglePojo.class);
        System.out.println(googlePojo);
        return googlePojo;
    }

}
