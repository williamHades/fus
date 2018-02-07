package com.kp.fus.service;
import java.util.Map;
import com.kp.fus.model.GerEsophagealManometry;
public interface GerEsophagealManometryService {

    int deleteByPrimaryKey(Integer id);

    int insert(GerEsophagealManometry record);

    int insertSelective(GerEsophagealManometry record);

    GerEsophagealManometry selectByPrimaryKey(Integer id);

    GerEsophagealManometry selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(GerEsophagealManometry record);

    int updateByPrimaryKey(GerEsophagealManometry record);
}
