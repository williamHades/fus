package com.kp.fus.dao;
import java.util.List;
import java.util.Map;

import com.kp.fus.model.PatientRecord;
public interface PatientRecordDao {

    int insertPatientRecord(PatientRecord record);

    int insertPatientRecordD(PatientRecord record);

    int deleteById(Integer id);

    int updateById(PatientRecord record);
    
    int updateByIdD(PatientRecord record);

	int patientRecordCount(Map<String, Object> map);

	List<PatientRecord> patientRecordPage(Map<String, Object> map);
	
    PatientRecord selectById(Map<String, Object> map);
    
    List<PatientRecord>  selectByQua(Map<String, Object> map);
}