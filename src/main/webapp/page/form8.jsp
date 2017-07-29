<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>预留form8</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
	</head>

	<body>
		<div style="margin: 15px;">
			<!--<blockquote class="layui-elem-quote">
				<h1>Tab 组件说明文档</h1></blockquote>-->
			<fieldset class="layui-elem-field layui-field-title">
				<legend>预留form8</legend>
			</fieldset>
                <form class="layui-form" action="">
				<div class="layui-field-box">
					<table class="layui-table" style="width:50%">
						<thead>
						</thead>
						<tbody>
							<tr>
								<td width="160">舌红苔黄</td>
								<td>
                                	<input type="radio" name="tongue1" value="无" title="无" checked>
									<input type="radio" name="tongue1" value="有" title="有">
                                </td>
							</tr>
							<tr>
								<td>舌红苔黄腻</td>
								<td>
                                	<input type="radio" name="tongue2" value="无" title="无" checked>
									<input type="radio" name="tongue2" value="有" title="有">
                                </td>
							</tr>
                            <tr>
							  <td>舌淡苔薄</td>
								<td>
                                	<input type="radio" name="tongue3" value="无" title="无" checked>
									<input type="radio" name="tongue3" value="有" title="有">
                                </td>
							</tr>
                            <tr>
							  <td>舌淡红苔白腻</td>
								<td>
                                	<input type="radio" name="tongue4" value="无" title="无" checked>
									<input type="radio" name="tongue4" value="有" title="有">
                                </td>
							</tr>
                            <tr>
								<td>舌质紫暗或有瘀斑</td>
								<td>
                                	<input type="radio" name="tongue5" value="无" title="无" checked>
									<input type="radio" name="tongue5" value="有" title="有">
                                </td>
							</tr>
                        </tbody>
					</table>
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
					layer.alert(JSON.stringify(data.field), {
						title: '最终的提交信息'
					})
					return false;
				});
			});
		</script>
	</body>

</html>