package com.kp.fus.service.impl;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kp.fus.dao.PeopleDao;
import com.kp.fus.model.People;
import com.kp.fus.service.PeopleService;

@Service("peopleService")
public class PeopleServiceImpl implements PeopleService {
	@Resource
	private PeopleDao smPeopleDao;
	
	public People findById(String SMPeopleId) {
		//return smPeopleDao.findById(SMPeopleId);
		return null;
	}
	public People smPeopleLogin(Map<String, String> map) {
		return smPeopleDao.userLogin(map);
	}
	public List<People> smPeoplePage(Map<String, String> map) {
		return smPeopleDao.smPeoplePage(map);
	}
	public int smPeopleCount(Map<String, Object> map) {
		return smPeopleDao.smPeopleCount(map);
	}
	public int deleteSMPeople(List<String> ids) {
		return smPeopleDao.deleteSMPeople(ids);
	}
	public int updateSMPeople(People SMPeople) {
		return smPeopleDao.updateSMPeople(SMPeople);
	}
	public int addSMPeople(People SMPeople) {
		return smPeopleDao.addSMPeople(SMPeople);
	}
}
