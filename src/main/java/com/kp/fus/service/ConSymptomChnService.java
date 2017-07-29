package com.kp.fus.service;
import java.util.Map;
import com.kp.fus.model.ConSymptomChn;
public interface ConSymptomChnService {
    int deleteByPrimaryKey(Integer id);

    int insert(ConSymptomChn record);

    int insertSelective(ConSymptomChn record);

    ConSymptomChn selectByPrimaryKey(Integer id);

    ConSymptomChn selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(ConSymptomChn record);

    int updateByPrimaryKey(ConSymptomChn record);
}
