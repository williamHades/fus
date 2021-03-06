<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title>GERD病人症状表</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
		
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
        		initGerSQueRecord(pid);
        	});
        </script>
	</head>

	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>GERD病人症状表</legend>
			</fieldset>
            

			<form class="layui-form" action="">
			
				<div class="layui-form-item" >
					<input type="hidden" id="recordId" name="recordId" class="layui-input">
					<input type="hidden" id="createTime" name="createTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
					<input type="hidden" id="updateTime" name="updateTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
					<input type="hidden" id="ticketId" name="ticketId" class="layui-input">
								
				</div>
				<!-- <div class="layui-form-item" style="float:right;">
					<div class="layui-inline">
						<label class="layui-form-label">病历号：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" name="gender" placeholder="请输入病历号" autocomplete="off" class="layui-input">
						</div>
					</div>
				</div> -->
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label layui-form-label2">姓名：</label>
						<div class="layui-input-inline">
	                    	<input type="text" id="patientName" name="patientName" placeholder="请输入姓名" autocomplete="off" class="layui-input">
						</div>
						<label class="layui-form-label">性别：</label>
						<div class="layui-input-inline">
	                    	<input type="hidden" id="patientSex" name="patientSex" value="" 	title="男"  >
	                    	<input type="radio" id="patientSex" name="patientSex" value="1" 	title="男"  >
	                        <input type="radio" id="patientSex" name="patientSex" value="2" 	title="女">
						</div>
						<div class="layui-form-label">年龄：</div>
						<div class="layui-input-inline"">
							<input type="text" id="patientAge" name="patientAge" placeholder="请输入年龄" autocomplete="off" class="layui-input">
						</div>                        
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-inline">						
                        <div class="layui-form-label layui-form-label2">职业：</div>
						<div class="layui-input-inline"">
							<input type="text" id="patientCareer" name="patientCareer" placeholder="请输入职业" autocomplete="off" class="layui-input">
						</div>
                        <div class="layui-form-label">联系电话：</div>
						<div class="layui-input-inline"">
							<input type="text" id="patientContact" name="patientContact" placeholder="请输入电话" autocomplete="off" class="layui-input">
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
						<input type="hidden" id="patientEducation" name="patientEducation" value="" title="小学">
						<input type="radio" id="patientEducation" name="patientEducation" value="1" title="小学">
						<input type="radio" id="patientEducation" name="patientEducation" value="2" title="初中">
						<input type="radio" id="patientEducation" name="patientEducation" value="3" title="高中或中专">
                        <input type="radio" id="patientEducation" name="patientEducation" value="4" title="大专">
						<input type="radio" id="patientEducation" name="patientEducation" value="5" title="大学及以上"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label layui-form-label2">婚姻状况：</label>
						<div class="layui-input-inline" style="width:340px;">
							<input type="hidden" id="patientMarried" name="patientMarried" value="" title="已婚"  >
							<input type="radio" id="patientMarried" name="patientMarried" value="1" title="已婚"  >
                        	<input type="radio" id="patientMarried" name="patientMarried" value="2" title="未婚">
							<input type="radio" id="patientMarried" name="patientMarried" value="3" title="离异"  >
							<input type="radio" id="patientMarried" name="patientMarried" value="4" title="丧偶"  >
						</div>
						<label class="layui-form-label">子女：</label>
						<div class="layui-input-inline">
							<input type="hidden" id="patientChild" name="patientChild" value="" title="有"  >
							<input type="radio" id="patientChild" name="patientChild" value="1" title="有"  >
                        	<input type="radio" id="patientChild" name="patientChild" value="2" title="无">
						</div>
					</div>
				</div>
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">家庭经济情况：</label>
					<div class="layui-input-block">
						<input type="hidden" id="patientEconomy" name="patientEconomy" value="" title="很好"  >
						<input type="radio" id="patientEconomy" name="patientEconomy" value="1" title="很好"  >
						<input type="radio" id="patientEconomy" name="patientEconomy" value="2" title="好">
						<input type="radio" id="patientEconomy" name="patientEconomy" value="3" title="一般">
                        <input type="radio" id="patientEconomy" name="patientEconomy" value="4" title="差">
						<input type="radio" id="patientEconomy" name="patientEconomy" value="5" title="很差">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">医疗费用支付方式：</label>
					<div class="layui-input-block">
						<input type="hidden" id="patientPayMode" name="patientPayMode" value="" title="公费"  >
						<input type="radio" id="patientPayMode" name="patientPayMode" value="1" title="公费"  >
						<input type="radio" id="patientPayMode" name="patientPayMode" value="2" title="医保">
						<input type="radio" id="patientPayMode" name="patientPayMode" value="3" title="自费">
                        <input type="radio" id="patientPayMode" name="patientPayMode" value="4" title="其他">
					</div>
				</div>

                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">每日工作时间：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="workTime" name="workTime" value="" title="＜8小时">
                        <input type="radio" id="workTime" name="workTime" value="1" title="＜8小时">
						<input type="radio" id="workTime" name="workTime" value="2" title="8小时"  >
						<input type="radio" id="workTime" name="workTime" value="3" title="8-10小时">
                        <input type="radio" id="workTime" name="workTime" value="4" title="10小时以上">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">每日上班路程时间：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="workOnway" name="workOnway" value="" title="＜半小时">
                        <input type="radio" id="workOnway" name="workOnway" value="1" title="＜半小时">
						<input type="radio" id="workOnway" name="workOnway" value="2" title="0.5～1小时"  >
						<input type="radio" id="workOnway" name="workOnway" value="3" title="1～2小时">
                        <input type="radio" id="workOnway" name="workOnway" value="4" title="2小时以上">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">压力（工作生活学习）：</label>
					<div class="layui-input-block">
                        <input type="hidden" name="pressure" value="" title="小">
                        <input type="radio" name="pressure" value="1" title="小">
						<input type="radio" name="pressure" value="2" title="一般"  >
						<input type="radio" name="pressure" value="3" title="较大">
                        <input type="radio" name="pressure" value="4" title="很大">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">每周在外就餐次数:<br>（不包括单位或学校食堂）</label>
					<div class="layui-input-block">
                        <input type="hidden" id="eatOutsideTimes" name="eatOutsideTimes" value="" title="＜3次">
                        <input type="radio" id="eatOutsideTimes" name="eatOutsideTimes" value="1" title="＜3次">
						<input type="radio" id="eatOutsideTimes" name="eatOutsideTimes" value="2" title="3～6次"  >
						<input type="radio" id="eatOutsideTimes" name="eatOutsideTimes" value="3" title="6～9次">
                        <input type="radio" id="eatOutsideTimes" name="eatOutsideTimes" value="4" title="9～12次">
                        <input type="radio" id="eatOutsideTimes" name="eatOutsideTimes" value="5" title="12次以上">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">吃饭急，就餐时狼吞虎咽：</label>
					<div class="layui-input-block">
                        <input type="hidden" name="eatSpeed" value="" title="是">
                        <input type="radio" name="eatSpeed" value="1" title="是">
						<input type="radio" name="eatSpeed" value="2" title="否"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">饱餐：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="eatFull" name="eatFull" value="" title="每餐都吃到很饱">
                        <input type="radio" id="eatFull" name="eatFull" value="1" title="每餐都吃到很饱">
						<input type="radio" id="eatFull" name="eatFull" value="2" title="食量自行控制"  >
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">饮酒：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="eatDrink" name="eatDrink" value="" title="偶尔">
                        <input type="radio" id="eatDrink" name="eatDrink" value="1" title="偶尔">
						<input type="radio" id="eatDrink" name="eatDrink" value="2" title="有时"  >
                        <input type="radio" id="eatDrink" name="eatDrink" value="3" title="经常">
                        <input type="radio" id="eatDrink" name="eatDrink" value="4" title="常常，有饮酒习惯">
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">吸烟：</label>
					<div class="layui-input-inline">
                        <input type="hidden" id="eatSmoke" name="eatSmoke" value="" title="是"  >
                        <input type="radio" id="eatSmoke" name="eatSmoke" value="1" title="是"  >
						<input type="radio" id="eatSmoke" name="eatSmoke" value="2" title="否">
					</div>
					<label class="layui-form-label"></label>
					<div class="layui-input-inline">
                        <input type="text" id="eatSmokeAmount" name="eatSmokeAmount" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-label" style="text-align:left;">支/天</div>
				</div>
                 
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label layui-form-label2">病程（症状持续时间）：</label>
						<div class="layui-input-inline" style="width: 80px;">
							<input type="text" id="illnessLastTime" name="illnessLastTime" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-label" style="text-align:left;">个月</div>
					</div>
				</div>
                
                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label layui-form-label2">其他疾病：</label>
					<div class="layui-input-block" style="margin-left:240px;">
						<textarea placeholder="请输入内容" id="otherIllness" name="otherIllness" class="layui-textarea"></textarea>
					</div>
				</div>
                
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">做过哪些检查（诊断及时间）：</label>
					<div class="layui-input-block">
                        <input type="hidden" id="checkName" name="checkName" value="" title="胃镜"  >
                        <input type="radio" id="checkName" name="checkName" value="1" title="胃镜"  >
						<input type="radio" id="checkName" name="checkName" value="2" title="上消化道造影">
					</div>
				</div>
                
                <div class="layui-form-item">
                	<label class="layui-form-label layui-form-label2">检查时间：</label>
                	<div class="layui-input-inline">
                        <input type="text" id="checkTime" name="checkTime" placeholder="检查时间" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
					</div>		
					<label class="layui-form-label">检查结论：</label>
                	<div class="layui-input-inline" style="min-width:506px;">
                        <input type="hidden" id="checkResult" name="checkResult" value="" title="反流性食管炎" lay-filter="checkResult"  >
                        <input type="radio" id="checkResult" name="checkResult" value="1" title="反流性食管炎" lay-filter="checkResult"  >
						<input type="radio" id="checkResult" name="checkResult" value="2" title="反流性胃炎" lay-filter="checkResult" >
                       	<input type="radio" id="checkResult" name="checkResult" value="3" title="食管裂孔疝" lay-filter="checkResult" >
						<input type="radio" id="checkResult" name="checkResult" value="4" title="贲门失弛缓" lay-filter="checkResult" >
					</div>
                	<div class="layui-input-inline" style="min-width:506px;" id="checkResultLevelDiv">
                        <input type="hidden" id="checkResultLevel" name="checkResultLevel" value="" title=""  >
                        <input type="radio" id="checkResultLevel" name="checkResultLevel" value="1" title="A级" >
						<input type="radio" id="checkResultLevel" name="checkResultLevel" value="2" title="B级"  >
                       	<input type="radio" id="checkResultLevel" name="checkResultLevel" value="3" title="C级" >
						<input type="radio" id="checkResultLevel" name="checkResultLevel" value="4" title="D级"  >
					</div>
				</div>              
                <div class="layui-form-item">
					<label class="layui-form-label layui-form-label2">是否使用PPI：</label>
					<div class="layui-input-inline">
                        <input type="hidden" id="isPpi" name="isPpi" value="" title="是"  >
                        <input type="radio" id="isPpi" name="isPpi" value="1" title="是"  >
						<input type="radio" id="isPpi" name="isPpi" value="2" title="否">
					</div>
					<label class="layui-form-label">时间：</label>
					<div class="layui-input-inline">
                       	<input type="text" id="ppiTime" name="ppiTime" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-label" style="text-align:left;">个月</div>
				</div>
                
                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label layui-form-label2">备注记录：</label>
					<div class="layui-input-block" style="margin-left:240px;">
						<textarea placeholder="备注记录" id="remark" name="remark" class="layui-textarea"></textarea>
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
				
				form.on('radio(checkResult)', function(data){
					//layer.alert($("input[name='checkResult']:checked").val());
					if($("input[name='checkResult']:checked").val()==1){
						$("#checkResultLevel").removeAttr("disabled");
						$("#checkResultLevelDiv").show();
					}else{
						//$("#checkResultLevel").val(0);
						//$("#checkResultLevel").removeAttr("disabled");
						$("#checkResultLevel").attr("disabled", "disabled");
						//$("#checkResultLevelDiv").hide();
					}
					form.render();
					//$("#checkResultLevel").val($("#supportorNameId option:selected").text());checkResultLevel
				});
				
				//监听提交
				form.on('submit(demo1)', function(data) {
					$.post("${pageContext.request.contextPath}/gerd/saveGerSymptomQue.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("临床症状调查表提交成功！");
							//alert(parent.name);
							parent.parent.deleteTab('GERD病人症状表');
						}else{
							layer.alert("提交失败，请联系管理员！");
						}
					});
					return false;
				});
			});
			function initGerSQueRecord(pid){
				layui.use(['form', 'layedit', 'laydate','element'], function() {
					var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					element = layui.element();
					laydate = layui.laydate;
        		//后台获取
				$.getJSON("${pageContext.request.contextPath}/gerd/findGerSymptomQue.action",{pid:pid},function(data){
        			//set from fields value
        			for (var key in data){
        				//alert(key + " - " + data[key]);
        				if(data[key]!=""){
        					$("#"+key).val(data[key]);
        				}
        				if(data[key]!=""){
        					$("input[name="+key+"][value="+data[key]+"]").prop("checked",true);
        				}
        				if(key=="createTime")
        					$("#createTime").val(data.createTime);
        				if(key=="updateTime")
        					$("#updateTime").val(data.updateTime);
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