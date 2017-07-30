<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title>胃食管反流病中医相关症状条目</title>
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
        		$.getJSON("${pageContext.request.contextPath}/gerd/findGerSymptomChn.action",{pid:pid},function(data){
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
			<!--<blockquote class="layui-elem-quote">
				<h1>Tab 组件说明文档</h1></blockquote>-->
			<fieldset class="layui-elem-field layui-field-title">
				<legend>胃食管反流病中医相关症状条目</legend>
				<div class="layui-field-box">
				<form class="layui-form" action="">
					<table class="layui-table">
						<thead>
							<tr>
								<th rowspan="2" width="100">症状条目</th>
								<th rowspan="2" width="80">评价内容</th>
								<th colspan="4">等级标准</th>
							</tr>
                            <tr>
								<th width="80">无</th>
								<th>轻度（1分）</th>
								<th>中度（2分）</th>
								<th>重度（3分）</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="center" class="layui-form-bg-gray">反酸</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="sourRegurgitation" name="sourRegurgitation" value="1" title="0分" >&nbsp;</td>
								<td><input type="radio" id="sourRegurgitation" name="sourRegurgitation" value="2" title="偶有，&lt;4次/日" ></td>
								<td><input type="radio" id="sourRegurgitation" name="sourRegurgitation" value="3" title="时有，4-10次/日" ></td>
								<td><input type="radio" id="sourRegurgitation" name="sourRegurgitation" value="4" title="频频，&gt;10次/日" ></td>
							</tr>
							<tr>
								<td align="center" class="layui-form-bg-gray">嗳气</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="ructusTimes" name="ructusTimes" value="1" title="0分" >&nbsp;</td>
								<td><input type="radio" id="ructusTimes" name="ructusTimes" value="2" title="偶有，&lt;4次/日"></td>
								<td><input type="radio" id="ructusTimes" name="ructusTimes" value="3" title="时有，4-10次/日"></td>
								<td><input type="radio" id="ructusTimes" name="ructusTimes" value="4" title="频频，&gt;10次/日"></td>
							</tr>
                            <tr>
                              <td rowspan="2" align="center" class="layui-form-bg-gray">烧心</td>
                              <td align="center" class="layui-form-bg-gray">频率</td>
                              <td><input type="radio" id="heartBurnTimes" name="heartBurnTimes" value="1" title="0分" >&nbsp;</td>
							  <td><input type="radio" id="heartBurnTimes" name="heartBurnTimes" value="2" title="＞3天发作1次，时作时止"></td>
							  <td><input type="radio" id="heartBurnTimes" name="heartBurnTimes" value="3" title="2-3天发作1次，发作频繁"></td>
							  <td><input type="radio" id="heartBurnTimes" name="heartBurnTimes" value="4" title="每天发作"></td>
                            </tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">持续时间</td>
								<td><input type="radio" id="ructusLasttime" name="ructusLasttime" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="ructusLasttime" name="ructusLasttime" value="2" title="1小时内可缓解"></td>
							    <td><input type="radio" id="ructusLasttime" name="ructusLasttime" value="3" title="1-3小时内可缓解"></td>
							    <td><input type="radio" id="ructusLasttime" name="ructusLasttime" value="4" title="＞3小时才缓解甚至一整天不能缓解"></td>
							</tr>
                            <tr>
                              <td rowspan="2" align="center" class="layui-form-bg-gray">胸背疼痛</td>
                              <td align="center" class="layui-form-bg-gray">频率</td>
                              <td><input type="radio" id="chestBackTimes" name="chestBackTimes" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="chestBackTimes" name="chestBackTimes" value="2" title="＞3天发作1次，时作时止"></td>
							    <td><input type="radio" id="chestBackTimes" name="chestBackTimes" value="3" title="2-3天发作1次，发作频繁"></td>
							    <td><input type="radio" id="chestBackTimes" name="chestBackTimes" value="4" title="每天发作"></td>
                            </tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">持续时间</td>
								<td><input type="radio" id="chestBackLasttime" name="chestBackLasttime" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="chestBackLasttime" name="chestBackLasttime" value="2" title="1小时内可缓解"></td>
							    <td><input type="radio" id="chestBackLasttime" name="chestBackLasttime" value="3" title="1-3小时内可缓解"></td>
							    <td><input type="radio" id="chestBackLasttime" name="chestBackLasttime" value="4" title="＞3小时才缓解甚至一整天不能缓解"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">心烦</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="vexation" name="vexation" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="vexation" name="vexation" value="2" title="偶有烦躁易急，情绪不宁，可以自控"></td>
							    <td><input type="radio" id="vexation" name="vexation" value="3" title="经常烦躁易急，有时难以自控"></td>
							    <td><input type="radio" id="vexation" name="vexation" value="4" title="持续烦躁易急，难以自控"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">胁胀</td>
								<td align="center" class="layui-form-bg-gray">&nbsp;</td>
								<td><input type="radio" id="ribside" name="ribside" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="ribside" name="ribside" value="2" title="微胀，＞3天发作1次，持续半小时可缓解"></td>
							    <td><input type="radio" id="ribside" name="ribside" value="3" title="较重，2-3天发作1次，持续半小时-2小时可缓解"></td>
							    <td><input type="radio" id="ribside" name="ribside" value="4" title="胀剧，精神紧张，坐立不安，每天发作，持续2小时才缓解，甚至终日不缓"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">口苦</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="bitterMouth" name="bitterMouth" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="bitterMouth" name="bitterMouth" value="2" title="口中似有苦味，偶发"></td>
							    <td><input type="radio" id="bitterMouth" name="bitterMouth" value="3" title="口中发苦，历时较久，食欲可减，常发"></td>
							    <td><input type="radio" id="bitterMouth" name="bitterMouth" value="4" title="口味甚苦，食欲常减，或伴恶吐，需漱口或食甜方舒，终日如此"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">嗳腐吞酸</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="putridAcid" name="putridAcid" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="putridAcid" name="putridAcid" value="2" title="＞3天发作1次，腐气不强，短暂即过"></td>
							    <td><input type="radio" id="putridAcid" name="putridAcid" value="3" title="2-3天发作1次，腐气较重"></td>
							    <td><input type="radio" id="putridAcid" name="putridAcid" value="4" title="每天发作，腐气熏鼻，十分难受"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">善食易饥</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="bulimia" name="bulimia" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="bulimia" name="bulimia" value="2" title="食后易饥，进食次数较常增1-2次，或食量较常增＜30%"></td>
							    <td><input type="radio" id="bulimia" name="bulimia" value="3" title="食后易饥，进食次数较常增3-4次，或食量较常增30%-60%"></td>
							    <td><input type="radio" id="bulimia" name="bulimia" value="4" title="食后易饥，进食次数较常增5次以上，甚至时时欲吃，食量较常增＞60%"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">胃中嘈杂</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="noisyStomach" name="noisyStomach" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="noisyStomach" name="noisyStomach" value="2" title="＞3天发作1次，1小时内可缓解，胃中微嘈，作息不受影响"></td>
							    <td><input type="radio" id="noisyStomach" name="noisyStomach" value="3" title="2-3天发作1次，1-3小时内可缓解，嘈杂明显，生物作息受影响"></td>
							    <td><input type="radio" id="noisyStomach" name="noisyStomach" value="4" title="每天发作，＞3小时才缓解甚至终日不缓解，嘈杂甚，生活作息严重受影响"></td>
							</tr>
                            <tr>
                              <td rowspan="2" align="center" class="layui-form-bg-gray">恶心</td>
                              <td align="center" class="layui-form-bg-gray">频率</td>
                              <td><input type="radio" id="nauseaTimes" name="nauseaTimes" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="nauseaTimes" name="nauseaTimes" value="2" title="＞3天发作1次，时作时止"></td>
							    <td><input type="radio" id="nauseaTimes" name="nauseaTimes" value="3" title="2-3天发作1次，发作频繁"></td>
							    <td><input type="radio" id="nauseaTimes" name="nauseaTimes" value="4" title="每天发作"></td>
                            </tr>
                            <tr>
                              <td align="center" class="layui-form-bg-gray">持续时间</td>
                              <td><input type="radio" id="nauseaLasttime" name="nauseaLasttime" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="nauseaLasttime" name="nauseaLasttime" value="2" title="1小时内可缓解"></td>
							    <td><input type="radio" id="nauseaLasttime" name="nauseaLasttime" value="3" title="1-3小时内可缓解"></td>
							    <td><input type="radio" id="nauseaLasttime" name="nauseaLasttime" value="4" title="＞3小时才缓解甚至一整天不能缓解"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">呕吐痰涎、清水</td>
								<td align="center" class="layui-form-bg-gray">&nbsp;</td>
								<td><input type="radio" id="saliva" name="saliva" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="saliva" name="saliva" value="2" title="＞3天发作1次，量少，＜10ml/次"></td>
							    <td><input type="radio" id="saliva" name="saliva" value="3" title="2-3天发作1次，量中，10-30ml/次"></td>
							    <td><input type="radio" id="saliva" name="saliva" value="4" title="每天发作，量多，＞30ml/次"></td>
							</tr>
							<tr>
								<td align="center" class="layui-form-bg-gray">疲乏</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="fatigue" name="fatigue" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="fatigue" name="fatigue" value="2" title="精神不振，不喜多言，但能坚持工作或学习"></td>
							    <td><input type="radio" id="fatigue" name="fatigue" value="3" title="精神疲惫，困倦少言，工作或学习能力下降"></td>
							    <td><input type="radio" id="fatigue" name="fatigue" value="4" title="精神极度疲乏，倦卧少言，几乎不能工作学习"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">纳差</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="poorAppetite" name="poorAppetite" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="poorAppetite" name="poorAppetite" value="2" title="食欲欠佳，但基本保持原食量"></td>
							    <td><input type="radio" id="poorAppetite" name="poorAppetite" value="3" title="食欲减退，食量减1/3"></td>
							    <td><input type="radio" id="poorAppetite" name="poorAppetite" value="4" title="不思饮食，食量减1/2以上"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">呃逆</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="hiccup" name="hiccup" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="hiccup" name="hiccup" value="2" title="偶有，&lt;4次/日"></td>
							    <td><input type="radio" id="hiccup" name="hiccup" value="3" title="时有，4-10次/日"></td>
							    <td><input type="radio" id="hiccup" name="hiccup" value="4" title="频频，&gt;10次/日"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">便溏</td>
								<td align="center" class="layui-form-bg-gray">——</td>
								<td><input type="radio" id="looseStool" name="looseStool" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="looseStool" name="looseStool" value="2" title="粪质偏溏，不成形，状似烂泥"></td>
							    <td><input type="radio" id="looseStool" name="looseStool" value="3" title="粪便溏薄，状似稀泥"></td>
							    <td><input type="radio" id="looseStool" name="looseStool" value="4" title="大便溏薄，稀水样便"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">咽部异物感</td>
								<td align="center" class="layui-form-bg-gray">&nbsp;</td>
								<td><input type="radio" id="foreignPharynx" name="foreignPharynx" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="foreignPharynx" name="foreignPharynx" value="2" title="咽喉似有异物，吞咽多无影响"></td>
							    <td><input type="radio" id="foreignPharynx" name="foreignPharynx" value="3" title="咽喉异物感明显，吞咽多无影响"></td>
							    <td><input type="radio" id="foreignPharynx" name="foreignPharynx" value="4" title="咽部异物感极显，难以忍受，吞咽多无异常"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">声嘶</td>
								<td align="center" class="layui-form-bg-gray">&nbsp;</td>
								<td><input type="radio" id="hoarseness" name="hoarseness" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="hoarseness" name="hoarseness" value="2" title="略有声音发哑"></td>
							    <td><input type="radio" id="hoarseness" name="hoarseness" value="3" title="声音嘶哑但可忍受"></td>
							    <td><input type="radio" id="hoarseness" name="hoarseness" value="4" title="咽喉嘶哑，难以忍受，甚至不能说话"></td>
							</tr>
                            <tr>
								<td align="center" class="layui-form-bg-gray">呛咳</td>
								<td align="center" class="layui-form-bg-gray">&nbsp;</td>
								<td><input type="radio" id="bucking" name="bucking" value="1" title="0分" >&nbsp;</td>
							    <td><input type="radio" id="bucking" name="bucking" value="2" title="偶有咳嗽"></td>
							    <td><input type="radio" id="bucking" name="bucking" value="3" title="经常呛咳，影响生活作息"></td>
							    <td><input type="radio" id="bucking" name="bucking" value="4" title="呛咳剧烈，生活作息严重受影响"></td>
							</tr>
						</tbody>
					</table>
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
					$.post("${pageContext.request.contextPath}/gerd/saveGerSymptomChn.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("临床症状调查表提交成功！");
							alert(parent.name);
							parent.parent.deleteTab('相关中医症状条目');
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