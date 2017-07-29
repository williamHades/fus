package com.kp.fus.service;

import java.util.List;
import java.util.Map;

import com.kp.fus.model.People;


public interface PeopleService {
	public People findById(String SMPeopleId);
	/**
	 * 登入
	 * @return
	 */
	public People smPeopleLogin(Map<String, String> map);
	
	/**'
	 * 分页查询用户
	 * @param map
	 * @return
	 */
	public List<People> smPeoplePage(Map<String, String> map);
	
	public int smPeopleCount(Map<String, Object> map);
	
	/**
	 * 批量删除用户
	 * @param id
	 * @return
	 */
	public int deleteSMPeople(List<String> id);
	
	/**
	 * 修改用户
	 * @param SMPeople
	 * @return
	 */
	public int updateSMPeople(People SMPeople);
	
	/**
	 * 新增用户
	 * @param SMPeople
	 * @return
	 */
	public int addSMPeople(People SMPeople);
}
