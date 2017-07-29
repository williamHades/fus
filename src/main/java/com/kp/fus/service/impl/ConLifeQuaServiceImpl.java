package com.kp.fus.service.impl;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.ConLifeQuaDao;
import com.kp.fus.model.ConLifeQua;
import com.kp.fus.service.ConLifeQuaService;
@Service("conLifeQuaService")
public class ConLifeQuaServiceImpl implements ConLifeQuaService {

	@Resource
	private ConLifeQuaDao conLifeQuaDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conLifeQuaDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ConLifeQua record) {
		// TODO Auto-generated method stub
		return conLifeQuaDao.insert(record);
	}

	@Override
	public int insertSelective(ConLifeQua record) {
		// TODO Auto-generated method stub
		return conLifeQuaDao.insertSelective(record);
	}

	@Override
	public ConLifeQua selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conLifeQuaDao.selectByPrimaryKey(id);
	}

	@Override
	public ConLifeQua selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return conLifeQuaDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(ConLifeQua record) {
		// TODO Auto-generated method stub
		return conLifeQuaDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(ConLifeQua record) {
		// TODO Auto-generated method stub
		return conLifeQuaDao.updateByPrimaryKey(record);
	}

}
