package com.kp.fus.service;

import java.util.List;
import java.util.Map;

import com.kp.fus.model.People;


public interface PeopleService {
	public People findById(String SMPeopleId);
	/**
	 * ����
	 * @return
	 */
	public People smPeopleLogin(Map<String, String> map);
	
	/**'
	 * ��ҳ��ѯ�û�
	 * @param map
	 * @return
	 */
	public List<People> smPeoplePage(Map<String, String> map);
	
	public int smPeopleCount(Map<String, Object> map);
	
	/**
	 * ����ɾ���û�
	 * @param id
	 * @return
	 */
	public int deleteSMPeople(List<String> id);
	
	/**
	 * �޸��û�
	 * @param SMPeople
	 * @return
	 */
	public int updateSMPeople(People SMPeople);
	
	/**
	 * �����û�
	 * @param SMPeople
	 * @return
	 */
	public int addSMPeople(People SMPeople);
}
