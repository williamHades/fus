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
        		initEsophagealManometry(pid);
        	});
        </script>
	</head>

	<body>
		<div style="margin: 15px;">
			<form class="layui-form" action="">
			  <fieldset class="layui-elem-field layui-field-title">
				<legend>高分辨率食管测压检查</legend>
				<div class="layui-field-box">
				<p>首都医科大学附属北京中医医院 脾胃病科 北京</p>
					<hr>
					<table class="layui-table layui-table-nobg">
						<tbody>
							<tr>
								<td width="10%" rowspan="4" valign="top">患者：</td>
								<td width="20%" rowspan="4" valign="top">
									<input type="text" id="patientName" name="patientName" placeholder="请输入患者姓名" class="layui-input">
									<input type="text" id="recordId" 		name="recordId" class="layui-input">
									<input type="hidden" id="createTime" 	name="createTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
									<input type="hidden" id="updateTime" 	name="updateTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
									<input type="hidden" id="ticketId" 		name="ticketId" class="layui-input">
								</td>
								<td width="10%">性别：</td>
								<td width="20%">
									<div class="layui-input-inline">
				                        <input type="hidden" id="patientSex" name="patientSex" value="" 	title="男"  >
				                        <input type="radio" id="patientSex" name="patientSex" value="1" 	title="男"  >
				                        <input type="radio" id="patientSex" name="patientSex" value="2" 	title="女"  >
									</div>
								</td>
								<td width="10%">医师：</td>
								<td width="30%"><input type="text" id="doctorName" name="doctorName" placeholder="请输入医师" class="layui-input"></td>
							</tr>
                            <tr>
								<td>出生日期/年龄：</td>
								<td><input type="text" id="patinetAge" name="patinetAge" placeholder="请输入年龄" class="layui-input"></td>
								<td>操作者：</td>
								<td><input type="text" id="patientOperator" name="patientOperator" placeholder="请输入操作人员" class="layui-input"></td>
							</tr>
							<tr>
								<td>身高：</td>
								<td><input type="text" id="patientTall" name="patientTall" placeholder="请输入身高" class="layui-input"></td>
								<td>介绍医师：</td>
								<td><input type="text" id="introduceDoctor" name="introduceDoctor" placeholder="请输入介绍医师" class="layui-input"></td>
							</tr>
							<tr>
								<td>步骤：</td>
								<td>食道压力测定</td>
								<td>检测日期：</td>
								<td><input type="text" id="checkDate" name="checkDate" placeholder="请输入检测日期" autocomplete="off" class="layui-input"></td>
							</tr>							
						</tbody>
					</table>
					<hr>				
				</div>
			</fieldset>
			<table class="layui-table layui-table2">
				<thead>
                  <tr>
					<th colspan="2">LES区域</th>
					<th width="25%">&nbsp;</th>
					<th width="20%">正常值</th>
				  </tr>
				</thead>
				<tbody>					
					<tr>
						<td colspan="2">静息</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
                    <tr>
						<td>&nbsp;</td>
						<td>LES近端 (距鼻孔) (cm)</td>
						<td class="layui-table2"><input type="number" id="lesNearEnd" name="lesNearEnd" /> cm</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>LES长度 (cm)</td>
						<td class="layui-table2"><input type="number" id="lesLong" name="lesLong" /> cm</td>
						<td>2.7-4.8</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>食管长度 (LES中心点-UES中心点) (cm)</td>
						<td class="layui-table2"><input type="number" id="lesEsophagealLength" name="lesEsophagealLength" /> cm</td>					
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>腹腔内LES长度 (cm)</td>
						<td class="layui-table2"><input type="number" id="lesIntraperitonealLength" name="lesIntraperitonealLength" /> cm</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>是否存在食管裂孔疝?</td>
						<td class="layui-table2">
							<div class="layui-input-inline">
				                <input type="hidden" id="hiatalHerniaFlag" name="hiatalHerniaFlag" value="" 	title="是"  >
				                <input type="radio" id="hiatalHerniaFlag" name="hiatalHerniaFlag" value="1" 	title="是"  >
				                <input type="radio" id="hiatalHerniaFlag" name="hiatalHerniaFlag" value="2" 	title="否"  >
							</div>
						</td>
						<td>&nbsp;</td>
					</tr>		
					<tr>
						<td colspan="2">LES压力</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>压力计算方式</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>静息压 (呼吸最小值) (mmHg)</td>
						<td class="layui-table2"><input type="number" id="lesRestingPressureMin" name="lesRestingPressureMin" /> mmHg</td>				
						<td>4.8-32.0</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>静息压 (呼吸平均值) (mmHg)</td>
						<td class="layui-table2"><input type="number" id="lesRestingPressureAverage" name="lesRestingPressureAverage" /> mmHg</td>
						<td>13-43</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>残余压 (平均值) (mmHg)</td>
						<td class="layui-table2"><input type="number" id="lesRestingPressureLeft" name="lesRestingPressureLeft" /> mmHg</td>
						<td>&lt;15.0</td>
					</tr>				
				</tbody>
				<thead>
                  <tr>
					<th colspan="2">UES区域</th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
				  </tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">静息压 (平均值) (mmHg)</td>
						<td class="layui-table2"><input type="number" id="uesRestingPressureAverage" name="uesRestingPressureAverage" /> mmHg</td>
						<td>34-104</td>
					</tr>
                    <tr>
						<td colspan="2">残余压 (平均值) (mmHg)</td>
						<td class="layui-table2"><input type="number" id="uesRestingPressureLeft" name="uesRestingPressureLeft" /> mmHg</td>
						<td>&lt;12.0</td>
					</tr>				
				</tbody>
				<thead>
                  <tr>
					<th colspan="2">咽部/UES动力</th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
				  </tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">分析吞咽数</td>
						<td class="layui-table2"><input type="number" id="swallowingNumber" name="swallowingNumber" /> </td>
						<td>&nbsp;</td>
					</tr>
                    <tr>
						<td colspan="2">评估UES以上3.0cm与N/Acm</td>
						<td class="layui-table2"><input type="number" id="evaluateUes3n" name="evaluateUes3n" /> </td>
						<td>&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>压力峰值平均值 (mmHg)</td>
						<td class="layui-table2"><input type="number" id="pressurePeakAverage" name="pressurePeakAverage" /> mmHg</td>
						<td>&nbsp;</td>
					</tr>			
				</tbody>
				<thead>
                  <tr>
					<th colspan="2">食管动力</th>
					<th>&nbsp;</th>
					<th>&nbsp;</th>
				  </tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">分析吞咽数</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
                    <tr>
						<td colspan="2">评估LES以上3.0cm至11.0cm</td>
						<td class="layui-table2"><input type="number" id="evaluateLes3t11" name="evaluateLes3t11" /> cm</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>蠕动百分比 (速度 ≤ 6.25cm/s) (%)</td>
						<td class="layui-table2"><input type="number" id="percentagePeristalsis" name="percentagePeristalsis" /> %</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>同步收缩百分比 (速度 ≥ 6.25 cm/s) (%)</td>
						<td class="layui-table2"><input type="number" id="synchronousContractionPercent" name="synchronousContractionPercent" /> %</td>
						<td>≤10%</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>无效吞咽百分比</td>
						<td class="layui-table2"><input type="number" id="ineffectiveSwallowingPercent" name="ineffectiveSwallowingPercent" /> %</td>
						<td>0%</td>
					</tr>
					<tr>
						<td colspan="2">评估LES以上3.0cm与7.0cm</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>波幅平均值 (mmHg)</td>
						<td class="layui-table2"><input type="number" id="amplitudeAverage" name="amplitudeAverage" /> mmHg</td>
						<td>43-152</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>持续时间平均值 (s)</td>
						<td class="layui-table2"><input type="number" id="lastTimeAverage" name="lastTimeAverage" /> s</td>
						<td>2.7-5.4</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>双峰波吞咽百分比</td>
						<td class="layui-table2"><input type="number" id="doubleSwallowingPercent" name="doubleSwallowingPercent" /> %</td>
						<td>≤15%</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>三峰波吞咽百分比</td>
						<td class="layui-table2"><input type="number" id="tripleSwallowingPercent" name="tripleSwallowingPercent" /> %</td>
						<td>0%</td>
					</tr>	
					<tr>
						<td colspan="2">速度 (LES上沿以上11.0cm-3.0cm) (cm/s)</td>
						<td class="layui-table2"><input type="number" id="lesSpeed11t3" name="lesSpeed11t3" /> cm/s</td>
						<td>2.8-6.3</td>
					</tr>	
					<tr>
						<td colspan="2">高分辨率测压分析参数</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>远端收缩积分 (DCI) 平均值 (mmHg*cm*s)</td>
						<td class="layui-table2"><input type="number" id="dciAverage" name="dciAverage" /> mmHg*cm*s</td>
						<td>500-5000</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>收缩前沿速度 (CFV) (cm/s)</td>
						<td class="layui-table2"><input type="number" id="cfvSpeed" name="cfvSpeed" /> cm/s</td>
						<td>&lt;9.0</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>食团内部压力 (IBP) (@LESR) (mmHg)</td>
						<td class="layui-table2"><input type="number" id="ibpLesr" name="ibpLesr" /> mmHg</td>
						<td>&lt;8.4</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>食团内部压力 (IBP) (平均最大值) (mmHg)</td>
						<td class="layui-table2"><input type="number" id="ibpMax" name="ibpMax" /> mmHg</td>
						<td>&lt;17.0</td>
					</tr>	
					<tr>
						<td colspan="2">芝加哥分类分析参数</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>远端收缩延迟 (DL)</td>
						<td class="layui-table2"><input type="number" id="chicagoDlAmount" name="chicagoDlAmount" /> DL</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>无效吞咽百分比 (%) (芝加哥分类)</td>
						<td class="layui-table2"><input type="number" id="chicagoIneffectiveSwallowingPercent" name="chicagoIneffectiveSwallowingPercent" /> %</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>全段食管增压百分比 (%)</td>
						<td class="layui-table2"><input type="number" id="chicagoEsophagusPressurePercentage" name="chicagoEsophagusPressurePercentage" /> %</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>提前收缩百分比 (%)</td>
						<td class="layui-table2"><input type="number" id="chicagoPrematureContractionPercentage" name="chicagoPrematureContractionPercentage" /> %</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>快速收缩百分比 (%)</td>
						<td class="layui-table2"><input type="number" id="chicagoRapidContractionPercentage" name="chicagoRapidContractionPercentage" /> %</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>大型蠕动中断百分比 (%)</td>
						<td class="layui-table2"><input type="number" id="chicagoLargePeristalticDisruptionPercent" name="chicagoLargePeristalticDisruptionPercent" /> %</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>小型蠕动中断百分比 (%)</td>
						<td class="layui-table2"><input type="number" id="chicagoSmallPeristalticDisruptionPercent" name="chicagoSmallPeristalticDisruptionPercent" /> %</td>
						<td>&nbsp;</td>
					</tr>
				</tbody>
			</table>
			<p><strong>Chicago Classification Findings*</strong></p>
			<p>食管胃结合部: 正常松弛      <br /> 
			           综合松弛压(IRP)平均值 (     mmHg) 小于 15 mmHg
			<p>食管体部: 小型蠕动中断 <br /> 
        		小型蠕动中断百分比 (    %) 大于 30% <br /> 
			<p>结果: 蠕动减弱伴随小型蠕动缺失</p>
			<p>* 结果基于已发表的芝加哥分类, 仅用于指导对患者的诊断 </p><br /> <br /> 
			<p><strong>临床印象：食管下括约肌区压力异常，易造成反流。食管动力差，收缩力量弱。<strong></p>
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
					$.post("${pageContext.request.contextPath}/gerd/saveEsophagealManometry.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("食道压力测定报告提交成功！");
							//alert(parent.name);
							parent.parent.deleteTab('食道压力测定报告');
						}else{
							layer.alert("提交失败，请联系管理员！");
						}
					});
					return false;
				});
			});
			function initEsophagealManometry(pid){
				layui.use(['form', 'layedit', 'laydate','element'], function() {
					var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					element = layui.element();
					laydate = layui.laydate;						
        		//后台获取
				$.getJSON("${pageContext.request.contextPath}/gerd/findEsophagealManometry.action",{pid:pid},function(data){
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