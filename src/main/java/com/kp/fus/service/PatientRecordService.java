package com.kp.fus.service;
import java.util.List;
import java.util.Map;

import com.kp.fus.model.PatientRecord;
public interface PatientRecordService {

	public int insertPatientRecord(PatientRecord patientRecord);

	public int insertPatientRecordD(PatientRecord patientRecord);

	public int deleteById(Integer patientRecordid);

	public int updateById(PatientRecord patientRecord);

	public int updateByIdD(PatientRecord patientRecord);
	
	public int patientRecordCount(Map<String, Object> map);

	public List<PatientRecord> patientRecordPage(Map<String, Object> map);
	
	public PatientRecord selectById(Map<String, Object> map);

	public List<PatientRecord> selectByIdQua(Map<String, Object> map);

}
