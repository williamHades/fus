package com.kp.fus.service.impl;
import java.util.Map;
import com.kp.fus.model.GerEsophagealManometry;
import com.kp.fus.service.GerEsophagealManometryService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.GerEsophagealManometryDao;
@Service("gerEsophagealManometryService")
public class GerEsophagealManometryServiceImpl implements GerEsophagealManometryService {

	@Resource
	private GerEsophagealManometryDao gerEsophagealManometryDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gerEsophagealManometryDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(GerEsophagealManometry record) {
		// TODO Auto-generated method stub
		return gerEsophagealManometryDao.insert(record);
	}

	@Override
	public int insertSelective(GerEsophagealManometry record) {
		// TODO Auto-generated method stub
		return gerEsophagealManometryDao.insertSelective(record);
	}

	@Override
	public GerEsophagealManometry selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return gerEsophagealManometryDao.selectByPrimaryKey(id);
	}

	@Override
	public GerEsophagealManometry selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return gerEsophagealManometryDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(GerEsophagealManometry record) {
		// TODO Auto-generated method stub
		return gerEsophagealManometryDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(GerEsophagealManometry record) {
		// TODO Auto-generated method stub
		return gerEsophagealManometryDao.updateByPrimaryKey(record);
	}

}
