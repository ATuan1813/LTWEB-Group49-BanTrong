package com.project.cuoiky.ltw.database;

import com.project.cuoiky.ltw.mapper.CategorySP1Mapper;
import com.project.cuoiky.ltw.mapper.CategorySP2Mapper;
import com.project.cuoiky.ltw.model.PhanLoaiCap1;
import com.project.cuoiky.ltw.model.PhanLoaiCap2;

import java.util.ArrayList;

public class CategoryDao extends AbsDao{
    //get category level 1
    public ArrayList<PhanLoaiCap1> getListPLC1(){
        ArrayList<PhanLoaiCap1> phanLoaiCap1s = new ArrayList<PhanLoaiCap1>();
        String sql= "SELECT * FROM PhanLoaiCap1";

        phanLoaiCap1s = queryHasId(sql, new CategorySP1Mapper());

        return phanLoaiCap1s;
    }

    //get category level 2
    public ArrayList<PhanLoaiCap2> getListPLC2(){
        ArrayList<PhanLoaiCap2> phanLoaiCap2s = new ArrayList<PhanLoaiCap2>();
        String sql= "SELECT * FROM PhanLoaiCap2";

        phanLoaiCap2s = queryHasId(sql, new CategorySP2Mapper());

        return phanLoaiCap2s;
    }
}
