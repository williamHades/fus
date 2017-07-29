<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>Gerd-Q量表评分</title>
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
        		$.getJSON("${pageContext.request.contextPath}/gerd/findGerQScore.action",{pid:pid},function(data){
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
				<legend>Gerd-Q量表评分</legend>
			</fieldset>
                <form class="layui-form" action="">
				<div class="layui-field-box">
					<table class="layui-table" style="width:50%">
						<thead>
                        	<tr>
                            	<td>&nbsp;</td>
                                <td>无</td>
                                <td>轻度</td>
                                <td>中度</td>
                                <td>重度</td>
                            </tr>
						</thead>
						<tbody>
							<tr>
								<td width="160">烧心感 </td>
								<td>
                                	<input type="radio" name="feel1" value="0分" title="0分" checked>
                                </td>
                                <td>
                                	<input type="radio" name="feel1" value="1分" title="1分">
                                </td>
                                <td>
                                	<input type="radio" name="feel1" value="2分" title="2分">
                                </td>
                                <td>
                                	<input type="radio" name="feel1" value="3分" title="3分">
                                </td>
							</tr>
							<tr>
								<td width="160">反流 </td>
								<td>
                                	<input type="radio" name="feel2" value="0分" title="0分" checked>
                                </td>
                                <td>
                                	<input type="radio" name="feel2" value="1分" title="1分">
                                </td>
                                <td>
                                	<input type="radio" name="feel2" value="2分" title="2分">
                                </td>
                                <td>
                                	<input type="radio" name="feel2" value="3分" title="3分">
                                </td>
							</tr>
                            <tr>
								<td width="160">上腹部疼痛 </td>
								<td>
                                	<input type="radio" name="feel3" value="0分" title="0分" checked>
                                </td>
                                <td>
                                	<input type="radio" name="feel3" value="1分" title="1分">
                                </td>
                                <td>
                                	<input type="radio" name="feel3" value="2分" title="2分">
                                </td>
                                <td>
                                	<input type="radio" name="feel3" value="3分" title="3分">
                                </td>
							</tr>
                            <tr>
								<td width="160">恶心 </td>
								<td>
                                	<input type="radio" name="feel4" value="0分" title="0分" checked>
                                </td>
                                <td>
                                	<input type="radio" name="feel4" value="1分" title="1分">
                                </td>
                                <td>
                                	<input type="radio" name="feel4" value="2分" title="2分">
                                </td>
                                <td>
                                	<input type="radio" name="feel4" value="3分" title="3分">
                                </td>
							</tr>
                            <tr>
								<td width="160">睡眠障碍 </td>
								<td>
                                	<input type="radio" name="feel5" value="0分" title="0分" checked>
                                </td>
                                <td>
                                	<input type="radio" name="feel5" value="1分" title="1分">
                                </td>
                                <td>
                                	<input type="radio" name="feel5" value="2分" title="2分">
                                </td>
                                <td>
                                	<input type="radio" name="feel5" value="3分" title="3分">
                                </td>
							</tr>
                            <tr>
								<td width="160">是否使用OTC药物 </td>
								<td>
                                	<input type="radio" name="feel6" value="0分" title="0分" checked>
                                </td>
                                <td>
                                	<input type="radio" name="feel6" value="1分" title="1分">
                                </td>
                                <td>
                                	<input type="radio" name="feel6" value="2分" title="2分">
                                </td>
                                <td>
                                	<input type="radio" name="feel6" value="3分" title="3分">
                                </td>
							</tr>
                        </tbody>
					</table>
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
					$.post("${pageContext.request.contextPath}/gerd/saveGerQScore.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("临床症状调查表提交成功！");
							alert(parent.name);
							parent.parent.deleteTab('GERDQ评分表');
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