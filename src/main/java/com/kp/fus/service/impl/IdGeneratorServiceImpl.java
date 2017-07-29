package com.kp.fus.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kp.fus.dao.IdGeneratorDao;
import com.kp.fus.model.IdGenerator;
import com.kp.fus.service.IdGeneratorService;
@Service("idGeneratorService")
public class IdGeneratorServiceImpl implements IdGeneratorService {
	@Resource
	private IdGeneratorDao idGeneratorDao;
	public int addIdGenerator(String code) {
		return idGeneratorDao.insert(code);
	}

	public int selectByCode(String code) {
		int resultId = 0;
		IdGenerator result = idGeneratorDao.selectByCode(code);
		if(null == result){
			resultId = 1;
			addIdGenerator(code);
		}else{
			resultId = result.getCodeId();
			updateIdGenerator(code);
		}
		return resultId;
	}

	public int updateIdGenerator(String code) {
		return idGeneratorDao.updateByCode(code);
	}

	public int deleteIdGenerator(String code) {
		return idGeneratorDao.deleteByCode(code);
	}

}
