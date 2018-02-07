package com.kp.fus.service.impl;
import java.util.Map;
import com.kp.fus.model.ConAnorectalManometry;
import com.kp.fus.service.ConAnorectalManometryService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.ConAnorectalManometryDao;
@Service("conAnorectalManometryService")
public class ConAnorectalManometryServiceImpl implements ConAnorectalManometryService {

	@Resource
	private ConAnorectalManometryDao conAnorectalManometryDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conAnorectalManometryDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ConAnorectalManometry record) {
		// TODO Auto-generated method stub
		return conAnorectalManometryDao.insert(record);
	}

	@Override
	public int insertSelective(ConAnorectalManometry record) {
		// TODO Auto-generated method stub
		return conAnorectalManometryDao.insertSelective(record);
	}

	@Override
	public ConAnorectalManometry selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return conAnorectalManometryDao.selectByPrimaryKey(id);
	}

	@Override
	public ConAnorectalManometry selectByQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return conAnorectalManometryDao.selectByQua(map);
	}

	@Override
	public int updateByPrimaryKeySelective(ConAnorectalManometry record) {
		// TODO Auto-generated method stub
		return conAnorectalManometryDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(ConAnorectalManometry record) {
		// TODO Auto-generated method stub
		return conAnorectalManometryDao.updateByPrimaryKey(record);
	}

}
