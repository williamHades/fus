package com.kp.fus.service.impl;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.kp.fus.dao.PatientDao;
import com.kp.fus.model.Patient;
import com.kp.fus.service.PatientService;

@Service("patientService")
public class PatientServiceImpl implements PatientService {

	@Resource
	private PatientDao patientDao;
	
	@Override
	public int insertPatient(Patient patient) {
		// TODO Auto-generated method stub
		return patientDao.insertPatient(patient);
	}

	@Override
	public int insertPatientD(Patient patient) {
		// TODO Auto-generated method stub
		return patientDao.insertPatientD(patient);
	}

	@Override
	public int deleteById(Integer patientId) {
		// TODO Auto-generated method stub
		return patientDao.deleteById(patientId);
	}

	@Override
	public int updateById(Patient patient) {
		// TODO Auto-generated method stub
		return patientDao.updateById(patient);
	}

	@Override
	public int updateByIdD(Patient patient) {
		// TODO Auto-generated method stub
		return patientDao.updateByIdD(patient);
	}

	@Override
	public int patientCount(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return patientDao.patientCount(map);
	}

	@Override
	public List<Patient> patientPage(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return patientDao.patientPage(map);
	}

	@Override
	public Patient selectById(Integer id) {
		// TODO Auto-generated method stub
		return patientDao.selectById(id);
	}

	@Override
	public List<Patient> selectByIdQua(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return patientDao.selectByQua(map);
	}

}
