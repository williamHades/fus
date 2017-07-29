package com.kp.fus.service;
import java.util.Map;
import com.kp.fus.model.GerQScore;
public interface GerQScoreService {
    int deleteByPrimaryKey(Integer id);

    int insert(GerQScore record);

    int insertSelective(GerQScore record);

    GerQScore selectByPrimaryKey(Integer id);

    GerQScore selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(GerQScore record);

    int updateByPrimaryKey(GerQScore record);
}
