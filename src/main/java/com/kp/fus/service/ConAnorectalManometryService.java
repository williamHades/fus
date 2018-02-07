package com.kp.fus.service;
import java.util.Map;
import com.kp.fus.model.ConAnorectalManometry;
public interface ConAnorectalManometryService {

    int deleteByPrimaryKey(Integer id);

    int insert(ConAnorectalManometry record);

    int insertSelective(ConAnorectalManometry record);

    ConAnorectalManometry selectByPrimaryKey(Integer id);

    ConAnorectalManometry selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(ConAnorectalManometry record);

    int updateByPrimaryKey(ConAnorectalManometry record);
}
