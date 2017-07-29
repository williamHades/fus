package com.kp.fus.controller;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kp.fus.model.People;
import com.kp.fus.service.PeopleService;
import com.kp.fus.util.ResponseUtil;
/**
 * 用户管理
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/people")
public class PeopleController {
	@Resource
	private PeopleService peopleService;
		
	//@Resource
	//private SMGroupService smGroupService;

	//private java.text.SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");
	@RequestMapping("/peopleLogin")
	public String SMPeopleLogin(HttpServletResponse response,HttpServletRequest request) throws Exception{
		Map<String, String> map=new HashMap<String, String>();
		map.put("userName", request.getParameter("userName"));
		map.put("passWord", request.getParameter("password"));
		//map.put("groupId", request.getParameter("groupId"));
		//SMPeopleShip SMPeopleShip=smPeopleShipService.userLogin(map);
		People peopleShip=peopleService.smPeopleLogin(map);
		JSONObject result=new JSONObject();
		if(peopleShip==null){
			result.put("success", false);
			result.put("errorInfo", "用户名或者密码错误！");
		}else{
			System.out.println("SMPeople Size : " + " " + peopleShip.getFirstName());
			//List<SMPGR> smPGR = smPGRService.selectSMPGR(SMPeopleShip.getUserName());
			//System.out.println("SMPGR size : " + smPGR.size());
			result.put("success", true);
			request.getSession().setAttribute("peopleShip", peopleShip);
			//request.getSession().setAttribute("smPGR", smPGR);
		}
		ResponseUtil.write(response, result);
		return null;
	}
}
