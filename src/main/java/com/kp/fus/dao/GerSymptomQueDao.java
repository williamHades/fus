package com.kp.fus.dao;

import java.util.Map;
import com.kp.fus.model.GerSymptomQue;

public interface GerSymptomQueDao {
    int deleteByPrimaryKey(Integer id);

    int insert(GerSymptomQue record);

    int insertSelective(GerSymptomQue record);

    GerSymptomQue selectByPrimaryKey(Integer id);

    GerSymptomQue selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(GerSymptomQue record);

    int updateByPrimaryKey(GerSymptomQue record);
}