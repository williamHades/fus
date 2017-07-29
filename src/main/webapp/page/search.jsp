<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>患者查询</title>
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
        
        <script type="text/javascript" src="${pageContext.request.contextPath}/javascript/jquery.1.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/fancybox/fancyboxmin.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/lay/modules/laypage.js"></script>
        <script type="text/javascript">
        $(document).ready(function(){
            $(".tip_popup").fancybox({
                'titlePosition': 'inside',
                'transitionIn': 'none',
                'transitionOut': 'none'
            });           
            $('.popup_alert').fancybox({
				scrolling: 'no',
		        onStart: function (e) {
		            $('#patientRecordForm')[0].reset();
		            $('#popuplink').attr('href', $(e).attr('link'));
		            $('#popup').show();
		        }, onClosed: function () {
		            $('#popup').hide();
		        }
			});
			$("#patientRecord_add").click(function(){				
				/* $("#id").val("");
				$("#ticketNo").val("");
				$("#patientNo").val("");
				$("#patientId").val("");
				$("#patientName").val("");
				$("#patientSex").val("");
				$("#patientAge").val("");
				$("#patientContact").val("");
				$("#patientCareer").val("");
				$("#siteHome").val("");
				$("#siteWork").val("");
				$("#patientEducation").val("");
				$("#patientMarried").val("");
				$("#patientChild").val("");
				$("#patientEconomy").val("");
				$("#patientGroup").val(""); 				
		        $("input[id='resetRecord']").click(); 
		        */
				//GetNoticeList(0,1);
			})
			$("#patientRecord_search").click(function(){
				alert($("input:radio[name='searchPatientSex']:checked").val());
				//GetNoticeList(0,1);
			})
			$("#patientRecord_reset").click(function(){
				$("#searchPatientGroups").val("");
				$("#searchPatientName").val("");
				$("#searchPatientSex").val("");
				$("#searchPatientAge").val("");
				$("#searchPatientNo").val("");
				$("#searchCreateTimeStart").val("");
				$("#searchCreateTimeEnd").val("");
			})
        });
    </script>
	</head>
	<body>
		<div id="searchDiv" style="margin: 15px;" >
			<form id="patientSearchForm" class="layui-form" action="">
        		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;"><legend>查询条件</legend></fieldset>
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">患者姓名：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="searchPatientName" name="searchPatientName" placeholder="患者姓名" autocomplete="off" class="layui-input">
						</div>
                        <div class="layui-form-label layui-form-label2" style="width: 100px;">性别：</div>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="radio" id="searchPatientSex" name="searchPatientSex" value="1" title="男">
							<input type="radio" id="searchPatientSex" name="searchPatientSex" value="2" title="女">
						</div>
                        <div class="layui-form-label layui-form-label2" style="width: 100px;">年龄：</div>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="searchPatientAge" name="searchPatientAge" placeholder="请输入年龄" autocomplete="off" class="layui-input">
						</div>
                        <div class="layui-input-inline" style="width: 80px;">
							<!--<a class="layui-btn" href="#popup" link="http:" > <button id="patientRecord_search" class="layui-btn"> 查询 </button> </a>  -->
							<a class="layui-btn" href="javascript:GetNoticeList(0,1)" > 查询 </a>  
						</div>
					</div>
				</div>
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">编号：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="searchPatientNo" name="searchPatientNo" placeholder="编号" autocomplete="off" class="layui-input">
						</div>
						<!-- <div class="layui-form-label layui-form-label2" >诊断：</div> -->
						<div class="layui-input-inline" style="width: 415px;">
							<label class="layui-form-label" style="width: 100px;">编号：</label>
							<input type="radio" id="searchPatientGroups" name="searchPatientGroups" value="1" title="便秘" 	>
							<input type="radio" id="searchPatientGroups" name="searchPatientGroups" value="2" title="胃食管反流症"	>
						</div>
						<div class="layui-input-inline" ></div>
                        <div class="layui-input-inline" style="width: 80px;">
							<button class="layui-btn" id="patientRecord_reset">清空</button>
						</div>
					</div>
				</div>
                <div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label" style="width: 100px;">就诊时间：</label>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="searchCreateTimeStart" name="searchCreateTimeStart" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this})">
						</div>
                        <div class="layui-form-label layui-form-label1" style="width: 100px;">至：</div>
						<div class="layui-input-inline" style="width: 180px;">
							<input type="text" id="searchCreateTimeEnd" name="searchCreateTimeEnd"  autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this})">
						</div>
						<div class="layui-input-inline" style="width: 80px;margin-left:174px">
							<a class="popup_alert" href="#popup" link="http:" ><button class="layui-btn" id="patientRecord_add"><i class="layui-icon"></i> 新增</button></a>
						</div>
					</div>
				</div>
              </form>  
            <fieldset  class="layui-elem-field layui-field-title">
                <legend>患者列表</legend>
                <div id="notice_div"></div>
                <!--  分页控件    -->
                <div id="patientRecordPages" align="center"></div>
				<ul id="biuuu_city_list"></ul>                	
            </fieldset>
            <div class="admin-table-page">	</div>
			<div id="paged" class="page">	</div>                         
                <div id="popup" style="display:none; overflow-y: auto; overflow-x:hidden; height:400px; width:800px;">
					<form id="patientRecordForm" name="patientRecordForm" class="layui-form" action="savePatientRecord.action">
	        			<!--popup form start-->
	                    <div class="layui-form-item">
	                    	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;"> <legend>新增患者就诊记录</legend> </fieldset>
						</div>
	                    <!-- form fields List Start -->
	                    <div class="layui-form-item" style="float:right;margin-right:10%;display:none;">
							<div class="layui-inline">
								<label class="layui-form-label">ID：</label>
								<div class="layui-input-inline" style="width: 180px;">
									<input type="text" id="id" name="id" placeholder="请输入ID" autocomplete="off" class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item" style="float:right;margin-right:10%;display:none;">
							<div class="layui-inline">
								<label class="layui-form-label">单号：</label>
								<div class="layui-input-inline" style="width: 180px;">
									<input type="text" id="ticketNo" name="ticketNo" placeholder="请输入单号" autocomplete="off" class="layui-input">
								</div>
							</div>
						</div>
	                    <div class="layui-form-item">
								<label class="layui-form-label"><span class="red">*</span>病历号：</label>
								<div class="layui-input-block" >
									<input type="text" id="patientNo" name="patientNo" placeholder="请输入病历号" autocomplete="off" class="layui-input">
								</div>
						</div>
	                	<div class="layui-form-item">
	                        <label class="layui-form-label"><span class="red">*</span> 编号：</label>
	                        <div class="layui-input-block">
	                            <input type="text" id="patientId" name="patientId" placeholder="请输入就诊卡号" class="layui-input">
	                        </div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label"><span class="red">*</span> 患者姓名：</label>
	                        <div class="layui-input-block">
	                            <input type="text" id="patientName" name="patientName" placeholder="请输入患者姓名" class="layui-input">
	                        </div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label"><span class="red">*</span> 身份证号：</label>
	                        <div class="layui-input-block">
	                            <input type="text" id="patientCode" name="patientCode" placeholder="请输入身份证号" class="layui-input">
	                        </div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label">性别：</label>
	                        <div class="layui-input-block">
	                            <input type="radio" id="patientSex" name="patientSex" value="1" 	title="男"  checked>
	                            <input type="radio" id="patientSex" name="patientSex" value="2" 	title="女">
	                        </div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label">年龄：</label>
	                        <div class="layui-input-block">
	                            <input type="text" id="patientAge" name="patientAge" lay-verify="age" autocomplete="off" placeholder="请输入患者年龄" class="layui-input">
	                        </div>
						</div>
	                    <div class="layui-form-item">
	                        <label class="layui-form-label">联系方式：</label>
	                        <div class="layui-input-block">
	                            <input type="tel" id="patientContact" name="patientContact" lay-verify="phone" placeholder="请输入联系方式" autocomplete="off" class="layui-input">
	                        </div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">职业：</label>
								<div class="layui-input-block" >
									<input type="text" id="patientCareer" name="patientCareer" placeholder="请输入职业" autocomplete="off" class="layui-input">
								</div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">现住址：</label>
							<div class="layui-input-block">
								<input type="text" id="siteHome" name="siteHome" lay-verify="add" autocomplete="off" placeholder="请输入住址" class="layui-input">
							</div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">工作单位：</label>
							<div class="layui-input-block">
								<input type="text" id="siteWork" name="siteWork" lay-verify="add" autocomplete="off" placeholder="请输入工作单位" class="layui-input">
							</div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">教育程度：</label>
							<div class="layui-input-block">
								<input type="radio" id="patientEducation" name="patientEducation" value="1" 		title="小学" checked="">
								<input type="radio" id="patientEducation" name="patientEducation" value="2" title="初中">
								<input type="radio" id="patientEducation" name="patientEducation" value="3" 	title="高中或中专">
		                        <input type="radio" id="patientEducation" name="patientEducation" value="4" 	title="大专">
								<input type="radio" id="patientEducation" name="patientEducation" value="5" 	title="大学及以上" >
							</div>
						</div>
		                <div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">婚姻状况：</label>
								<div class="layui-input-inline" style="width:250px">
									<input type="radio" id="patientMarried" name="patientMarried" value="1" title="已婚" checked="">
		                        	<input type="radio" id="patientMarried" name="patientMarried" value="2" title="未婚">
									<input type="radio" id="patientMarried" name="patientMarried" value="3" title="离婚">
								</div>
							</div>
						</div>
		                <div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">子女：</label>
								<div class="layui-input-inline" style="width:250px">
									<input type="radio" id="patientChild" name="patientChild" value="1" title="有" checked="">
		                        	<input type="radio" id="patientChild" name="patientChild" value="2" title="无">
								</div>
							</div>
						</div>
		                <div class="layui-form-item">
							<label class="layui-form-label">家庭经济情况：</label>
							<div class="layui-input-block">
								<input type="radio" id="patientEconomy" name="patientEconomy" value="1" title="很好" checked="">
								<input type="radio" id="patientEconomy" name="patientEconomy" value="2" title="好">
								<input type="radio" id="patientEconomy" name="patientEconomy" value="3" title="一般">
		                        <input type="radio" id="patientEconomy" name="patientEconomy" value="4" title="差">
								<input type="radio" id="patientEconomy" name="patientEconomy" value="5" title="很差">
							</div>
						</div>
						<div class="layui-form-item">
	                        <label class="layui-form-label">疾病分组：</label>
	                        <div class="layui-input-block">
	                            <input type="radio" id="patientGroup" name="patientGroup" value="1" title="便秘" checked>
	                            <input type="radio" id="patientGroup" name="patientGroup" value="2" title="反流">
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
									<input type="text" name="operator" placeholder="请输入病历号" autocomplete="on" class="layui-input">
								</div>
							</div>
						</div>
	                    <!--  form fields List  end-->
	                    <hr size="1" color="CCCCCC" width="100%">
	                    <div class="layui-input-block">   
                              <button class="layui-btn" lay-filter="demo1" lay-submit="">立即提交</button>  
                              <button class="layui-btn layui-btn-primary" type="reset" id="resetRecord" name="resetRecord">重置</button>  
                        </div>  	                    
	                </form>
				</div>
		</div>
		<script>
			layui.use('layer', function() {
					var $ = layui.jquery,
					layer = layui.layer;
				});
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
				//提交URL地址  数据传递到后台
					$.post("${pageContext.request.contextPath}/patient/savePatientRecord.action",data.field,function(res){
						//获取返回结果，{"success":true}
						var re = eval("("+res+")");
						if(re.success){
							//弹出提示框
							layer.alert("病患记录提交成功！");
							//关闭渲染div弹窗窗口
							$.fancybox.close();
							//重置form表单
							$("#reset").trigger("click");
						}else{
							layer.alert("提交失败！请联系管理员！");
						};
						GetNoticeList(0,1);
					});
					return false;
				});
			});		
		</script>
        <script type="text/javascript">
			var urlAshx = "${pageContext.request.contextPath}/patient/listPatientRecord.action";
			var prid = "";
			//var pages = 0;
			//获取分页好的公告内容
			function GetNoticeList(curr, cid) {
				$.getJSON(urlAshx,
				{//参数
					action: "listPatientRecord.action",
					courseid: cid,
					page: curr || 1,//
					nums: 10,		//每页显示的条数
					searchPatientGroups:$("input:radio[name='searchPatientGroups']:checked").val() || "",
					searchPatientName:$("#searchPatientName").attr("value"),
					searchPatientSex:$("input:radio[name='searchPatientSex']:checked").val() || "",
					searchPatientAge:$("#searchPatientAge").attr("value"),
					searchPatientNo:$("#searchPatientNo").attr("value"),
					searchCreateTimeStart:$("#searchCreateTimeStart").attr("value"),
					searchCreateTimeEnd:$("#searchCreateTimeEnd").attr("value")
				}, function (datajson) {
				//此处输出内容
		          var table = $("<table></table>");
		          table.attr({class:"layui-table admin-table",id:"page"});
		          var thead = $("<thead><tr><th>单号</th><th>姓名</th><th>性别</th><th>年龄</th><th>职业</th><th>手机号</th><th>创建时间</th><th>修改时间</th><th>操作</th></tr></thead>");
		          table.append(thead);
		          var tbody = $("<tbody></tbody>");
		          tbody.attr({id:"content"});
		          if(datajson !=null){
		          	$(datajson.rows).each(function(n,Row){
		          		var tr = $("<tr></tr>");
		                    tr.append("<td>"+ Row.ticketNo + "</td>");
		                    tbody.append(tr);
		                    tr.append("<td>"+ Row.patientName + "</td>");
		                    tbody.append(tr);
		                    tr.append("<td>"+ Row.patientSex + "</td>");
		                    tbody.append(tr);
		                    tr.append("<td>"+ Row.patientAge + "</td>");
		                    tbody.append(tr);
		                    tr.append("<td>"+ Row.patientCareer + "</td>");
		                    tbody.append(tr);
		                    tr.append("<td>"+ Row.patientContact + "</td>");
		                    tbody.append(tr);
		                    tr.append("<td>"+ Row.createTime + "</td>");
		                    tbody.append(tr);
		                    tr.append("<td>"+ Row.updateTime + "</td>");
		                    tbody.append(tr);
		                    var td = $("<td></td>");
		                    var div = $("<div lay-filter=\"side\"></div>");
		                    div.attr({class:"layui-nav-item"});		                    
		                    //var button1 = $("<button detailId=" + Row.weeklyId +">详情</button>");
		                    //button1.attr({class:"layui-btn detail"});
		                    var a =$("<a>详情</a>");
		                    a.attr("onclick","openPRDetail(\""+ Row.ticketNo +"\")");
		                    a.attr("html","详情");;
		                    a.attr({class:"layui-btn detail"});
		                    div.append(a);
		                    td.append(div);
		                    tr.append(td);
		                    tbody.append(tr);
		          	});
		          }
		          table.append(tbody);
		          $("#notice_div").empty();
		          $("#notice_div").append(table);
		          
					layui.use(['laypage', 'layer'], function(){
						  var laypage = layui.laypage,
						  layer = layui.layer;					  
						  //调用分页
						  laypage({
						    cont: 'patientRecordPages',
						    pages: datajson.pages , //得到总页数
					      	curr: curr || 1, //当前页
						    skip: true,
	  				 		skin: 'molv',
	  						groups:5,
						    jump: function(obj,first){
						    	if(!first){
						      	 GetNoticeList(obj.curr);
						    	}
						    }
						  });
					});   
		      });
	    	};
		    //运行
		    GetNoticeList(0,1);
		    //window open
		    function openPRDetail(prid){
		    	//alert(prid);
		    	if(parent.tab.exists("就诊记录")>1){
		    		parent.deleteTab("就诊记录");
		    	}
		    	parent.tab.tabAdd({
					href:  "page/patientRecord.jsp?pid="+prid, //地址
					icon:  "",
					id: 21,
					title: "就诊记录"
				});
		    }
		</script>
		<script type="text/javascript">
			function testR(){
				alert("jell");
			}
		</script>
	</body>

</html>