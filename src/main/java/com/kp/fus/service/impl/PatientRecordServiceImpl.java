package com.kp.fus.service.impl;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.PatientRecordDao;
import com.kp.fus.model.PatientRecord;
import com.kp.fus.service.PatientRecordService;

@Service("patientRecordService")
public class PatientRecordServiceImpl implements PatientRecordService {


	@Resource
	private PatientRecordDao patientRecordDao;
	
	@Override
	public int insertPatientRecord(PatientRecord patientRecord) {
		// TODO Auto-generated method stub
		return patientRecordDao.insertPatientRecord(patientRecord);
	}

	@Override
	public int insertPatientRecordD(PatientRecord patientRecord) {
		// TODO Auto-generated method stub
		return patientRecordDao.insertPatientRecordD(patientRecord);
	}

	@Override
	public int deleteById(Integer patientRecordid) {
		// TODO Auto-generated method stub
		return patientRecordDao.deleteById(patientRecordid);
	}

	@Override
	public int updateById(PatientRecord patientRecord) {
		// TODO Auto-generated method stub
		return patientRecordDao.updateById(patientRecord);
	}

	@Override
	public int updateByIdD(PatientRecord patientRecord) {
		// TODO Auto-generated method stub
		return patientRecordDao.updateByIdD(patientRecord);
	}

	@Override
	public int patientRecordCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return patientRecordDao.patientRecordCount(map);
	}

	@Override
	public List<PatientRecord> patientRecordPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return patientRecordDao.patientRecordPage(map);
	}

	@Override
	public PatientRecord selectById(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return patientRecordDao.selectById(map);
	}

	@Override
	public List<PatientRecord> selectByIdQua(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return patientRecordDao.selectByQua(map);
	}



}
