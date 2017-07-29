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
import com.kp.fus.model.GerQScore;
import com.kp.fus.model.GerSymptomChn;
import com.kp.fus.model.GerSymptomQue;
import com.kp.fus.service.GerQScoreService;
import com.kp.fus.service.GerSymptomChnService;
import com.kp.fus.service.GerSymptomQueService;
import com.kp.fus.util.ResponseUtil;
@Controller
@RequestMapping("/gerd")
public class GerController {
	@Resource
	private GerSymptomQueService gerSymptomQueService;

	@Resource
	private GerSymptomChnService gerSymptomChnService;

	@Resource
	private GerQScoreService gerQScoreService;
	
	private java.text.SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");
	
	//GerSymptomQue Find
	@RequestMapping("/findGerSymptomQue")
	public void findGerSymptomQue(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomQue Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			GerSymptomQue csq = gerSymptomQueService.selectByQua(map);
			if(null!=csq){
				System.out.println(csq.getRecordId()+" "+csq.getCreateTime());
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
	//GerSymptomQue Save
	@RequestMapping("/saveConSymptomQue")
	public void saveSymptomQue(HttpServletRequest request,HttpServletResponse response,GerSymptomQue consq){
		System.out.println("constipation conSymptomQue Find ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			System.out.println(consq.getRecordId() + " ");
			/*if(null==consq.getPreCheckTime()||consq.getPreCheckTime().equals("")){
				System.out.println("preCheckTime null [" + consq.getPreCheckTime()+"]");
				consq.setPreCheckTime(null);
			}
			if(null==consq.getBiofeedbackStartTime()||consq.getBiofeedbackStartTime().equals("")){
				consq.setBiofeedbackStartTime(null);
			}
			if(null==consq.getBiofeedbackCourseStart()||consq.getBiofeedbackCourseStart().equals("")){
				consq.setBiofeedbackCourseStart(null);
			}*/
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));
				int insertResult = gerSymptomQueService.insertSelective(consq);
				if(insertResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("insert result : "+insertResult);
			}else{
				int updateResult = gerSymptomQueService.updateByPrimaryKeySelective(consq);
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
	//GerSymptomChn Find
	@RequestMapping("/findGerSymptomChn")
	public void findGerSymptomChn(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomChn Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			GerSymptomChn csq = gerSymptomChnService.selectByQua(map);
			System.out.println(csq.getRecordId()+" ");
			
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
	//GerSymptomChn Save
	@RequestMapping("/saveGerSymptomChn")
	public void saveGerSymptomChn(HttpServletRequest request,HttpServletResponse response,GerSymptomChn consq){
		System.out.println("constipation conSymptomChn Find ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			System.out.println(consq.getRecordId() + " ");
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));
				int insertResult = gerSymptomChnService.insertSelective(consq);
				if(insertResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("insert result : "+insertResult);
			}else{
				int updateResult = gerSymptomChnService.updateByPrimaryKeySelective(consq);
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
	//GerQScore Find
	@RequestMapping("/findGerQScore")
	public void findGerQScore(HttpServletRequest request,HttpServletResponse response){
		System.out.println("constipation conSymptomChn Find ... ");
		try{
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");
			System.out.println("PRID " + prid);
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("recordId", prid);
			GerQScore csq = gerQScoreService.selectByQua(map);
			System.out.println(csq.getRecordId()+" ");
			
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
	//GerQScore Save
	@RequestMapping("/saveGerQScoreQua")
	public void saveGerQScoreQua(HttpServletRequest request,HttpServletResponse response,GerQScore consq){
		System.out.println("constipation conSymptomChn Find ... ");
		Date dt = new Date();
		JSONObject json = new JSONObject();
		try{
			System.out.println(consq.getRecordId() + " ");
			if(null==consq.getCreateTime()||consq.getCreateTime().equals("")){
				
				consq.setCreateTime(formatter.format(dt));
				consq.setUpdateTime(formatter.format(dt));
				int insertResult = gerQScoreService.insertSelective(consq);
				if(insertResult>0){
					json.put("success", true);
				}else{
					json.put("success", false);
				}
				System.out.println("insert result : "+insertResult);
			}else{
				int updateResult = gerQScoreService.updateByPrimaryKeySelective(consq);
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
	
}
