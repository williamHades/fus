package com.kp.fus.service;
import java.util.HashMap;
import java.util.List;

import com.kp.fus.model.Patient;
public interface PatientService {

	public int insertPatient(Patient patient);

	public int insertPatientD(Patient patient);

	public int deleteById(Integer patientId);

	public int updateById(Patient patient);

	public int updateByIdD(Patient patient);

	public int patientCount(HashMap<String, String> map);

	public List<Patient> patientPage(HashMap<String, String> map);
	
	public Patient selectById(Integer patientId);

	public List<Patient> selectByIdQua(HashMap<String, String> map);

}
