package com.kp.fus.service.impl;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.ConSelfQueDao;
import com.kp.fus.model.ConSelfQue;
import com.kp.fus.service.ConSelfQueService;
@Service("conSelfQueService")
public class ConSelfQueServiceImpl implements ConSelfQueService {

	@Resource
	private ConSelfQueDao conSelfQueDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conSelfQueDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ConSelfQue record) {
		// TODO Auto-generated method stub
		return conSelfQueDao.insert(record);
	}

	@Override
	public int insertSelective(ConSelfQue record) {
		// TODO Auto-generated method stub
		return conSelfQueDao.insertSelective(record);
	}

	@Override
	public ConSelfQue selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conSelfQueDao.selectByPrimaryKey(id);
	}

	@Override
	public ConSelfQue selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return conSelfQueDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(ConSelfQue record) {
		// TODO Auto-generated method stub
		return conSelfQueDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(ConSelfQue record) {
		// TODO Auto-generated method stub
		return conSelfQueDao.updateByPrimaryKey(record);
	}

}
