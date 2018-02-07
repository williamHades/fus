package com.kp.fus.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kp.fus.model.ConHealthQue;
import com.kp.fus.model.ConLifeQua;
import com.kp.fus.model.ConSelfQue;
import com.kp.fus.model.ConSymptomChn;
import com.kp.fus.model.ConSymptomQue;
import com.kp.fus.model.ConAnorectalManometry;
import com.kp.fus.service.ConAnorectalManometryService;
import com.kp.fus.service.ConHealthQueService;
import com.kp.fus.service.ConLifeQuaService;
import com.kp.fus.service.ConSelfQueService;
import com.kp.fus.service.ConSymptomChnService;
import com.kp.fus.service.ConSymptomQueService;
import com.kp.fus.util.ResponseUtil;
@Controller
@RequestMapping("/constipation")
public class ConController {
	@Resource
	private ConSymptomQueService conSymptomQueService;

	@Resource
	private ConSymptomChnService conSymptomChnService;
	
	@Resource
	private ConHealthQueService conHealthQueService;
	
	@Resource
	private ConLifeQuaService conLifeQuaService;
	
	@Resource
	private ConSelfQueService conSelfQueService;

	@Resource
	private ConAnorectalManometryService conAnorectalManometryService;
	
	private java.text.SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");
	//ConSymptomQue Find
	@RequestMapping("/findConSymptomQue")
	public void findConSymptomQue(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomQue Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			ConSymptomQue csq = conSymptomQueService.selectByQua(map);
			//System.out.println(csq.getRecordId()+" "+csq.getCreateTime());
			
			JSONObject json = new JSONObject();
			json = JSONObject.fromObject(csq);
			//JSONArray jsonArray = JSONArray.fromObject(csq);
			//System.out.println("csq : " + csq.getTicketId() + " from " +csq.getRecordId());

			System.out.println("json: " + json.toString());
			//json.put("rows", jsonArray);
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConSymptomQue Save
	@RequestMapping("/saveConSymptomQue")
	public void saveConSymptomQue(HttpServletRequest request,HttpServletResponse response,ConSymptomQue consq){
		System.out.println("constipation conSymptomQue Find ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			System.out.println(consq.getRecordId() + " ");
			if(null==consq.getPreCheckTime()||consq.getPreCheckTime().equals("")){
				System.out.println("preCheckTime null [" + consq.getPreCheckTime()+"]");
				consq.setPreCheckTime(null);
			}
			if(null==consq.getBiofeedbackStartTime()||consq.getBiofeedbackStartTime().equals("")){
				consq.setBiofeedbackStartTime(null);
			}
			if(null==consq.getBiofeedbackCourseStart()||consq.getBiofeedbackCourseStart().equals("")){
				consq.setBiofeedbackCourseStart(null);
			}
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));
				
			}
			int updateResult = conSymptomQueService.updateByPrimaryKeySelective(consq);
			if(updateResult>0){
				json.put("success", true);
			}else{
				json.put("success", false);
			}
			System.out.println("update"+consq.getTicketId()+"/"+consq.getRecordId()+" result : "+updateResult);
						
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConSymptomChn Find
	@RequestMapping("/findConSymptomChn")
	public void findConSymptomChn(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomChn Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			ConSymptomChn csq = conSymptomChnService.selectByQua(map);
			//System.out.println(csq+" ");
			
			JSONObject json = new JSONObject();
			json = JSONObject.fromObject(csq);
			//JSONArray jsonArray = JSONArray.fromObject(csq);
			//System.out.println("csq : " + csq.getTicketId() + " from " +csq.getRecordId());

			System.out.println("json: " + json.toString());
			//json.put("rows", jsonArray);
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConSymptomChn Save
	@RequestMapping("/saveConSymptomChn")
	public void saveConSymptomChn(HttpServletRequest request,HttpServletResponse response,ConSymptomChn consq){
		System.out.println("constipation conSymptomChn Find ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			System.out.println(consq.getRecordId() + " ");
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));
				int insertResult = conSymptomChnService.insertSelective(consq);
				if(insertResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("insert result : "+insertResult);
			}else{
				int updateResult = conSymptomChnService.updateByPrimaryKeySelective(consq);
				if(updateResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("update"+consq.getTicketId()+"/"+consq.getRecordId()+" result : "+updateResult);
			}						
			
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConLifeQua Find
	@RequestMapping("/findConLifeQua")
	public void findConLifeQua(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomChn Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			ConLifeQua csq = conLifeQuaService.selectByQua(map);
			if(null!=csq){
				System.out.println(csq.getRecordId()+" ");
			}
			
			JSONObject json = new JSONObject();
			json = JSONObject.fromObject(csq);
			//JSONArray jsonArray = JSONArray.fromObject(csq);
			//System.out.println("csq : " + csq.getTicketId() + " from " +csq.getRecordId());

			System.out.println("json: " + json.toString());
			//json.put("rows", jsonArray);
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConLifeQua Save
	@RequestMapping("/saveConLifeQua")
	public void saveConLifeQua(HttpServletRequest request,HttpServletResponse response,ConLifeQua consq){
		System.out.println("constipation conSymptomChn Save ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			System.out.println(consq.getRecordId() + " ");
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));
				int insertResult = conLifeQuaService.insertSelective(consq);
				if(insertResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("insert result : "+insertResult);
			}else{
				int updateResult = conLifeQuaService.updateByPrimaryKeySelective(consq);
				if(updateResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("update"+consq.getTicketId()+"/"+consq.getRecordId()+" result : "+updateResult);
			}						
			
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConSelfQue Find
	@RequestMapping("/findConSelfQue")
	public void findConSelfQue(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomChn Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			ConSelfQue csq = conSelfQueService.selectByQua(map);
			//System.out.println(csq.getRecordId()+" ");
			
			JSONObject json = new JSONObject();
			json = JSONObject.fromObject(csq);
			//JSONArray jsonArray = JSONArray.fromObject(csq);
			//System.out.println("csq : " + csq.getTicketId() + " from " +csq.getRecordId());

			System.out.println("json: " + json.toString());
			//json.put("rows", jsonArray);
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConSelfQue Save
	@RequestMapping("/saveConSelfQue")
	public void saveConSelfQue(HttpServletRequest request,HttpServletResponse response,ConSelfQue consq){
		System.out.println("constipation conSymptomChn Find ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			System.out.println(consq.getRecordId() + " ");
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));
				int insertResult = conSelfQueService.insertSelective(consq);
				if(insertResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("insert result : "+insertResult);
			}else{
				int updateResult = conSelfQueService.updateByPrimaryKeySelective(consq);
				if(updateResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("update"+consq.getTicketId()+"/"+consq.getRecordId()+" result : "+updateResult);
			}						
			
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConHealthQue Find
	@RequestMapping("/findConHealthQue")
	public void findConHealthQue(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomChn Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			ConHealthQue csq = conHealthQueService.selectByQua(map);
			//System.out.println(csq.getRecordId()+" ");
			
			JSONObject json = new JSONObject();
			json = JSONObject.fromObject(csq);
			//JSONArray jsonArray = JSONArray.fromObject(csq);
			//System.out.println("csq : " + csq.getTicketId() + " from " +csq.getRecordId());

			System.out.println("json: " + json.toString());
			//json.put("rows", jsonArray);
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConHealthQue Save
	@RequestMapping("/saveConHealthQue")
	public void saveConHealthQue(HttpServletRequest request,HttpServletResponse response,ConHealthQue consq){
		System.out.println("constipation conSymptomChn Find ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			System.out.println(consq.getRecordId() + " ");
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));
				int insertResult = conHealthQueService.insertSelective(consq);
				if(insertResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("insert result : "+insertResult);
			}else{
				int updateResult = conHealthQueService.updateByPrimaryKeySelective(consq);
				if(updateResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("update"+consq.getTicketId()+"/"+consq.getRecordId()+" result : "+updateResult);
			}						
			
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConSymptomQue Find
	@RequestMapping("/findConAnorectalManometry")
	public void findConAnorectalManometry(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomQue Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			ConAnorectalManometry csq = conAnorectalManometryService.selectByQua(map);
			
			JSONObject json = new JSONObject();
			json = JSONObject.fromObject(csq);

			System.out.println("json: " + json.toString());
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//ConSymptomQue Save
	@RequestMapping("/saveConAnorectalManometry")
	public void saveConAnorectalManometry(HttpServletRequest request,HttpServletResponse response,ConAnorectalManometry consq){
		System.out.println("constipation conSymptomQue Find ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			//System.out.println(consq.getRecordId() + " ");
			if(null==consq.getCheckDate()||consq.getCheckDate().equals("")){
				consq.setCheckDate(null);
			}
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));				
			}
			int updateResult = conAnorectalManometryService.updateByPrimaryKeySelective(consq);
			if(updateResult>0){
				json.put("success", true);
			}else{
				json.put("success", false);
			}
			System.out.println("update"+consq.getTicketId()+"/"+consq.getRecordId()+" result : "+updateResult);						
			
			ResponseUtil.write(response, json);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
