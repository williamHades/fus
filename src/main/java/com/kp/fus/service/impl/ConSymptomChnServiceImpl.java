package com.kp.fus.service.impl;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.ConSymptomChnDao;
import com.kp.fus.model.ConSymptomChn;
import com.kp.fus.service.ConSymptomChnService;
@Service("conSymptomChnService")
public class ConSymptomChnServiceImpl implements ConSymptomChnService {

	@Resource
	private ConSymptomChnDao conSymptomChnDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(ConSymptomChn record) {
		// TODO Auto-generated method stub
		return conSymptomChnDao.insert(record);
	}

	@Override
	public int insertSelective(ConSymptomChn record) {
		// TODO Auto-generated method stub
		return conSymptomChnDao.insertSelective(record);
	}

	@Override
	public ConSymptomChn selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conSymptomChnDao.selectByPrimaryKey(id);
	}

	@Override
	public ConSymptomChn selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return conSymptomChnDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(ConSymptomChn record) {
		// TODO Auto-generated method stub
		return conSymptomChnDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(ConSymptomChn record) {
		// TODO Auto-generated method stub
		return conSymptomChnDao.updateByPrimaryKey(record);
	}

}
