package com.kp.fus.dao;
import java.util.Map;
import com.kp.fus.model.ConSymptomQue;

public interface ConSymptomQueDao {
    int deleteByPrimaryKey(Integer id);

    int insert(ConSymptomQue record);

    int insertSelective(ConSymptomQue record);

    ConSymptomQue selectByPrimaryKey(Integer id);

    ConSymptomQue selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(ConSymptomQue record);

    int updateByPrimaryKey(ConSymptomQue record);
}