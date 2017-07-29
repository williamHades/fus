package com.kp.fus.service.impl;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.GerSymptomQueDao;
import com.kp.fus.model.GerSymptomQue;
import com.kp.fus.service.GerSymptomQueService;
@Service("gerSymptomQueService")
public class GerSymptomQueServiceImpl implements GerSymptomQueService {
	@Resource
	private GerSymptomQueDao gerSymptomQueDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gerSymptomQueDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(GerSymptomQue record) {
		// TODO Auto-generated method stub
		return gerSymptomQueDao.insert(record);
	}

	@Override
	public int insertSelective(GerSymptomQue record) {
		// TODO Auto-generated method stub
		return gerSymptomQueDao.insertSelective(record);
	}

	@Override
	public GerSymptomQue selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gerSymptomQueDao.selectByPrimaryKey(id);
	}

	@Override
	public GerSymptomQue selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return gerSymptomQueDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(GerSymptomQue record) {
		// TODO Auto-generated method stub
		return gerSymptomQueDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(GerSymptomQue record) {
		// TODO Auto-generated method stub
		return gerSymptomQueDao.updateByPrimaryKeySelective(record);
	}

}
