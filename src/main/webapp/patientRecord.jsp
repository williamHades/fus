<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>患者就诊记录</title>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/fancybox/fancybox.css"  type="text/css" media="screen" />
        <style type="text/css">
        	.myButton { width:130px;	-moz-box-shadow:inset 0px 1px 0px 0px #d9fbbe; 	-webkit-box-shadow:inset 0px 1px 0px 0px #d9fbbe; 	box-shadow:inset 0px 1px 0px 0px #d9fbbe; 	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #b8e356), color-stop(1, #a5cc52)); 	background:-moz-linear-gradient(top, #b8e356 5%, #a5cc52 100%); 	background:-webkit-linear-gradient(top, #b8e356 5%, #a5cc52 100%); 	background:-o-linear-gradient(top, #b8e356 5%, #a5cc52 100%); 	background:-ms-linear-gradient(top, #b8e356 5%, #a5cc52 100%); 	background:linear-gradient(to bottom, #b8e356 5%, #a5cc52 100%); 	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#b8e356', endColorstr='#a5cc52',GradientType=0); 	background-color:#b8e356; 	-moz-border-radius:6px; 	-webkit-border-radius:6px; 	border-radius:6px; 	border:1px solid #83c41a; 	display:inline-block; 	cursor:pointer; 	color:#ffffff; 	font-family:Arial; 	font-size:15px; 	font-weight:bold; 	padding:6px 24px; 	text-decoration:none; 	text-shadow:0px 1px 0px #86ae47;  } 
        	.myButton:hover { 	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #a5cc52), color-stop(1, #b8e356)); 	background:-moz-linear-gradient(top, #a5cc52 5%, #b8e356 100%); 	background:-webkit-linear-gradient(top, #a5cc52 5%, #b8e356 100%); 	background:-o-linear-gradient(top, #a5cc52 5%, #b8e356 100%); 	background:-ms-linear-gradient(top, #a5cc52 5%, #b8e356 100%); 	background:linear-gradient(to bottom, #a5cc52 5%, #b8e356 100%); 	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#a5cc52', endColorstr='#b8e356',GradientType=0); 	background-color:#a5cc52; } 
        	.myButton:active { 	position:relative; 	top:1px; }
        </style>
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
        		initRecord(pid);
        	});
        </script>
	</head>

	<body>
		<div id="patientRecordDiv" style="margin: 15px;">			
                <div id="patientRecord">
					<form class="layui-form" action="savePatientRecord.action">
	        			<!--popup form start-->
	                    <div class="layui-form-item">
	                    	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;"> 
	                    		<legend>患者就诊记录</legend> 
	                    	</fieldset>
						</div>
	                    <!-- form fields List Start -->
						<div class="layui-form-item" style="float:right;margin-right:10%;display:none;">
							<div class="layui-inline">
								<label class="layui-form-label">单号：</label>
								<div class="layui-input-inline" style="width: 180px;">
									<input type="hidden" id="id" name="id" class="layui-input">
									<input type="text"  id="ticketNo" name="ticketNo" placeholder="请输入病历号" autocomplete="on" class="layui-input">
								</div>
							</div>
						</div>
	                    <div class="layui-form-item">
	                    	<div class="layui-inline">
								<label class="layui-form-label"><span class="red">*</span>病历号：</label>
								<div class="layui-input-block" >
									<input type="text" id="patientNo" name="patientNo" placeholder="请输入病历号" class="layui-input">
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label"><span class="red">*</span> 编号：</label>
								<div class="layui-input-block" >
									 <input type="text" id="patientId" name="patientId"  placeholder="请输入就诊卡号" class="layui-input">
	                        	</div>
							</div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label"><span class="red">*</span> 患者姓名：</label>
	                        <div class="layui-input-block">
	                            <input type="text" id="patientName" name="patientName"  placeholder="请输入患者姓名" class="layui-input">
	                        </div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label">性别：</label>
	                        <div class="layui-input-block">
	                            <input type="radio" id="patientSex" name="patientSex" value="1" 	title="男"  >
	                            <input type="radio" id="patientSex" name="patientSex" value="2" 	title="女"  >
	                        </div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label">年龄：</label>
	                        <div class="layui-input-block">
	                            <input type="text" id="patientAge" name="patientAge" lay-verify="age" placeholder="请输入患者年龄" class="layui-input">
	                        </div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label">联系方式：</label>
	                        <div class="layui-input-block">
	                            <input type="text" id="patientContact" name="patientContact" lay-verify="phone" placeholder="请输入联系方式" class="layui-input">
	                        </div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">职业：</label>
								<div class="layui-input-block" >
									<input type="text" id="patientCareer" name="patientCareer" placeholder="请输入职业" class="layui-input">
								</div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">现住址：</label>
							<div class="layui-input-block">
								<input type="text" id="siteHome" name="siteHome" lay-verify="add" placeholder="请输入住址" class="layui-input">
							</div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">工作单位：</label>
							<div class="layui-input-block">
								<input type="text" id="siteWork" name="siteWork" lay-verify="add" placeholder="请输入工作单位" class="layui-input">
							</div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">教育程度：</label>
							<div class="layui-input-block">
								<input type="radio" id="patientEducation" name="patientEducation" value="1" 	title="小学"  >
								<input type="radio" id="patientEducation" name="patientEducation" value="2" 	title="初中"  >
								<input type="radio" id="patientEducation" name="patientEducation" value="3" 	title="高中或中专"  >
		                        <input type="radio" id="patientEducation" name="patientEducation" value="4" 	title="大专"  >
								<input type="radio" id="patientEducation" name="patientEducation" value="5" 	title="大学及以上"  >
							</div>
						</div>
		                <div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">婚姻状况：</label>
								<div class="layui-input-inline" style="width:250px">
									<input type="radio" id="patientMarried" name="patientMarried" value="1" title="已婚"  >
		                        	<input type="radio" id="patientMarried" name="patientMarried" value="2" title="未婚"  >
									<input type="radio" id="patientMarried" name="patientMarried" value="3" title="离婚"  >
								</div>
							</div>
						</div>
		                <div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">子女：</label>
								<div class="layui-input-inline" style="width:250px">
									<input type="radio" id="patientChild" name="patientChild" value="1" title="有"  >
		                        	<input type="radio" id="patientChild" name="patientChild" value="2" title="无"  >
								</div>
							</div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">家庭经济情况：</label>
							<div class="layui-input-block">
								<input type="radio" id="patientEconomy" name="patientEconomy" value="1" title="很好"  >
								<input type="radio" id="patientEconomy" name="patientEconomy" value="2" title="好"  >
								<input type="radio" id="patientEconomy" name="patientEconomy" value="3" title="一般"  >
		                        <input type="radio" id="patientEconomy" name="patientEconomy" value="4" title="差"  >
								<input type="radio" id="patientEconomy" name="patientEconomy" value="5" title="很差"  >
							</div>
						</div>
						<div class="layui-form-item">
	                        <label class="layui-form-label">疾病分组：</label>
	                        <div class="layui-input-block">
	                            <input type="radio" id="patientGroup" name="patientGroup" value="1" title="便秘" disabled><!-- disabled -->
	                            <input type="radio" id="patientGroup" name="patientGroup" value="2" title="反流" disabled>
	                        </div>
						</div>
						<div class="layui-form-item" style="float:right;margin-right:10%;display:none;">
							<div class="layui-inline">
								<label class="layui-form-label">创建时间：</label>
								<div class="layui-input-inline" style="width: 180px;">
									<input type="text" id="createTime" name="createTime" placeholder="请输入病历号" autocomplete="on" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item" style="float:right;margin-right:10%;display:none;">
							<div class="layui-inline">
								<label class="layui-form-label">修改时间：</label>
								<div class="layui-input-inline" style="width: 180px;">
									<input type="text" id="updateTime" name="updateTime" placeholder="请输入病历号" autocomplete="on" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item" style="float:right;margin-right:10%;display:none;">
							<div class="layui-inline">
								<label class="layui-form-label">修改人：</label>
								<div class="layui-input-inline" style="width: 180px;">
									<input type="text" id="operator" name="operator" placeholder="请输入病历号" autocomplete="on" class="layui-input">
								</div>
							</div>
						</div>
						
                        <!-- ger Div View -->
						<div id="ger" >
							<div class="layui-form-item">
								<label class="layui-form-label">GERD病人症状表</label>
								<div class="layui-input-block">
									<a href="javascript:openCGForms('gerSymptomPen','GERD病人症状表')" class="myButton">GERD病人症状表</a>	
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">相关中医症状条目：</label>
								<div class="layui-input-block">
									<a href="javascript:openCGForms('gerSymptomChn','相关中医症状条目')" class="myButton">相关中医症状条目</a>	
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">GERDQ评分表</label>
								<div class="layui-input-block">
									<a href="javascript:openCGForms('gerQScore','GERDQ评分表')" class="myButton">GERDQ评分表</a>
								</div>
							</div>
							<!-- <div class="layui-form-item">
								<label class="layui-form-label">自评问卷：</label>
								<div class="layui-input-block">
									<a href="javascript:openC5(1)" class="myButton">自 评 问 卷</a>	
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">健康调查简表：</label>
								<div class="layui-input-block">
									<a href="javascript:openC5(1)" class="myButton">健康调查简表</a>
									input type="text" name="siteWork" lay-verify="add" autocomplete="off" placeholder="请输入工作单位" class="layui-input"
								</div>
							</div> -->
		                    <!--  form fields List  end-->
		                    <hr size="1" color="CCCCCC" width="100%">
		                    <div class="layui-input-block">   
	                              <button class="layui-btn" lay-filter="demo1" lay-submit="">保存</button>  
	                              <button class="layui-btn layui-btn-primary" type="reset">关闭</button>  
	                        </div> 
                        </div> 	
                        <!-- con Div View -->
                        <div id="con" >
							<div class="layui-form-item">
								<label class="layui-form-label">临床症状调查表：</label>
								<div class="layui-input-block">
									<a href="javascript:openCGForms('conSymptomQue','临床症状调查表')" class="myButton">临床症状调查表</a>	
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">相关中医症状条目：</label>
								<div class="layui-input-block">
									<a href="javascript:openCGForms('conSymptomChn','中医症状')" class="myButton">相关中医症状条目</a>	
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">生活质量量表：</label>
								<div class="layui-input-block">
									<a href="javascript:openCGForms('conLifeQua','生活质量表')" class="myButton">生活质量量表</a>	
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">自评问卷：</label>
								<div class="layui-input-block">
									<a href="javascript:openCGForms('conSelfQue','自评问卷')" class="myButton">自 评 问 卷</a>	
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">健康调查简表：</label>
								<div class="layui-input-block">
									<a href="javascript:openCGForms('conHealthQue','健康调查简表')" class="myButton">健康调查简表</a>
									<!-- input type="text" name="siteWork" lay-verify="add" autocomplete="off" placeholder="请输入工作单位" class="layui-input" -->
								</div>
							</div>
		                    <!--  form fields List  end-->
		                    <hr size="1" color="CCCCCC" width="100%">
		                    <div class="layui-input-block">   
	                              <button class="layui-btn" lay-filter="demo1" lay-submit="">保存</button>  
	                              <button class="layui-btn layui-btn-primary" type="reset">关闭</button>  
	                        </div> 
                        </div> 	                    
	                </form>
				</div>
		</div>
		<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate','element'], function() {
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
					$.post("${pageContext.request.contextPath}/patient/savePatientRecord.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("病患记录提交成功！");
							alert(parent.name);
							parent.parent.deleteTab('就诊记录');
						}else{
							layer.alert("提交失败，请联系管理员！");
						}
					});
					return false;
				});
			});
			function initRecord(pid){
				layui.use(['form', 'layedit', 'laydate','element'], function() {
					var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					element = layui.element();
					laydate = layui.laydate;						
        		//后台获取
				$.getJSON("${pageContext.request.contextPath}/patient/findPatientRecord.action",{pid:pid},function(data){
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
        				}else{
        					$("#"+key).val(data[key]);
        				}
				    }
				    if(data.patientGroup==2){
				    	$("#con").hide();
				    	$("ger").show();
				    	//alert("check 2");
				    	//$("#patientGroup").removeAttr('checked'); 
				    	$("input[id=patientGroup][value=2]").prop("checked",true);//value=34的radio被选中
				    	$("#patientGroup").val(2);
				    	form.render('radio');
				    	//alert(data.patientGroup);
				    }else{
				    	$("#con").show();
				    	$("#ger").hide();
				    	$("input[id=patientGroup][value=1]").prop("checked",true);//value=34的radio被选中
				    	$("#patientGroup").val(1);
				    	form.render('radio');
				    	//alert(data.patientGroup);
				    }
				    form.render('radio');
        		});
				form.render('radio');
				})
			}
        	function openCGForms(formName,title){
        		var pid =  getUrlParam("pid");
		    	alert(pid);
		    	parent.parent.tab.tabAdd({
					href:  "page/"+formName+".jsp?pid="+pid, //地址
					icon:  "",
					title: title
				});
		    }
		</script>
	</body>
</html>