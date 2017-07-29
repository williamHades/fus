<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>便秘患者一般情况及临床症状调查表</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/javascript/jquery.1.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/fancybox/fancyboxmin.js"></script>
		
		<script type="text/javascript">
        //获取url中的参数
        var prid = "";
	        function getUrlParam(name) {
	            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
	            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
	            if (r != null) return unescape(r[2]); return null; //返回参数值
	        };
        	$(function(){
        		//获取patientRecord Id
        		var pid =  getUrlParam("pid");
        		//后台获取
        		$.getJSON("${pageContext.request.contextPath}/constipation/findConSymptomQue.action",{pid:pid},function(data){
        			//set from fields value
        			for (var key in data){
        				$("#"+key).val("");
        			}
        			for (var key in data){
        				alert(key + " - " + data[key])
        				if(key =="cbasic"){
        				}else if(key =="patientSex"){
        					$("input[name=patientSex][value="+data.patientSex+"]").prop("checked",true);//value=34的radio被选中
        				}else if(key =="patientEducation"){
        					$("input[name=patientEducation][value="+data.patientEducation+"]").prop("checked",true);//value=34的radio被选中
        				}else if(key =="patientMarried"){
        					$("input[name=patientMarried][value="+data.patientMarried+"]").prop("checked",true);//value=34的radio被选中
        				}else if(key =="patientChild"){
        					$("input[name=patientChild][value="+data.patientChild+"]").prop("checked",true);//value=34的radio被选中
        				}else if(key =="patientEconomy"){
        					$("input[name=patientEconomy][value="+data.patientEconomy+"]").prop("checked",true);//value=34的radio被选中
        				}else{
        					$("#"+key).val(data[key]);
        				}
				    }
        			$("#recordId").val(pid);
        		});
        	});
        </script>
	</head>
	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>便秘患者一般情况及临床症状调查表</legend>
			</fieldset>            
			<form class="layui-form" action="">
				<div class="layui-form-item" style="float:left;">
					<div class="layui-inline">
						<label class="layui-form-label">单号ticket_id：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="ticketId" name="ticketId" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">单号：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="recordId" name="recordId" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">创建时间：</label>
						<div class="layui-input-inline" style="width: 300px;">
							<input type="text" id="createTime" name="createTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">更新时间：</label>
						<div class="layui-input-inline" style="width: 300px;">
							<input type="text" id="updateTime" name="updateTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">单号：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="recordId" name="recordId" class="layui-input">
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">病历号：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="patientNo" name="patientNo" placeholder="请输入病历号" autocomplete="off" class="layui-input">
						</div>
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">性别：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="patientSex" name="patientSex" placeholder="请输入性别" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-label layui-form-label1" style="width: 100px;">年龄：</div>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="number"  id="patientAge" name="patientAge" placeholder="请输入年龄" autocomplete="off" class="layui-input" lay-verify="number" >
						</div>
					</div>
					<div class="layui-inline">
                        <div class="layui-form-label layui-form-label1" style="width: 100px;">职业：</div>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="patientCareer" name="patientCareer" placeholder="请输入职业" autocomplete="off" class="layui-input">
						</div>
                        <div class="layui-form-label layui-form-label1" style="width: 100px;">联系电话：</div>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="patientContact" name="patientContact" placeholder="请输入电话" autocomplete="off" class="layui-input" lay-verify="number" >
						</div>
					</div>
				</div>
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">现住址：</label>
					<div class="layui-input-block">
						<input type="text" id="siteHome" name="siteHome" lay-verify="add" autocomplete="off" placeholder="请输入住址" class="layui-input">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">工作单位：</label>
					<div class="layui-input-block">
						<input type="text" id="siteWork" name="siteWork" lay-verify="add" autocomplete="off" placeholder="请输入工作单位" class="layui-input">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">教育程度：</label>
					<div class="layui-input-block">
						<input type="radio" id="patientEducation" name="patientEducation" value="1" title="小学">
						<input type="radio" id="patientEducation" name="patientEducation" value="2" title="初中">
						<input type="radio" id="patientEducation" name="patientEducation" value="3" title="高中或中专">
                        <input type="radio" id="patientEducation" name="patientEducation" value="4" title="大专">
						<input type="radio" id="patientEducation" name="patientEducation" value="5" title="大学及以上" checked="">
					</div>
				</div>
                
                <div class="layui-form-item" style="width:98%">
					<div class="layui-inline">
						<label class="layui-form-label">婚姻状况：</label>
						<div class="layui-input-inline" style="width:250px">
							<input type="radio" id="patientMarried" name="patientMarried" value="1" title="已婚" checked="">
                        	<input type="radio" id="patientMarried" name="patientMarried" value="2" title="未婚">
							<input type="radio" id="patientMarried" name="patientMarried" value="3" title="离婚">
						</div>
						<label class="layui-form-label layui-form-label1" style="text-align:right;">子女：</label>
						<div class="layui-input-inline">
							<input type="radio" id="patientChild" name="patientChild" value="1" title="有" checked="">
                        	<input type="radio" id="patientChild" name="patientChild" value="2" title="无">
						</div>
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">家庭经济情况：</label>
					<div class="layui-input-block">
						<input type="radio" id="patientEconomy" name="patientEconomy" value="1" title="很好" checked="">
						<input type="radio" id="patientEconomy" name="patientEconomy" value="2" title="好">
						<input type="radio" id="patientEconomy" name="patientEconomy" value="3" title="一般">
                        <input type="radio" id="patientEconomy" name="patientEconomy" value="4" title="差">
						<input type="radio" id="patientEconomy" name="patientEconomy" value="5" title="很差">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">医疗费用支付方式：</label>
					<div class="layui-input-block">
						<input type="radio" id="patientPayMode" name="patientPayMode" value="1" title="公费" checked="">
						<input type="radio" id="patientPayMode" name="patientPayMode" value="2" title="医保">
						<input type="radio" id="patientPayMode" name="patientPayMode" value="3" title="自费">
                        <input type="radio" id="patientPayMode" name="patientPayMode" value="4" title="其他">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">症状：</label>
					<div class="layui-input-block">
						<label class="layui-form-label layui-form-label1">腹胀：</label>
                        <input type="radio" id="ventosity" name="ventosity" value="1" title="无">
						<input type="radio" id="ventosity" name="ventosity" value="2" title="轻度" checked="">
						<input type="radio" id="ventosity" name="ventosity" value="3" title="较明显">
                        <input type="radio" id="ventosity" name="ventosity" value="4" title="明显">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label"></label>
					<div class="layui-input-block">
                        <label class="layui-form-label layui-form-label1" style="width: 100px;">大便性状：</label>
                        <input type="radio" id="stoolShape" name="stoolShape" value="1" title="1级">
						<input type="radio" id="stoolShape" name="stoolShape" value="2" title="2级" checked="">
						<input type="radio" id="stoolShape" name="stoolShape" value="3" title="3级">
                        <input type="radio" id="stoolShape" name="stoolShape" value="4" title="4级">
                        <input type="radio" id="stoolShape" name="stoolShape" value="5" title="5级">
						<input type="radio" id="stoolShape" name="stoolShape" value="6" title="6级">
                        <input type="radio" id="stoolShape" name="stoolShape" value="7" title="7级">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label"></label>
					<div class="layui-input-block">
                        <label class="layui-form-label layui-form-label1" style="width: 100px;">排便费力：</label>
                        <input type="radio" id="stoolHard" name="stoolHard" value="1" title="无">
						<input type="radio" id="stoolHard" name="stoolHard" value="2" title="较费力" checked="">
						<input type="radio" id="stoolHard" name="stoolHard" value="3" title="费力">
                        <input type="radio" id="stoolHard" name="stoolHard" value="4" title="需手法帮助">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label"></label>
					<div class="layui-input-block">
                        <label class="layui-form-label layui-form-label1" style="width: 100px;">排便次数：</label>
                        <input type="radio" id="stoolTimes" name="stoolTimes" value="1" title="1次/天">
						<input type="radio" id="stoolTimes" name="stoolTimes" value="2" title="1次/2-3天" checked="">
						<input type="radio" id="stoolTimes" name="stoolTimes" value="3" title="1次/4-5天">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label"></label>
					<div class="layui-input-block">
                        <label class="layui-form-label layui-form-label1" style="width: 100px;">排便不尽：</label>
                        <input type="radio" id="stoolEndless" name="stoolEndless" value="1" title="无">
						<input type="radio" id="stoolEndless" name="stoolEndless" value="2" title="轻度" checked="">
						<input type="radio" id="stoolEndless" name="stoolEndless" value="3" title="较明显">
                        <input type="radio" id="stoolEndless" name="stoolEndless" value="4" title="明显">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">肛门直肠阻塞感：</label>
					<div class="layui-input-block">
                        <input type="radio" id="anusBlock" name="anusBlock" value="1" title="无">
						<input type="radio" id="anusBlock" name="anusBlock" value="2" title="轻度" checked="">
						<input type="radio" id="anusBlock" name="anusBlock" value="3" title="较明显">
                        <input type="radio" id="anusBlock" name="anusBlock" value="4" title="明显">
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">病程（症状持续时间）：</label>
						<div class="layui-input-inline" style="width: 80px;">
							<input type="number" id="illnessLast" name="illnessLast" autocomplete="off" class="layui-input" lay-verify="number" >
						</div>
						<div class="layui-form-label" style="text-align:left;">个月</div>
					</div>
				</div>
                
                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label" style="width: 100px;">其他疾病：</label>
					<div class="layui-input-block">
						<textarea id="otherIllness" name="otherIllness" placeholder="请输入内容" class="layui-textarea"></textarea>
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">做过哪些检查（诊断及时间）：</label>
					<div class="layui-input-block">
                        <input type="radio" id="preCheck"  name="preCheck" value="1" title="肠镜" checked>
						<input type="radio" id="preCheck"  name="preCheck" value="2" title="结肠CT">
						<input type="radio" id="preCheck"  name="preCheck" value="3" title="下消化道造影">
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label"></label>
                        <div class="layui-form-label layui-form-label1" style="width: 100px;">检查时间：</div>
                        <div class="layui-input-inline" style="width: 300px;">
                        <input type="text" id="preCheckTime" name="preCheckTime" placeholder="检查时间" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"">
						</div>
					</div>
				</div>
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label"></label>
						<div class="layui-form-label layui-form-label1" style="width: 100px;">检查结论：</div>
						<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="preCheckResult" name="preCheckResult" placeholder="结论" autocomplete="off" class="layui-input">
						</div>
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">是否使用泻药（药名及时间）：</label>
					<div class="layui-input-block">
                        <input type="radio" id="isCathartics" name="isCathartics" value="1" title="是" checked="">
						<input type="radio" id="isCathartics" name="isCathartics" value="2" title="否">
					</div>
				</div>
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label"></label>
                        <div class="layui-form-label layui-form-label1" style="width: 100px;">药名：</div>
                        <div class="layui-input-inline" style="width: 300px;">
                        	<input type="text" id="catharticsName" name="catharticsName" placeholder="药名" autocomplete="off" class="layui-input">
						</div>
                        <div class="layui-form-label layui-form-label1" style="width: 100px;">时间：</div>
                        <div class="layui-input-inline" style="width: 80px;">
                        	<input type="number" id="catharticsTime" name="catharticsTime" autocomplete="off" class="layui-input" lay-verify="number" ></div>
                        <div class="layui-form-label" style="text-align:left;">个月</div>
						
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">饮食习惯：</label>
                    <div class="layui-form-label layui-form-label1" style="width: 100px;">饮食量：</div>
					<div class="layui-input-block">
                        <input type="radio" id="foodIntake" name="foodIntake" value="1" title="少" checked>
						<input type="radio" id="foodIntake" name="foodIntake" value="2" title="一般">
						<input type="radio" id="foodIntake" name="foodIntake" value="3" title="较多">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">改善便秘知识的了解：</label>
					<div class="layui-input-block">
                        <input type="radio" id="changeKnowledge" name="changeKnowledge" value="1" title="很了解" checked>
						<input type="radio" id="changeKnowledge" name="changeKnowledge" value="2" title="一般了解">
						<input type="radio" id="changeKnowledge" name="changeKnowledge" value="3" title="不了解">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">嗜好：</label>
                    <div class="layui-form-label layui-form-label1" style="width: 100px;">吸烟：</div>
					<div class="layui-input-block">
                        <input type="radio" id="isSmoke" name="isSmoke" value="1" title="是" checked>
						<input type="radio" id="isSmoke" name="isSmoke" value="2" title="否">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label"></label>
                    <div class="layui-form-label layui-form-label1"></div>
					<div class="layui-input-block">
                        <div class="layui-input-inline" style="width: 80px;">
                        	<input type="number" id="smokeAmount" name="smokeAmount" autocomplete="off" class="layui-input" lay-verify="number" ></div>
                        <div class="layui-form-label" style="text-align:left;">支/天</div>
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">睡眠：</label>
					<div class="layui-input-block">
                        <input type="radio" id="sleepStatus" name="sleepStatus" value="1" title="好" checked>
						<input type="radio" id="sleepStatus" name="sleepStatus" value="2" title="一般">
						<input type="radio" id="sleepStatus" name="sleepStatus" value="3" title="差">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">运动（有氧运动30min以上）：</label>
					<div class="layui-input-block">
                        <input type="radio" id="sportStatus" name="sportStatus" value="1" title="每天" checked>
						<input type="radio" id="sportStatus" name="sportStatus" value="2" title="2-3次/周">
						<input type="radio" id="sportStatus" name="sportStatus" value="3" title="偶尔">
						<input type="radio" id="sportStatus" name="sportStatus" value="4" title="不运动">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label" style="width: 100px;">压力（工作生活学习）：</label>
					<div class="layui-input-block">
                        <input type="radio" id="pressureStatus" name="pressureStatus" value="1" title="小" checked>
						<input type="radio" id="pressureStatus" name="pressureStatus" value="2" title="一般">
						<input type="radio" id="pressureStatus" name="pressureStatus" value="3" title="较大">
						<input type="radio" id="pressureStatus" name="pressureStatus" value="4" title="很大">
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">球囊排出试验：</label>
						<div class="layui-input-inline" style="width: 80px;">
                        	<input type="number" id="balloonTestTime" name="balloonTestTime" autocomplete="off" class="layui-input" lay-verify="number" ></div>
                        <div class="layui-form-label" style="text-align:left;">秒</div>
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">生物反馈：</label>
                        <div class="layui-form-label layui-form-label1" style="width: 100px;">开始时间：</div>
						<div class="layui-input-inline" style="width: 160px;">
							<input type="text" id="biofeedbackStartTime" name="biofeedbackStartTime" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"">
						</div>
						<div class="layui-form-label layui-form-label1" style="width: 100px;">疗程：</div>
						<div class="layui-input-inline" style="width: 160px;">
							<input type="text" id="biofeedbackCourse" name="biofeedbackCourse" autocomplete="off" class="layui-input">
						</div>
                        <div class="layui-form-label" style="width: 100px;">疗程（起效时间）：</div>
						<div class="layui-input-inline" style="width: 160px;">
							<input type="text" id="biofeedbackCourseStart" name="biofeedbackCourseStart" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"">
						</div>
					</div>
				</div>
                
                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label" style="width: 100px;">备注记录：</label>
					<div class="layui-input-block">
						<textarea id="remark" name="remark" placeholder="备注记录" class="layui-textarea"></textarea>
					</div>
				</div>
                
		        <!--  form fields List  end-->
		        <hr size="1" color="CCCCCC" width="100%">
		        <div class="layui-input-block" aling="center">   
	                 <button class="layui-btn" lay-filter="demo1" lay-submit="">保存</button>  
	                 <button class="layui-btn layui-btn-primary" type="reset">关闭</button>  
	            </div> 
			</form>
		</div>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					laydate = layui.laydate;

				//创建一个编辑器
				var editIndex = layedit.build('LAY_demo_editor');
				//自定义验证规则
				form.verify({
					title: function(value) {
						if(value.length < 5) {
							return '标题至少得5个字符啊';
						}
					},
					pass: [/(.+){6,12}$/, '密码必须6到12位'],
					content: function(value) {
						layedit.sync(editIndex);
					}
				});
				//监听提交
				form.on('submit(demo1)', function(data) {
					$.post("${pageContext.request.contextPath}/constipation/saveConSymptomQue.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("临床症状调查表提交成功！");
							alert(parent.name);
							parent.parent.deleteTab('临床症状调查表');
						}else{
							layer.alert("提交失败，请联系管理员！");
						}
					});
					return false;
				});
			});
		</script>
	</body>
</html>