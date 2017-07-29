package com.kp.fus.dao;

import java.util.List;
import java.util.Map;

import com.kp.fus.model.People;

public interface PeopleDao {
    int deleteSMPeople(List<String> id);

    int addSMPeople(People record);

    int insertSelective(People record);

    List<People> smPeoplePage(Map<String, String> map);
    
    int smPeopleCount(Map<String, Object> map);
    
    People userLogin(Map<String, String> map);

    int updateByPrimaryKeySelective(People record);
    
    int updateSMPeople(People record);
}
