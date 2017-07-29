package com.kp.fus.service;
import java.util.Map;
import com.kp.fus.model.GerSymptomChn;
public interface GerSymptomChnService {
    int deleteByPrimaryKey(Integer id);

    int insert(GerSymptomChn record);

    int insertSelective(GerSymptomChn record);

    GerSymptomChn selectByPrimaryKey(Integer id);

    GerSymptomChn selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(GerSymptomChn record);

    int updateByPrimaryKey(GerSymptomChn record);
}
