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
        		initGerSQueRecord(pid);
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
                
				<div class="layui-form-item" >
					<input type="hidden" id="recordId" name="recordId" class="layui-input">
					<input type="hidden" id="createTime" name="createTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
					<input type="hidden" id="updateTime" name="updateTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
					<input type="hidden" id="ticketId" name="ticketId" class="layui-input">
								
				</div>
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
                                	<input type="hidden" id="heartBurn" name="heartBurn" value="" title="0分" >
                                	<input type="radio" id="heartBurn" name="heartBurn" value="1" title="0分" >
                                </td>
                                <td>
                                	<input type="radio" id="heartBurn" name="heartBurn" value="2" title="1分">
                                </td>
                                <td>
                                	<input type="radio" id="heartBurn" name="heartBurn" value="3" title="2分">
                                </td>
                                <td>
                                	<input type="radio" id="heartBurn" name="heartBurn" value="4" title="3分">
                                </td>
							</tr>
							<tr>
								<td width="160">反流 </td>
								<td>
                                	<input type="hidden" id="palirrhea" name="palirrhea" value="" title="0分" >
                                	<input type="radio" id="palirrhea" name="palirrhea" value="1" title="0分" >
                                </td>
                                <td>
                                	<input type="radio" id="palirrhea" name="palirrhea" value="2" title="1分">
                                </td>
                                <td>
                                	<input type="radio" id="palirrhea" name="palirrhea" value="3" title="2分">
                                </td>
                                <td>
                                	<input type="radio" id="palirrhea" name="palirrhea" value="4" title="3分">
                                </td>
							</tr>
                            <tr>
								<td width="160">上腹部疼痛 </td>
								<td>
                                	<input type="hidden" id="epigastricPain" name="epigastricPain" value="" title="0分" >
                                	<input type="radio" id="epigastricPain" name="epigastricPain" value="1" title="0分" >
                                </td>
                                <td>
                                	<input type="radio" id="epigastricPain" name="epigastricPain" value="2" title="1分">
                                </td>
                                <td>
                                	<input type="radio" id="epigastricPain" name="epigastricPain" value="3" title="2分">
                                </td>
                                <td>
                                	<input type="radio" id="epigastricPain" name="epigastricPain" value="4" title="3分">
                                </td>
							</tr>
                            <tr>
								<td width="160">恶心 </td>
								<td>
                                	<input type="hidden" id="nausea" name="nausea" value="" title="0分" >
                                	<input type="radio" id="nausea" name="nausea" value="1" title="0分" >
                                </td>
                                <td>
                                	<input type="radio" id="nausea" name="nausea" value="2" title="1分">
                                </td>
                                <td>
                                	<input type="radio" id="nausea" name="nausea" value="3" title="2分">
                                </td>
                                <td>
                                	<input type="radio" id="nausea" name="nausea" value="4" title="3分">
                                </td>
							</tr>
                            <tr>
								<td width="160">睡眠障碍 </td>
								<td>
                                	<input type="hidden" id="dyssomnia" name="dyssomnia" value="" title="0分" >
                                	<input type="radio" id="dyssomnia" name="dyssomnia" value="1" title="0分" >
                                </td>
                                <td>
                                	<input type="radio" id="dyssomnia" name="dyssomnia" value="2" title="1分">
                                </td>
                                <td>
                                	<input type="radio" id="dyssomnia" name="dyssomnia" value="3" title="2分">
                                </td>
                                <td>
                                	<input type="radio" id="dyssomnia" name="dyssomnia" value="4" title="3分">
                                </td>
							</tr>
                            <tr>
								<td width="160">是否使用OTC药物 </td>
								<td>
                                	<input type="hidden" id="isOtc" name="isOtc" value="" title="0分" >
                                	<input type="radio" id="isOtc" name="isOtc" value="1" title="0分" >
                                </td>
                                <td>
                                	<input type="radio" id="isOtc" name="isOtc" value="2" title="1分">
                                </td>
                                <td>
                                	<input type="radio" id="isOtc" name="isOtc" value="3" title="2分">
                                </td>
                                <td>
                                	<input type="radio" id="isOtc" name="isOtc" value="4" title="3分">
                                </td>
							</tr>
                        </tbody>
					</table>
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
					$.post("${pageContext.request.contextPath}/gerd/saveGerQScore.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("GERDQ评分表提交成功！");
							//alert(parent.name);
							parent.parent.deleteTab('GERDQ评分表');
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
				$.getJSON("${pageContext.request.contextPath}/gerd/findGerQScore.action",{pid:pid},function(data){
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