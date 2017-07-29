package com.kp.fus.service;

import java.util.Map;

import com.kp.fus.model.ConSymptomQue;
public interface ConSymptomQueService {
    int deleteByPrimaryKey(Integer id);

    int insert(ConSymptomQue record);

    int insertSelective(ConSymptomQue record);

    ConSymptomQue selectByPrimaryKey(Integer id);

    ConSymptomQue selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(ConSymptomQue record);

    int updateByPrimaryKey(ConSymptomQue record);
}
