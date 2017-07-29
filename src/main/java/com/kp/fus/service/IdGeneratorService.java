package com.kp.fus.service;

public interface IdGeneratorService {
	//only add id items if item is not exit.
	public int addIdGenerator(String code);
	//select id items
	public int selectByCode(String code);
	//update add items id +1
	public int updateIdGenerator(String code);
	
	//delete
	public int deleteIdGenerator(String code);
}
