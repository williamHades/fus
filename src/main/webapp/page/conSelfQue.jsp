<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>		

	<head>
		<meta charset="utf-8">
		<title>便秘症状自评问卷</title>
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
        		$.getJSON("${pageContext.request.contextPath}/constipation/findConSelfQue.action",{pid:pid},function(data){
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
            
				<legend>便秘症状自评问卷</legend>
                
                <blockquote class="layui-elem-quote">
				<h1>(patient assessment of constipation symptom, PAC-SYM)</h1></blockquote>
				
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
								<th colspan="2" rowspan="2" align="center" style="width:40%">症状</th>
								<th colspan="5">严重程度</th>
							</tr>
                            <tr>
								<th colspan="5">无――――――――――――――――→非常严重</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan="2" align="center">粪便性状</td>
								<td align="center">粪质坚硬</td>
                                <td align="center"><input type="radio" id="stoolSolid" name="stoolSolid" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="stoolSolid" name="stoolSolid" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="stoolSolid" name="stoolSolid" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="stoolSolid" name="stoolSolid" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="stoolSolid" name="stoolSolid" value="4" title="4"></td>
                                
							</tr>
							<tr>
							  <td align="center">粪量少</td>
								<td align="center"><input type="radio" id="stoolNumLess" name="stoolNumLess" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="stoolNumLess" name="stoolNumLess" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="stoolNumLess" name="stoolNumLess" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="stoolNumLess" name="stoolNumLess" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="stoolNumLess" name="stoolNumLess" value="4" title="4"></td>
							</tr>
                            <tr>
								<td rowspan="7" align="center">直肠症状</td>
								<td align="center">排便次数减少</td>
								<td align="center"><input type="radio" id="stoolTimesLess" name="stoolTimesLess" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="stoolTimesLess" name="stoolTimesLess" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="stoolTimesLess" name="stoolTimesLess" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="stoolTimesLess" name="stoolTimesLess" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="stoolTimesLess" name="stoolTimesLess" value="4" title="4"></td>
							</tr>
							<tr>
							  <td align="center">排便费力</td>
							  <td align="center"><input type="radio" id="stoolHard" name="stoolHard" value="0" title="0"checked></td>
							  <td align="center"><input type="radio" id="stoolHard" name="stoolHard" value="1" title="1" ></td>
							  <td align="center"><input type="radio" id="stoolHard" name="stoolHard" value="2" title="2" ></td>
							  <td align="center"><input type="radio" id="stoolHard" name="stoolHard" value="3" title="3" ></td>
							  <td align="center"><input type="radio" id="stoolHard" name="stoolHard" value="4" title="4"></td>
						  </tr>
							<tr>
							  <td align="center">排便疼痛</td>
							  <td align="center"><input type="radio"   id="stoolHurt" name="stoolHurt" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="stoolHurt" name="stoolHurt" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="stoolHurt" name="stoolHurt" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="stoolHurt" name="stoolHurt" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="stoolHurt" name="stoolHurt" value="4" title="4"></td>
						  </tr>
							<tr>
							  <td align="center">排便 不尽感</td>
							  <td align="center"><input type="radio" id="stoolEndless" name="stoolEndless" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="stoolEndless" name="stoolEndless" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="stoolEndless" name="stoolEndless" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="stoolEndless" name="stoolEndless" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="stoolEndless" name="stoolEndless" value="4" title="4"></td>
						  </tr>
							<tr>
							  <td align="center">有便意而难以排出</td>
							  <td align="center"><input type="radio" id="stoolHardOut" name="stoolHardOut" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="stoolHardOut" name="stoolHardOut" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="stoolHardOut" name="stoolHardOut" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="stoolHardOut" name="stoolHardOut" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="stoolHardOut" name="stoolHardOut" value="4" title="4"></td>
						  </tr>
							<tr>
							  <td align="center">直肠出 血或撕裂</td>
							  <td align="center"><input type="radio" id="hemoproctia" name="hemoproctia" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="hemoproctia" name="hemoproctia" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="hemoproctia" name="hemoproctia" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="hemoproctia" name="hemoproctia" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="hemoproctia" name="hemoproctia" value="4" title="4"></td>
						  </tr>
							<tr>
							  <td align="center">直肠烧灼感</td>
								<td align="center"><input type="radio" id="rectalBurning" name="rectalBurning" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="rectalBurning" name="rectalBurning" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="rectalBurning" name="rectalBurning" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="rectalBurning" name="rectalBurning" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="rectalBurning" name="rectalBurning" value="4" title="4"></td>
							</tr>
                            <tr>
								<td rowspan="3" align="center">腹部症状</td>
								<td align="center">胃痛</td>
								<td align="center"><input type="radio" id="stomachache" name="stomachache" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="stomachache" name="stomachache" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="stomachache" name="stomachache" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="stomachache" name="stomachache" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="stomachache" name="stomachache" value="4" title="4"></td>
							</tr>
							<tr>
							  <td align="center">腹部痉挛 疼痛</td>
							  <td align="center"><input type="radio" id="cramping" name="cramping" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="cramping" name="cramping" value="1" title="1" ></td>
								<td align="center"><input type="radio" id="cramping" name="cramping" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="cramping" name="cramping" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="cramping" name="cramping" value="4" title="4"></td>
						  </tr>
							<tr>
							  <td align="center">腹部胀满</td>
							  <td align="center"><input type="radio" id="turgor" name="turgor" value="0" title="0"checked></td>
								<td align="center"><input type="radio" id="turgor" name="turgor"  value="1" title="1" ></td>
								<td align="center"><input type="radio" id="turgor" name="turgor"  value="2" title="2" ></td>
								<td align="center"><input type="radio" id="turgor" name="turgor"  value="3" title="3" ></td>
								<td align="center"><input type="radio" id="turgor" name="turgor"  value="4" title="4"></td>
						  </tr>
                          <tr>
							  <td colspan="2" align="center">评分</td>
							  <td colspan="5" align="center">&nbsp;</td>
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
					$.post("${pageContext.request.contextPath}/constipation/saveConLifeQua.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("临床症状调查表提交成功！");
							alert(parent.name);
							parent.parent.deleteTab('自评问卷');
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