package com.kp.fus.service.impl;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.ConHealthQueDao;
import com.kp.fus.model.ConHealthQue;
import com.kp.fus.service.ConHealthQueService;
@Service("conHealthQueService")
public class ConHealthQueServiceImpl implements ConHealthQueService {
	
	@Resource
	private ConHealthQueDao conHealthQueDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conHealthQueDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ConHealthQue record) {
		// TODO Auto-generated method stub
		return conHealthQueDao.insert(record);
	}

	@Override
	public int insertSelective(ConHealthQue record) {
		// TODO Auto-generated method stub
		return conHealthQueDao.insertSelective(record);
	}

	@Override
	public ConHealthQue selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conHealthQueDao.selectByPrimaryKey(id);
	}

	@Override
	public ConHealthQue selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return conHealthQueDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(ConHealthQue record) {
		// TODO Auto-generated method stub
		return conHealthQueDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(ConHealthQue record) {
		// TODO Auto-generated method stub
		return conHealthQueDao.updateByPrimaryKey(record);
	}

}
