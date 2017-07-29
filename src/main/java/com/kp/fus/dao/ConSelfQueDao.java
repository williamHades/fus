package com.kp.fus.dao;
import java.util.Map;
import com.kp.fus.model.ConSelfQue;
public interface ConSelfQueDao {
    int deleteByPrimaryKey(Integer id);

    int insert(ConSelfQue record);

    int insertSelective(ConSelfQue record);

    ConSelfQue selectByPrimaryKey(Integer id);

    ConSelfQue selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(ConSelfQue record);

    int updateByPrimaryKey(ConSelfQue record);
}