package com.kp.fus.dao;

import com.kp.fus.model.IdGenerator;

public interface IdGeneratorDao {

    int insert(String code);
    
    int updateByCode(String code);

    IdGenerator selectByCode(String code);
    
    int deleteByCode(String code);
}