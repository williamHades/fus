package com.kp.fus.service.impl;
import java.util.Map;

import javax.annotation.Resource;

import com.kp.fus.model.ConSymptomQue;
import com.kp.fus.service.ConSymptomQueService;

import org.springframework.stereotype.Service;

import com.kp.fus.dao.ConSymptomQueDao;
@Service("conSymptomQueService")
public class ConSymptomQueServiceImpl implements ConSymptomQueService {
	@Resource
	private ConSymptomQueDao conSymptomQueDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(ConSymptomQue record) {
		return conSymptomQueDao.insert(record);
	}

	@Override
	public int insertSelective(ConSymptomQue record) {
		// TODO Auto-generated method stub
		return conSymptomQueDao.insertSelective(record);
	}

	@Override
	public ConSymptomQue selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public ConSymptomQue selectByQua(Map<String,Object> map) {
		return conSymptomQueDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(ConSymptomQue record) {
		return conSymptomQueDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(ConSymptomQue record) {
		return conSymptomQueDao.updateByPrimaryKey(record);
	}


}
