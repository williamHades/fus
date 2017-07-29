<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	
	<head>
		<meta charset="utf-8">
		<title>便秘相关中医症状条目</title>
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
        		$.getJSON("${pageContext.request.contextPath}/constipation/findConSymptomChn.action",{pid:pid},function(data){
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
				    /* if(data.patientGroup==2){
				    	$("#con").show();
				    	$("#ger").hide();
				    	//alert("check 2");
				    	$("#patientGroup").removeAttr('checked'); 
				    	$("input[id=patientGroup][value=2]").prop("checked",true);//value=34的radio被选中
				    }else{
				    	$("#con").hide();
				    	$("ger").show();
				    	$("input[id=patientGroup][value=1]").prop("checked",true);//value=34的radio被选中
				    } */
        			$("#recordId").val(pid);
        		});
        	});
        </script>
	</head>

	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title">
				<legend>便秘相关中医症状条目</legend>
				<div class="layui-field-box">
					<form class="layui-form" action="">
						<div class="layui-form-item" style="float:left;">
						<div class="layui-inline">
							<label class="layui-form-label">病组编号：</label>
							<div class="layui-input-inline" style="width: 180px;">
								<input type="text" id="recordId" name="recordId" class="layui-input">
							</div>
						</div>
						</div>
						<div class="layui-form-item" style="float:left;">
							<div class="layui-inline">
								<label class="layui-form-label">创建时间：</label>
								<div class="layui-input-inline" style="width: 300px;">
									<input type="text" id="createTime" name="createTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
								</div>
							</div>
						</div>
						<div class="layui-form-item" style="float:left;">
							<div class="layui-inline">
								<label class="layui-form-label">更新时间：</label>
								<div class="layui-input-inline" style="width: 300px;">
									<input type="text" id="updateTime" name="updateTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
								</div>
							</div>
						</div>
						<div class="layui-form-item" style="float:left;">
							<div class="layui-inline">
								<label class="layui-form-label">单号：</label>
								<div class="layui-input-inline" style="width: 180px;">
									<input type="text" id="ticketId" name="ticketId" class="layui-input">
								</div>
							</div>
						</div>
					<table class="layui-table">
						<thead>
							<tr>
								<th rowspan="2" width="80">症状条目</th>
								<th colspan="4">等级标准</th>
							</tr>
                            <tr>
								<th>无（0分）</th>
								<th>轻度（1分）</th>
								<th>中度（2分）</th>
								<th>重度（3分）</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="center" class="layui-form-bg-gray">便次</td>
								<td><input type="radio" id="stoolTimes"name="stoolTimes" value="1" title="0分" checked> </td>
								<td><input type="radio" id="stoolTimes"name="stoolTimes" value="2" title="2-3日一行" > </td>
								<td><input type="radio" id="stoolTimes"name="stoolTimes" value="3" title="4-6日一行" > </td>
								<td><input type="radio" id="stoolTimes"name="stoolTimes" value="4" title="≥7日一行"> </td>
							</tr>
							<tr>
								<td align="center" class="layui-form-bg-gray">粪质</td>
								<td><input type="radio" id="stoolType" name="stoolType" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="stoolType" name="stoolType" value="2" title="大便偏干" > </td>
								<td><input type="radio" id="stoolType" name="stoolType" value="3" title="大便坚实" > </td>
								<td><input type="radio" id="stoolType" name="stoolType" value="4" title="大便干燥如羊屎"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">畏寒</td>
								<td><input type="radio" id="coldAfraid" name="coldAfraid" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="coldAfraid" name="coldAfraid" value="2" title="偶发，微有畏寒，四肢不温" > </td>
								<td><input type="radio" id="coldAfraid" name="coldAfraid" value="3" title="常发，面色清白，四肢发冷，得暖方舒" > </td>
								<td><input type="radio" id="coldAfraid" name="coldAfraid" value="4" title="终日畏寒，面色苍白，四肢厥冷，腠缩身蜷，厚衣拥护，得温不解"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">四肢冰凉</td>
								<td><input type="radio" id="coldClimb" name="coldClimb" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="coldClimb" name="coldClimb" value="2" title="感觉踝腕关节以下冷，触摸皮温无明显变化" > </td>
								<td><input type="radio" id="coldClimb" name="coldClimb" value="3" title="感觉肘膝关节以下冷，触摸皮温略低" > </td>
								<td><input type="radio" id="coldClimb" name="coldClimb" value="4" title="感觉冷至肘膝关节以上，触摸皮温明显降低"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">肢体困重</td>
								<td><input type="radio" id="heaveLimb" name="heaveLimb" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="heaveLimb" name="heaveLimb" value="2" title="肢体发重，有困束感，活动乏力" > </td>
								<td><input type="radio" id="heaveLimb" name="heaveLimb" value="3" title="肢体重滞，困束感明显，活动费力" > </td>
								<td><input type="radio" id="heaveLimb" name="heaveLimb" value="4" title="肢体困重，活动极感费力"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">口臭</td>
								<td><input type="radio" id="halitosis" name="halitosis" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="halitosis" name="halitosis" value="2" title="口中出气稍有臭秽，他人靠近可闻觉，自己未觉" > </td>
								<td><input type="radio" id="halitosis" name="halitosis" value="3" title="口中出气臭秽，他人稍靠近便可闻觉" > </td>
								<td><input type="radio" id="halitosis" name="halitosis" value="4" title="口中出气臭秽，他人在较远距离及自我可闻觉"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">口干</td>
								<td><input type="radio" id="thirsty" name="thirsty" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="thirsty" name="thirsty" value="2" title="唾液减少，口腔偏干，可不饮水" > </td>
								<td><input type="radio" id="thirsty" name="thirsty" value="3" title="唾液明显减少，口腔发干，稍欲饮水" > </td>
								<td><input type="radio" id="thirsty" name="thirsty" value="4" title="唾液甚少，口腔黏膜身甚干燥，常欲饮水"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">纳差</td>
								<td><input type="radio" id="poorAppetite" name="poorAppetite" value="1" title="食欲欠佳，但基本保持原食量" checked> </td>
								<td><input type="radio" id="poorAppetite" name="poorAppetite" value="2" title="食欲减退，食量减1/3" > </td>
								<td><input type="radio" id="poorAppetite" name="poorAppetite" value="3" title="不思饮食，食量减1/2以上" > </td>
								<td><input type="radio" id="poorAppetite" name="poorAppetite" value="4" title="食欲欠佳，但基本保持原食量"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">疲乏</td>
								<td><input type="radio" id="wary" name="wary" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="wary" name="wary" value="2" title="精神不振，不喜多言，但能坚持工作或学习" > </td>
								<td><input type="radio" id="wary" name="wary" value="3" title="精神疲惫，困倦少言，工作或学习能力下降" > </td>
								<td><input type="radio" id="wary" name="wary" value="4" title="精神极度疲乏，倦卧少言，几乎不能工作学习"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">懒言</td>
								<td><input type="radio" id="poorTalk" name="poorTalk" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="poorTalk" name="poorTalk" value="2" title="表情言谈减少，不喜多言，不问不答" > </td>
								<td><input type="radio" id="poorTalk" name="poorTalk" value="3" title="表情沉默，懒于言语，多问少答" > </td>
								<td><input type="radio" id="poorTalk" name="poorTalk" value="4" title="偶语甚至终日无语，问而不答"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">五心烦热</td>
								<td><input type="radio" id="allHot" name="allHot" value="1" title="0分" checked>&nbsp;</td>
								<td><input type="radio" id="allHot" name="allHot" value="2" title="心中微烦，手足心微热，或为偶发" > </td>
								<td><input type="radio" id="allHot" name="allHot" value="3" title="心烦较甚，手足心发热，且有面热、口渴等症" > </td>
								<td><input type="radio" id="allHot" name="allHot" value="4" title="心神烦躁，手足心发烫，多伴易怒、面赤等症"> </td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">善太息</td>
								<td><input type="radio" id="distress" name="distress" value="1" title="0分" checked></td>
								<td><input type="radio" id="distress" name="distress" value="2" title="胸脘痞闷，似欲太息，≤5次/日" ></td>
								<td><input type="radio" id="distress" name="distress" value="3" title="胸脘痞闷，太息方舒，5-10次/日" > </td>
								<td><input type="radio" id="distress" name="distress" value="4" title="胸脘痞闷，时欲太息，＞10次/日"> </td>
							</tr>
							
						</tbody>
						
					</table>
					<!--  form fields List  end-->
			        <hr size="1" color="CCCCCC" width="100%">
			        <div class="layui-input-block" aling="center">   
		                 <button class="layui-btn" lay-filter="demo1" lay-submit="">保存</button>  
		                 <button class="layui-btn layui-btn-primary" type="reset">关闭</button>  
		            </div> 
					</form>
				</div>
			</fieldset>
			
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
					$.post("${pageContext.request.contextPath}/constipation/saveConSymptomChn.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("临床症状调查表提交成功！");
							alert(parent.name);
							parent.parent.deleteTab('中医症状');
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