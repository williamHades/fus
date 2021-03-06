package com.kp.fus.dao;

import java.util.Map;

import com.kp.fus.model.ConLifeQua;

public interface ConLifeQuaDao {
    int deleteByPrimaryKey(Integer id);

    int insert(ConLifeQua record);

    int insertSelective(ConLifeQua record);

    ConLifeQua selectByPrimaryKey(Integer id);

    ConLifeQua selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(ConLifeQua record);

    int updateByPrimaryKey(ConLifeQua record);
}