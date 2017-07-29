package com.kp.fus.dao;
import java.util.HashMap;
import java.util.List;

import com.kp.fus.model.Patient;
public interface PatientDao {

    int insertPatient(Patient record);

    int insertPatientD(Patient record);

    int deleteById(Integer id);

    int updateById(Patient record);
    
    int updateByIdD(Patient record);

	int patientCount(HashMap<String, String> map);

	List<Patient> patientPage(HashMap<String, String> map);
	
    Patient selectById(Integer id);
    
    List<Patient> selectByQua(HashMap<String, String> map);
}