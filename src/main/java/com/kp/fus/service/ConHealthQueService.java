package com.kp.fus.service;
import java.util.Map;
import com.kp.fus.model.ConHealthQue;
public interface ConHealthQueService {
    int deleteByPrimaryKey(Integer id);

    int insert(ConHealthQue record);

    int insertSelective(ConHealthQue record);

    ConHealthQue selectByPrimaryKey(Integer id);

    ConHealthQue selectByQua(Map<String,Object> map);
    
    int updateByPrimaryKeySelective(ConHealthQue record);

    int updateByPrimaryKey(ConHealthQue record);
}
