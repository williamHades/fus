package com.kp.fus.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kp.fus.model.People;
import com.kp.fus.service.PeopleService;
import com.kp.fus.util.ResponseUtil;
@Controller
@RequestMapping("/patient")
public class PatientController {

	@Resource
	private PeopleService peopleService;
	
	@RequestMapping("/listPatient")
	public String listPatient(HttpServletRequest request,HttpServletResponse response){
		
		System.out.println("hello world ... ");
		//String result = "";
		//result = "{\"success\":true,\"pages\":3,\"code\": 0,\"msg\": \"获取成功\", \"list\": [ {	\"id\":1,\"name\": \"张三\",\"age\":21,\"createtime\": \"2017-01-10 10:42:36\" },{\"id\":2,\"name\": \"李四\", \"age\":31,\"createtime\": \"2017-01-10 10:42:36\"},{\"id\":3,\"name\": \"王五\", \"age\":23, \"createtime\": \"2017-01-10 10:42:36\"},{\"id\":4,\"name\": \"赵六\",\"age\":18,\"createtime\": \"2017-01-10 10:42:36\"}], \"count\": 57}";
		Map<String, String> map=new HashMap<String, String>();
		map.put("id", "");
		List<People> ps = peopleService.smPeoplePage(map);
		try {
			JSONObject json = new JSONObject();
			JSONArray jsonArray = JSONArray.fromObject(ps);
			System.out.println("smAssetClassicPage size : " + ps.size());

			System.out.println("Arrays ： " + jsonArray.toString());
			json.put("rows", jsonArray);
			ResponseUtil.write(response, json);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping("/patientSave")
	public String patientSave(HttpServletRequest request,HttpServletResponse response){
		
		System.out.println("patient save Including Create & Update ... ");
		//String result = "";
		//result = "{\"success\":true,\"pages\":3,\"code\": 0,\"msg\": \"获取成功\", \"list\": [ {	\"id\":1,\"name\": \"张三\",\"age\":21,\"createtime\": \"2017-01-10 10:42:36\" },{\"id\":2,\"name\": \"李四\", \"age\":31,\"createtime\": \"2017-01-10 10:42:36\"},{\"id\":3,\"name\": \"王五\", \"age\":23, \"createtime\": \"2017-01-10 10:42:36\"},{\"id\":4,\"name\": \"赵六\",\"age\":18,\"createtime\": \"2017-01-10 10:42:36\"}], \"count\": 57}";
		Map<String, String> map=new HashMap<String, String>();
		map.put("id", "");
		List<People> ps = peopleService.smPeoplePage(map);
		try {
			JSONObject json = new JSONObject();
			JSONArray jsonArray = JSONArray.fromObject(ps);
			System.out.println("smAssetClassicPage size : " + ps.size());

			System.out.println("Arrays ： " + jsonArray.toString());
			json.put("rows", jsonArray);
			ResponseUtil.write(response, json);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
