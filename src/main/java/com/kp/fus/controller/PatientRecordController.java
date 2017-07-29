package com.kp.fus.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.kp.fus.model.PatientRecord;
import com.kp.fus.service.IdGeneratorService;
import com.kp.fus.service.PatientRecordService;
import com.kp.fus.util.PageInfo;
import com.kp.fus.util.ResponseUtil;
@Controller
@RequestMapping("/patient")
public class PatientRecordController {
	@Resource
	private PatientRecordService patientRecordService;

	@Resource
	private IdGeneratorService idGeneratorService;
	
	private java.text.SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");
	
	@RequestMapping("/listPatientRecord")
	public void listPatientRecord(HttpServletRequest request,HttpServletResponse response){
		System.out.println("patientRecord list ...");
		//��������
		try {
			String page = request.getParameter("page");
			String rows = request.getParameter("nums");
			String searchPatientName = new String(request.getParameter("searchPatientName").getBytes("iso8859-1"),"utf-8");
			String searchPatientSex = new String(request.getParameter("searchPatientSex").getBytes("iso8859-1"),"utf-8");
			String searchPatientAge = new String(request.getParameter("searchPatientAge").getBytes("iso8859-1"),"utf-8");
			String searchPatientNo = new String(request.getParameter("searchPatientNo").getBytes("iso8859-1"),"utf-8");
			String searchPatientGroups = new String(request.getParameter("searchPatientGroups").getBytes("iso8859-1"),"utf-8");
			String searchCreateTimeStart = new String(request.getParameter("searchCreateTimeStart").getBytes("iso8859-1"),"utf-8");
			String searchCreateTimeEnd = new String(request.getParameter("searchCreateTimeEnd").getBytes("iso8859-1"),"utf-8");

			System.out.println("searchPatientName : " + searchPatientName);
			System.out.println("searchPatientSex : " + searchPatientSex);
			System.out.println("searchPatientAge : " + searchPatientAge);
			System.out.println("searchPatientNo : " + searchPatientNo);
			System.out.println("searchPatientGroups : " + searchPatientGroups);	
			System.out.println("searchCreateTimeStart : " + searchCreateTimeStart);
			System.out.println("searchCreateTimeEnd : " + searchCreateTimeEnd);			
		
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("id", "");
			map.put("searchPatientName", searchPatientName);
			map.put("searchPatientSex", searchPatientSex);
			map.put("searchPatientAge", searchPatientAge);
			map.put("searchPatientNo", searchPatientNo);
			map.put("searchPatientGroups", searchPatientGroups);
			map.put("searchCreateTimeStart", searchCreateTimeStart);
			map.put("searchCreateTimeEnd", searchCreateTimeEnd);
	
			//��ҳ����
			PageInfo<PatientRecord> patientRecordPage = new PageInfo<PatientRecord>();
			Integer pageSize=Integer.parseInt(rows);
			patientRecordPage.setPageSize(pageSize);
			
			// �ڼ�ҳ
			String pageIndex = page;
			if (pageIndex == null || pageIndex == "") { pageIndex = "1"; }
			patientRecordPage.setPageIndex((Integer.parseInt(pageIndex) - 1) * pageSize);
			// ȡ����ҳ��
			int patientRecordCount=patientRecordService.patientRecordCount(null);
			patientRecordPage.setCount(patientRecordCount);
			map.put("pageIndex", patientRecordPage.getPageIndex());
			map.put("pageSize", patientRecordPage.getPageSize());
			
			List<PatientRecord> prs = patientRecordService.patientRecordPage(map);
		
			JSONObject json = new JSONObject();
			JSONArray jsonArray = JSONArray.fromObject(prs);
			System.out.println("smAssetClassicPage size : " + prs.size());

			System.out.println("Arrays �� " + jsonArray.toString());
			json.put("rows", jsonArray);
			json.put("total", patientRecordCount);
			json.put("pages", patientRecordCount/10+1);
			ResponseUtil.write(response, json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/findPatientRecord")
	public PatientRecord findPatientRecord(HttpServletRequest request,HttpServletResponse response){
		System.out.println("patientRecord list ...");
		PatientRecord pr = null ; 
		//��������
		try {
			String prid = new String(request.getParameter("pid").getBytes("iso8859-1"),"utf-8");	
		
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("prid", prid);
			pr = patientRecordService.selectById(map);
			
			JSONObject json = new JSONObject();
			json = JSONObject.fromObject(pr);
			System.out.println("Select PatientRecord : " + pr.getTicketNo() + json.toString());
			ResponseUtil.write(response, json);
		}catch(Exception e){
			System.out.println("��ѯ����");
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/savePatientRecord")
	public String savePatientRecord(HttpServletRequest request,HttpServletResponse response,PatientRecord pr){
		System.out.println("patientRecord save ...");
		System.out.println("record " + pr.getPatientName());
		Date dt = new java.util.Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		String timeNo = sdf.format(dt);
		timeNo = timeNo.substring(0, timeNo.length()-2);
		String ri  ="0000";
		JSONObject json = new JSONObject();
		
		if(null==pr.getCreateTime()||"".equals(pr.getCreateTime())){
			pr.setCreateTime(formatter.format(dt));
			pr.setUpdateTime(formatter.format(dt));
			pr.setOperator("");
			//made ticket Id
			if(Integer.parseInt(pr.getPatientGroup())==1){
				int i = idGeneratorService.selectByCode("con");
				ri = ri + i;
				pr.setTicketNo("C" + timeNo + ri.substring(ri.length()-5, ri.length()));
			}else{
				int i = idGeneratorService.selectByCode("ger");
				ri = ri + i;
				pr.setTicketNo("G" + timeNo + ri.substring(ri.length()-5, ri.length()));
			}
			
			int createResult = patientRecordService.insertPatientRecord(pr);
			if(createResult>0){
				json.put("success", true);
			}else{
				json.put("success", false);
			}
			System.out.println("insert ... " + createResult);
		}else{
			int updateResult = patientRecordService.updateById(pr);
			if(updateResult>0){
				json.put("success", true);
			}else{
				json.put("success", false);
			}
			System.out.println("update ... " + updateResult);
		}
		try {
			System.out.println(json.toString());
			ResponseUtil.write(response, json);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
