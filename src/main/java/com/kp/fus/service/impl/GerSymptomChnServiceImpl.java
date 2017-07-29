package com.kp.fus.service.impl;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.GerSymptomChnDao;
import com.kp.fus.model.GerSymptomChn;
import com.kp.fus.service.GerSymptomChnService;
@Service("gerSymptomChnService")
public class GerSymptomChnServiceImpl implements GerSymptomChnService {
	@Resource
	private GerSymptomChnDao gerSymptomChnDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gerSymptomChnDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(GerSymptomChn record) {
		// TODO Auto-generated method stub
		return gerSymptomChnDao.insert(record);
	}

	@Override
	public int insertSelective(GerSymptomChn record) {
		// TODO Auto-generated method stub
		return gerSymptomChnDao.insertSelective(record);
	}

	@Override
	public GerSymptomChn selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gerSymptomChnDao.selectByPrimaryKey(id);
	}

	@Override
	public GerSymptomChn selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return gerSymptomChnDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(GerSymptomChn record) {
		// TODO Auto-generated method stub
		return gerSymptomChnDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(GerSymptomChn record) {
		// TODO Auto-generated method stub
		return gerSymptomChnDao.updateByPrimaryKey(record);
	}

}
