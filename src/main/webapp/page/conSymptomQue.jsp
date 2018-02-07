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
        		initConSQueRecord(pid);
        		//后台获取
        	});
        </script>
	</head>
	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>便秘患者一般情况及临床症状调查表</legend>
			</fieldset>            
			<form class="layui-form" action="">
				<div class="layui-form-item" style="float:left; display:none;">
					<div class="layui-inline">
						<label class="layui-form-label">单号ticket_id：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="ticketId" name="ticketId" class="layui-input">
						</div>
					</div>
					<!-- <div class="layui-inline">
						<label class="layui-form-label">单号：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="recordId" name="recordId" class="layui-input">
						</div>
					</div> -->
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
						<label class="layui-form-label layui-form-label2">单号：</label>
						<div class="layui-input-inline">
							<input type="text" id="recordId" name="recordId" class="layui-input">
						</div>
						<label class="layui-form-label">病历号：</label>
						<div class="layui-input-inline">
							<input type="text" id="patientNo" name="patientNo" placeholder="请输入病历号" class="layui-input">
						</div>
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label  layui-form-label2">姓名：</label>
						<div class="layui-input-inline">
	                        <input type="text" id="patientName" name="patientName" placeholder="请输入姓名" class="layui-input" >
						</div>
						<label class="layui-form-label">性别：</label>
						<div class="layui-input-inline">
	                        <input type="hidden" id="patientSex" name="patientSex" value="0" 	title="男"  >
	                        <input type="radio" id="patientSex" name="patientSex" value="1" 	title="男"  >
	                        <input type="radio" id="patientSex" name="patientSex" value="2" 	title="女"  >
						</div>
						<div class="layui-form-label">年龄：</div>
						<div class="layui-input-inline">
							<input type="number"  id="patientAge" name="patientAge" placeholder="请输入年龄" class="layui-input" lay-verify="number" >
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-inline">
                        <div class="layui-form-label layui-form-label2">职业：</div>
						<div class="layui-input-inline">
							<input type="text" id="patientCareer" name="patientCareer" placeholder="请输入职业" autocomplete="off" class="layui-input">
						</div>
                        <div class="layui-form-label">联系电话：</div>
						<div class="layui-input-inline">
							<input type="text" id="patientContact" name="patientContact" placeholder="请输入电话" autocomplete="off" class="layui-input" lay-verify="number" >
						</div>
					</div>
				</div>
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">现住址：</label>
					<div class="layui-input-block" style="margin-left:240px;">
						<input type="text" id="siteHome" name="siteHome" lay-verify="add" autocomplete="off" placeholder="请输入住址" class="layui-input">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">工作单位：</label>
					<div class="layui-input-block" style="margin-left:240px;">
						<input type="text" id="siteWork" name="siteWork" lay-verify="add" autocomplete="off" placeholder="请输入工作单位" class="layui-input">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">教育程度：</label>
					<div class="layui-input-block">
						<input type="hidden" id="patientEducation" name="patientEducation" value="0" title="小学"  >
						<input type="radio" id="patientEducation" name="patientEducation" value="1" title="小学"  >
						<input type="radio" id="patientEducation" name="patientEducation" value="2" title="初中"  >
						<input type="radio" id="patientEducation" name="patientEducation" value="3" title="高中或中专"  >
                        <input type="radio" id="patientEducation" name="patientEducation" value="4" title="大专"  >
						<input type="radio" id="patientEducation" name="patientEducation" value="5" title="大学及以上"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label layui-form-label2">婚姻状况：</label>
						<div class="layui-input-inline" style="width:340px;">
							<input type="hidden" id="patientMarried" name="patientMarried" value="0" title="已婚"  >
							<input type="radio" id="patientMarried" name="patientMarried" value="1" title="已婚"  >
                        	<input type="radio" id="patientMarried" name="patientMarried" value="2" title="未婚"  >
							<input type="radio" id="patientMarried" name="patientMarried" value="3" title="离异"  >
							<input type="radio" id="patientMarried" name="patientMarried" value="4" title="丧偶"  >
						</div>
						<label class="layui-form-label layui-form-label1" style="text-align:right;">子女：</label>
						<div class="layui-input-inline">
							<input type="hidden" id="patientChild" name="patientChild" value="0" title="有"  >
							<input type="radio" id="patientChild" name="patientChild" value="1" title="有"  >
                        	<input type="radio" id="patientChild" name="patientChild" value="2" title="无"  >
						</div>
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">家庭经济情况：</label>
					<div class="layui-input-block">
						<input type="hidden" id="patientEconomy" name="patientEconomy" value="0" title="很好"  >
						<input type="radio" id="patientEconomy" name="patientEconomy" value="1" title="很好"  >
						<input type="radio" id="patientEconomy" name="patientEconomy" value="2" title="好"  >
						<input type="radio" id="patientEconomy" name="patientEconomy" value="3" title="一般"  >
                        <input type="radio" id="patientEconomy" name="patientEconomy" value="4" title="差"  >
						<input type="radio" id="patientEconomy" name="patientEconomy" value="5" title="很差"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">医疗费用支付方式：</label>
					<div class="layui-input-block">
						<input type="hidden" id="patientPayMode" name="patientPayMode" value="0" title="公费"  >
						<input type="radio" id="patientPayMode" name="patientPayMode" value="1" title="公费"  >
						<input type="radio" id="patientPayMode" name="patientPayMode" value="2" title="医保"  >
						<input type="radio" id="patientPayMode" name="patientPayMode" value="3" title="自费"  >
                        <input type="radio" id="patientPayMode" name="patientPayMode" value="4" title="其他"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">症状：</label>
					<div class="layui-input-block">
						<label class="layui-form-label layui-form-label1">腹胀：</label>
                        <input type="hidden" id="ventosity" name="ventosity" value="0" title="无">
                        <input type="radio" id="ventosity" name="ventosity" value="1" title="无">
						<input type="radio" id="ventosity" name="ventosity" value="2" title="轻度"  >
						<input type="radio" id="ventosity" name="ventosity" value="3" title="较明显"  >
                        <input type="radio" id="ventosity" name="ventosity" value="4" title="明显"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2"></label>
					<div class="layui-input-block">
                        <label class="layui-form-label layui-form-label1">大便性状：</label>
                        <input type="hidden" id="stoolShape" name="stoolShape" value="0" title="1级"  >
                        <input type="radio" id="stoolShape" name="stoolShape" value="1" title="1级"  >
						<input type="radio" id="stoolShape" name="stoolShape" value="2" title="2级"  >
						<input type="radio" id="stoolShape" name="stoolShape" value="3" title="3级"  >
                        <input type="radio" id="stoolShape" name="stoolShape" value="4" title="4级"  >
                        <input type="radio" id="stoolShape" name="stoolShape" value="5" title="5级"  >
						<input type="radio" id="stoolShape" name="stoolShape" value="6" title="6级"  >
                        <input type="radio" id="stoolShape" name="stoolShape" value="7" title="7级"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2"></label>
					<div class="layui-input-block">
                        <label class="layui-form-label layui-form-label1">排便费力：</label>
                        <input type="hidden" id="stoolHard" name="stoolHard" value="0" title="无"  >
                        <input type="radio" id="stoolHard" name="stoolHard" value="1" title="无"  >
						<input type="radio" id="stoolHard" name="stoolHard" value="2" title="较费力"  >
						<input type="radio" id="stoolHard" name="stoolHard" value="3" title="费力"  >
                        <input type="radio" id="stoolHard" name="stoolHard" value="4" title="需手法帮助"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2"></label>
					<div class="layui-input-block">
                        <label class="layui-form-label layui-form-label1">排便次数：</label>
                        <input type="hidden" id="stoolTimes" name="stoolTimes" value="0" title="1次/天"  >
                        <input type="radio" id="stoolTimes" name="stoolTimes" value="1" title="1次/天"  >
						<input type="radio" id="stoolTimes" name="stoolTimes" value="2" title="1次/2-3天"  >
						<input type="radio" id="stoolTimes" name="stoolTimes" value="3" title="1次/4-5天"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2"></label>
					<div class="layui-input-block">
                        <label class="layui-form-label layui-form-label1">排便不尽：</label>
                        <input type="hidden" id="stoolEndless" name="stoolEndless" value="0" title="无"  >
                        <input type="radio" id="stoolEndless" name="stoolEndless" value="1" title="无"  >
						<input type="radio" id="stoolEndless" name="stoolEndless" value="2" title="轻度"  >
						<input type="radio" id="stoolEndless" name="stoolEndless" value="3" title="较明显"  >
                        <input type="radio" id="stoolEndless" name="stoolEndless" value="4" title="明显"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">肛门直肠阻塞感：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="anusBlock" name="anusBlock" value="0" title="无"  >
                        <input type="radio" id="anusBlock" name="anusBlock" value="1" title="无"  >
						<input type="radio" id="anusBlock" name="anusBlock" value="2" title="轻度"  >
						<input type="radio" id="anusBlock" name="anusBlock" value="3" title="较明显"  >
                        <input type="radio" id="anusBlock" name="anusBlock" value="4" title="明显"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label layui-form-label2">病程（症状持续时间）：</label>
						<div class="layui-input-inline">
							<input type="number" id="illnessLast" name="illnessLast" autocomplete="off" class="layui-input" lay-verify="number" >
						</div>
						<div class="layui-form-label" style="text-align:left;">个月</div>
					</div>
				</div>
                
                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label layui-form-label2">其他疾病：</label>
					<div class="layui-input-block" style="margin-left:240px;">
						<textarea id="otherIllness" name="otherIllness" placeholder="请输入内容" class="layui-textarea"></textarea>
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">做过哪些检查（诊断及时间）：</label>
					<div class="layui-input-inline" style="width:320px;">
                        <input type="hidden" id="preCheck"  name="preCheck" value="0" title="肠镜"  >
                        <input type="radio" id="preCheck"  name="preCheck" value="1" title="肠镜"  >
						<input type="radio" id="preCheck"  name="preCheck" value="2" title="结肠CT"  >
						<input type="radio" id="preCheck"  name="preCheck" value="3" title="下消化道造影"  >
					</div>
					<label class="layui-form-label">检查时间：</label>
                    <div class="layui-input-inline">
                        <input type="text" id="preCheckTime" name="preCheckTime" placeholder="检查时间" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
					</div>
					<label class="layui-form-label">检查结论：</label>
                    <div class="layui-input-inline">
                        <input type="text" id="preCheckResult" name="preCheckResult" placeholder="检查结论" autocomplete="off" class="layui-input" >
					</div>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">是否使用泻药（药名及时间）：</label>
					<div class="layui-input-inline">
                        <input type="hidden" id="isCathartics" name="isCathartics" value="0" title="是"  >
                        <input type="radio" id="isCathartics" name="isCathartics" value="1" title="是"  >
						<input type="radio" id="isCathartics" name="isCathartics" value="2" title="否"  >
					</div>
					<label class="layui-form-label" style="width:50px; padding-left:0;">药名：</label>
                    <div class="layui-input-inline">
                        <input type="text" id="catharticsName" name="catharticsName" placeholder="药名" autocomplete="off" class="layui-input">
					</div>
					<label class="layui-form-label">时间：</label>
                    <div class="layui-input-inline">
                        <input type="number" id="catharticsTime" name="catharticsTime" autocomplete="off" class="layui-input" lay-verify="number" >
					</div>
					<div class="layui-form-label" style="text-align:left;">个月</div>
				</div>
                
               <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">饮食习惯：</label>
                    <div class="layui-form-label" style="width:60px; padding-left:0;">饮食量：</div>
					<div class="layui-input-block">
                        <input type="hidden" id="foodIntake" name="foodIntake" value="0" title="少"  >
                        <input type="radio" id="foodIntake" name="foodIntake" value="1" title="少"  >
						<input type="radio" id="foodIntake" name="foodIntake" value="2" title="一般"  >
						<input type="radio" id="foodIntake" name="foodIntake" value="3" title="较多"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">改善便秘知识的了解：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="changeKnowledge" name="changeKnowledge" value="0" title="很了解"  >
						<input type="radio" id="changeKnowledge" name="changeKnowledge" value="2" title="一般了解"  >
						<input type="radio" id="changeKnowledge" name="changeKnowledge" value="3" title="不了解"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">嗜好：</label>
					<label class="layui-form-label" style="width:42px; padding-left:0">吸烟：</label>
					<div class="layui-input-inline">                        
                        <input type="hidden" id="isCathartics" name="isCathartics" value="0" title="是"  >
                        <input type="radio" id="isCathartics" name="isCathartics" value="1" title="是"  >
						<input type="radio" id="isCathartics" name="isCathartics" value="2" title="否"  >
					</div>
					<div class="layui-inline">
                        <div class="layui-input-inline">
                        	<input type="number" id="smokeAmount" name="smokeAmount" autocomplete="off" class="layui-input" lay-verify="number" >
						</div>
                        <div class="layui-form-label" style="width:32px;">支/天</div>
					</div>
				</div>
               <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">睡眠：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="sleepStatus" name="sleepStatus" value="0" title="好"  >
                        <input type="radio" id="sleepStatus" name="sleepStatus" value="1" title="好"  >
						<input type="radio" id="sleepStatus" name="sleepStatus" value="2" title="一般"  >
						<input type="radio" id="sleepStatus" name="sleepStatus" value="3" title="差"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">运动（有氧运动30min以上）：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="sportStatus" name="sportStatus" value="0" title="每天"  >
                        <input type="radio" id="sportStatus" name="sportStatus" value="1" title="每天"  >
						<input type="radio" id="sportStatus" name="sportStatus" value="2" title="2-3次/周"  >
						<input type="radio" id="sportStatus" name="sportStatus" value="3" title="偶尔"  >
						<input type="radio" id="sportStatus" name="sportStatus" value="4" title="不运动"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">压力（工作生活学习）：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="pressureStatus" name="pressureStatus" value="0" title="小"  >
                        <input type="radio" id="pressureStatus" name="pressureStatus" value="1" title="小"  >
						<input type="radio" id="pressureStatus" name="pressureStatus" value="2" title="一般"  >
						<input type="radio" id="pressureStatus" name="pressureStatus" value="3" title="较大"  >
						<input type="radio" id="pressureStatus" name="pressureStatus" value="4" title="很大"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label layui-form-label2">球囊排出试验：</label>
						<div class="layui-input-inline">
                        	<input type="number" id="balloonTestTime" name="balloonTestTime" autocomplete="off" class="layui-input" lay-verify="number" ></div>
                        <div class="layui-form-label" style="text-align:left;">秒</div>
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label layui-form-label2">生物反馈：</label>
                        <div class="layui-form-label" style="width: 70px; padding-left:0">开始时间：</div>
						<div class="layui-input-inline" style="width: 160px;">
							<input type="text" id="biofeedbackStartTime" name="biofeedbackStartTime" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"">
						</div>
						<div class="layui-input-inline" style="width: 80px;">
							<input type="number" id="biofeedbackCourse" name="biofeedbackCourse" autocomplete="off" class="layui-input" lay-verify="number" >
						</div>
						<div class="layui-form-label " style="width: 80px;">次/周：</div>
                        <div class="layui-form-label" style="width: 50px;">治疗</div>
						<div class="layui-input-inline" style="width: 80px;">
							<input type="number" id="biofeedbackCourseStart" name="biofeedbackCourseStart" autocomplete="off" class="layui-input" lay-verify="number" >
						</div>
                        <div class="layui-form-label" style="width: 80px;">次后见效</div>
					</div>
				</div>
                
                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label layui-form-label2">备注记录：</label>
					<div class="layui-input-block" style="margin-left:240px;">
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
							//alert(parent.name);
							parent.parent.deleteTab('临床症状调查表');
						}else{
							layer.alert("提交失败，请联系管理员！");
						}
					});
					return false;
				});
			});
			function initConSQueRecord(pid){
				layui.use(['form', 'layedit', 'laydate','element'], function() {
					var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					element = layui.element();
					laydate = layui.laydate;						
        		//后台获取
				$.getJSON("${pageContext.request.contextPath}/constipation/findConSymptomQue.action",{pid:pid},function(data){
        			//set from fields value
        			for (var key in data){
        				$("#"+key).val("");
        			}
        			for (var key in data){
        				if(key =="cbasic"){
        				}else if(key =="patientSex"){
        					$("input[name=patientSex][value="+data.patientSex+"]").prop("checked",true);//value=34的radio被选中
        				}else if(key =="patientEducation"){
        					if(data.patientEducation!=""){
        						$("input[name=patientEducation][value="+data.patientEducation+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="patientMarried"){
        					if(data.patientMarried!=""){
        						$("input[name=patientMarried][value="+data.patientMarried+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="patientChild"){
        					if(data.patientChild!=""){
        						$("input[name=patientChild][value="+data.patientChild+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="patientEconomy"){
        					if(data.patientEconomy!=""){
        						$("input[name=patientEconomy][value="+data.patientEconomy+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="patientPayMode"){
        					if(data.patientPayMode!=""){
        						$("input[name=patientPayMode][value="+data.patientPayMode+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="ventosity"){
        					if(data.ventosity!=""){
        						$("input[name=ventosity][value="+data.ventosity+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="stoolShape"){
        					if(data.stoolShape!=""){
        						$("input[name=stoolShape][value="+data.stoolShape+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="stoolHard"){
        					if(data.stoolHard!=""){
        						$("input[name=stoolHard][value="+data.stoolHard+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="stoolTimes"){
        					if(data.stoolTimes!=""){
        						$("input[name=stoolTimes][value="+data.stoolTimes+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="stoolEndless"){
        					if(data.stoolEndless!=""){
        						$("input[name=stoolEndless][value="+data.stoolEndless+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="anusBlock"){
        					if(data.anusBlock!=""){
        						$("input[name=anusBlock][value="+data.anusBlock+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="preCheck"){
        					if(data.preCheck!=""){
        						$("input[name=preCheck][value="+data.preCheck+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="isCathartics"){
        					if(data.isCathartics!=""){
        						$("input[name=isCathartics][value="+data.isCathartics+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="foodIntake"){
        					if(data.foodIntake!=""){
        						$("input[name=foodIntake][value="+data.foodIntake+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="changeKnowledge"){
        					if(data.changeKnowledge!=""){
        						$("input[name=changeKnowledge][value="+data.changeKnowledge+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="isCathartics"){
        					if(data.isCathartics!=""){
        						$("input[name=isCathartics][value="+data.isCathartics+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="sleepStatus"){
        					if(data.sleepStatus!=""){
        						$("input[name=sleepStatus][value="+data.sleepStatus+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="sportStatus"){
        					if(data.sportStatus!=""){
        						$("input[name=sportStatus][value="+data.sportStatus+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else if(key =="pressureStatus"){
        					if(data.pressureStatus!=""){
        						$("input[name=pressureStatus][value="+data.pressureStatus+"]").prop("checked",true);//value=34的radio被选中
        					}
        				}else{
        					$("#"+key).val(data[key]);
        				}
				    }
        			$("#recordId").val(pid);
				    form.render('radio');
        		});
				form.render('radio');
				})
			}
		</script>
	</body>
</html>