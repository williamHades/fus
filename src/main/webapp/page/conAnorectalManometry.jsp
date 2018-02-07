<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	
	<head>
		<meta charset="utf-8">
		<title>下消化道动力监测报告单</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
		
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
        		initAnorectalManometry(pid);
        	});
        </script>
	</head>

	<body>
		<div style="margin: 15px;">
			<form class="layui-form" action="">
			<fieldset class="layui-elem-field layui-field-title">
				<legend>下消化道动力监测报告单</legend>
				
				<div class="layui-field-box">
				<p>首都医科大学附属北京市中医医院消化科胃肠动力室</p>
					<hr>
					<table class="layui-table layui-table-nobg">
						<tbody>
							<tr>
								<td width="10%" rowspan="4" valign="top">患者：</td>
								<td width="20%" rowspan="4" valign="top">
									<input type="text" id="patientName" name="patientName" placeholder="请输入患者姓名" class="layui-input">
									<input type="hidden" id="recordId" 		name="recordId" class="layui-input">
									<input type="hidden" id="createTime" 	name="createTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
									<input type="hidden" id="updateTime" 	name="updateTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
									<input type="hidden" id="ticketId" 		name="ticketId" class="layui-input">
								</td>
								<td width="10%">性别：</td>
								<td width="20%">
									<div class="layui-input-inline">
				                        <input type="hidden" id="patientSex" name="patientSex" value="0" 	title="男"  >
				                        <input type="radio" id="patientSex" name="patientSex" value="1" 	title="男"  >
				                        <input type="radio" id="patientSex" name="patientSex" value="2" 	title="女"  >
									</div>
								</td>
								<td width="10%">医师：</td>
								<td width="30%"><input type="text" id="doctorName" name="doctorName" placeholder="请输入医师" autocomplete="off" class="layui-input"></td>
							</tr>
                            <tr>
								<td>年龄：( / 岁)</td>
								<td><input type="text" id="patinetAge" name="patinetAge" placeholder="请输入年龄" class="layui-input"></td>
								<td>操作人员：</td>
								<td><input type="text" id="patientOperator" name="patientOperator" placeholder="请输入操作人员" class="layui-input"></td>
							</tr>
							<tr>
								<td>身高：( / cm)</td>
								<td><input type="text" id="patientTall" name="patientTall" placeholder="请输入身高" autocomplete="off" class="layui-input"></td>
								<td>检测日期：</td>
								<td><input type="text" id="checkDate" name="checkDate" placeholder="请输入检测日期" autocomplete="off" class="layui-input"></td>
							</tr>
							<tr>
								<td>检查项目：</td>
								<td colspan="4">高分辨率肛门直肠测压</td>
							</tr>							
						</tbody>
					</table>
					<hr>				
				</div>
			</fieldset>
			<table class="layui-table layui-table2">
				<thead>
                  <tr>
					<th>静息</th>
					<th>&nbsp;</th>
					<th>正常值</th>
					<th>收缩</th>
                    <th>&nbsp;</th>
					<th>正常值</th>
				  </tr>
				</thead>
				<tbody>
					<tr>
						<td>肛门括约肌最大收缩力 (rectal ref.):</td>
						<td class="layui-table2"><input type="number" id="anusSphincterMaxRestingRectal" name="anusSphincterMaxRestingRectal" /> mmHg</td>
						<td>50-70</td>
						<td>肛门括约肌最大收缩力 (rectal ref.):</td>
						<td class="layui-table2"><input type="number" id="anusSphincterMaxShrinkRectal" name="anusSphincterMaxShrinkRectal" /> mmHg</td>
						<td>120-170</td>
					</tr>
                    <tr>
						<td>肛门括约肌平均压力 (rectal ref.):</td>
						<td class="layui-table2"><input type="number" id="anusSphincterAverageRestingRectal" name="anusSphincterAverageRestingRectal" /> mmHg</td>
						<td>&nbsp;</td>
						<td>肛门括约肌最大收缩力 (abs. ref.)</td>
						<td class="layui-table2"><input type="number" id="anusSphincterMaxShrinkRectalAbs" name="anusSphincterMaxShrinkRectalAbs" /> mmHg</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>肛门括约肌最大收缩力 (abs. ref.):</td>
						<td class="layui-table2"><input type="number" id="anusSphincterMaxRestingAbs" name="anusSphincterMaxRestingAbs" />mmHg</td>
						<td>&nbsp;</td>
						<td>持续挤压时间:</td>
						<td class="layui-table2"><input type="number" id="crimpLastTime" name="crimpLastTime" /> s</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>肛门括约肌平均压力 (abs. ref.):</td>
						<td class="layui-table2"><input type="number" id="anusSphincterAverageRestingAbs" name="anusSphincterAverageRestingAbs" /> mmHg</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>高压带长度:</td>
						<td class="layui-table2"><input type="number" id="highPressLong" name="highPressLong" /> cm</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>边缘至中心的距离:</td>
						<td class="layui-table2"><input type="number" id="edgeToCenterDistance" name="edgeToCenterDistance" /> cm</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>						
				</tbody>
				<thead>
                  <tr>
					<th>模拟排便 (attempted defecation)</th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
					<th>气囊扩张</th>
                    <th>&nbsp;</th>
					<th>&nbsp;</th>
				  </tr>
				</thead>
				<tbody>
					<tr>
						<td>肛门残余压 (abs. ref.):</td>
						<td class="layui-table2"><input type="number" id="anusLeftPress" name="anusLeftPress" /> mmHg</td>
						<td>&nbsp;</td>
						<td>肛门直肠抑制反射:</td>
						<td class="layui-table2"><input type="number" id="anorectalInhibitoryReflex" name="anorectalInhibitoryReflex" /> mlPresent</td>
						<td>10-30</td>
					</tr>
                    <tr>
						<td>肛门松弛率:</td>
						<td class="layui-table2"><input type="number" id="analRelaxationRate" name="analRelaxationRate" />%</td>
						<td>＞50%</td>
						<td>第一感知通道:</td>
						<td class="layui-table2"><input type="number" id="firstPerceptionChannel" name="firstPerceptionChannel" />cc</td>
						<td>10-30</td>
					</tr>
					<tr>
						<td>直肠压力:</td>
						<td class="layui-table2"><input type="number" id="rectalPressure" name="rectalPressure" /> mmHg</td>
						<td>＞45</td>
						<td>排便感觉:</td>
						<td class="layui-table2"><input type="number" id="defecationSensation" name="defecationSensation" /> cc</td>
						<td>50-80</td>
					</tr>
					<tr>
						<td>直肠肛管压力差:</td>
						<td class="layui-table2"><input type="number" id="anorectalPressureDifference" name="anorectalPressureDifference" /> mmHg</td>
						<td>&nbsp;</td>
						<td>最大耐受量:</td>
						<td class="layui-table2"><input type="number" id="maximumTolerance" name="maximumTolerance" /> cc</td>
						<td>110-280</td>
					</tr>						
				</tbody>
			</table>
			<p>临床印象：符合排便障碍型便秘改变，肛门感觉异常。建议生物反馈治疗。</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
                    <!--  form fields List  end-->
			        <hr size="1" color="CCCCCC" width="100%">
			        <div class="layui-input-block" aling="center">   
		                 <button class="layui-btn" lay-filter="demo1" lay-submit="">保存</button>  
		                 <button class="layui-btn layui-btn-primary" type="reset">关闭</button>  
		            </div> 
		</form>	
		</div>
		<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
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
						if(value.length < 1) {
							return '标题至少得1个字符啊';
						}
					},
					pass: [/(.+){6,12}$/, '密码必须6到12位'],
					content: function(value) {
						layedit.sync(editIndex);
					}
				});

				//监听提交
				form.on('submit(demo1)', function(data) {
					$.post("${pageContext.request.contextPath}/constipation/saveConAnorectalManometry.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("肛门直肠压力测定提交成功！");
							alert(parent.name);
							parent.parent.deleteTab('肛门直肠压力测定');
						}else{
							layer.alert("提交失败，请联系管理员！");
						}
					});
					return false;
				});
			});
			function initAnorectalManometry(pid){
				layui.use(['form', 'layedit', 'laydate','element'], function() {
					var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					element = layui.element();
					laydate = layui.laydate;						
        		//后台获取
				$.getJSON("${pageContext.request.contextPath}/constipation/findConAnorectalManometry.action",{pid:pid},function(data){
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