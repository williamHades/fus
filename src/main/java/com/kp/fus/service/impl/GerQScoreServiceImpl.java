package com.kp.fus.service.impl;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.GerQScoreDao;
import com.kp.fus.model.GerQScore;
import com.kp.fus.service.GerQScoreService;
@Service("gerQScoreService")
public class GerQScoreServiceImpl implements GerQScoreService {
	@Resource
	private GerQScoreDao gerQScoreDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gerQScoreDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(GerQScore record) {
		// TODO Auto-generated method stub
		return gerQScoreDao.insert(record);
	}

	@Override
	public int insertSelective(GerQScore record) {
		// TODO Auto-generated method stub
		return gerQScoreDao.insertSelective(record);
	}

	@Override
	public GerQScore selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gerQScoreDao.selectByPrimaryKey(id);
	}

	@Override
	public GerQScore selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return gerQScoreDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(GerQScore record) {
		// TODO Auto-generated method stub
		return gerQScoreDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(GerQScore record) {
		// TODO Auto-generated method stub
		return gerQScoreDao.updateByPrimaryKey(record);
	}

}
