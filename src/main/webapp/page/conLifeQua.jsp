<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	
	<head>
		<meta charset="utf-8">
		<title>便秘患者生活质量量表</title>
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
        		$.getJSON("${pageContext.request.contextPath}/constipation/findConLifeQua.action",{pid:pid},function(data){
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
            
				<legend>便秘患者生活质量量表（PAC-QOL）</legend>
                
                <blockquote class="layui-elem-quote">
				<h1>PAC-QOL是反映过去两周内便秘对您日常生活的影响。请按每个问题，选择回答。</h1></blockquote>
				
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
								<th style="text-align:left; width:40%">下列问题与便秘的症状有关。在过去的2周中，下面症状的严重程度或强度……</th>
								<th>一点也不</th>
								<th>有一点</th>
								<th>一般</th>
                                <th>比较严重</th>
								<th>非常严重</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="left">1.感到腹胀？</td>
								<td align="center"><input type="radio" id="c1001" name="c1001" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1001" name="c1001" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1001" name="c1001" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1001" name="c1001" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1001" name="c1001" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">2.感到身重？</td>
								<td align="center"><input type="radio" id="c1002" name="c1002" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1002" name="c1002" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1002" name="c1002" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1002" name="c1002" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1002" name="c1002" value="5" title="5"></td>
							</tr>
						</tbody>
					</table>
                    <table class="layui-table">
						<thead>
                            <tr>
								<th style="text-align:left; width:40%">下列问题关于便秘与日常生活。过去的2周里有多少时间…</th>
								<th>没有时间</th>
								<th>偶尔</th>
								<th>有时</th>
                                <th>多数时间</th>
								<th>总是</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="left">3.感到身体不舒服？</td>
								<td align="center"><input type="radio" id="c1003" name="c1003" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1003" name="c1003" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1003" name="c1003" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1003" name="c1003" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1003" name="c1003" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">4.有便意但排便困难？</td>
								<td align="center"><input type="radio" id="c1004" name="c1004" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1004" name="c1004" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1004" name="c1004" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1004" name="c1004" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1004" name="c1004" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">5.与他人在一起感到不自在？</td>
								<td align="center"><input type="radio" id="c1005" name="c1005" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1005" name="c1005" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1005" name="c1005" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1005" name="c1005" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1005" name="c1005" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">6.因为便秘吃的越来越少吗？</td>
								<td align="center"><input type="radio" id="c1006" name="c1006" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1006" name="c1006" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1006" name="c1006" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1006" name="c1006" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1006" name="c1006" value="5" title="5"></td>
							</tr>
						</tbody>
					</table>
                    <table class="layui-table">
						<thead>
                            <tr>
								<th style="text-align:left; width:40%">下列问题关于便秘与日常生活，过去的2周里，下面问题的严重程度和强度……</th>
								<th>一点也不</th>
								<th>有一点</th>
								<th>一般</th>
                                <th>比较严重</th>
								<th>非常严重</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="left">7.必须关心吃什么</td>
								<td align="center"><input type="radio" id="c1007" name="c1007" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1007" name="c1007" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1007" name="c1007" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1007" name="c1007"" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1007" name="c1007" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">8.食欲下降</td>
								<td align="center"><input type="radio" id="c1008" name="c1008" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1008" name="c1008" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1008" name="c1008" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1008" name="c1008" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1008" name="c1008" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">9.担心不能随意选择食物（如在朋友家）</td>
								<td align="center"><input type="radio" id="c1009" name="c1009" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1009" name="c1009" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1009" name="c1009" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1009" name="c1009" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1009" name="c1009" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">10.出门在外，因在卫生间时间太长而感到不自在</td>
								<td align="center"><input type="radio" id="c1010" name="c1010" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1010" name="c1010" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1010" name="c1010" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1010" name="c1010" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1010" name="c1010" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">11.出门在外，因频繁去卫生间感到不自在</td>
								<td align="center"><input type="radio" id="c1011" name="c1011" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1011" name="c1011" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1011" name="c1011" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1011" name="c1011" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1011" name="c1011" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">12.总是担心改变生活习惯（如旅行、外出门等）</td>
								<td align="center"><input type="radio" id="c1012" name="c1012" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1012" name="c1012" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1012" name="c1012" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1012" name="c1012" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1012" name="c1012" value="5" title="5"></td>
							</tr>
						</tbody>
					</table>
                    <table class="layui-table">
						<thead>
                            <tr>
								<th style="text-align:left; width:40%">下面问题与便秘的感觉有关。过去2周内，下列症状出现的时间频率…</th>
								<th>没有时间</th>
								<th>偶尔</th>
								<th>有时</th>
                                <th>多数时间</th>
								<th>总是</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="left">13.感到烦躁易怒</td>
								<td align="center"><input type="radio" id="c1013" name="c1013" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1013" name="c1013" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1013" name="c1013" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1013" name="c1013" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1013" name="c1013" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">14.感到不安</td>
								<td align="center"><input type="radio" id="c1014" name="c1014" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1014" name="c1014" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1014" name="c1014" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1014" name="c1014" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1014" name="c1014" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">15.总是困扰 </td>
								<td align="center"><input type="radio" id="c1015" name="c1015" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1015" name="c1015" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1015" name="c1015" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1015" name="c1015" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1015" name="c1015" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">16.感到紧张</td>
								<td align="center"><input type="radio" id="c1016" name="c1016" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1016" name="c1016" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1016" name="c1016" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1016" name="c1016" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1016" name="c1016" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">17.感到缺乏自信</td>
								<td align="center"><input type="radio" id="c1017" name="c1017" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1017" name="c1017" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1017" name="c1017" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1017" name="c1017" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1017" name="c1017" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">18.感到生活失去控</td>
								<td align="center"><input type="radio" id="c1018" name="c1018" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1018" name="c1018" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1018" name="c1018" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1018" name="c1018" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1018" name="c1018" value="5" title="5"></td>
							</tr>
						</tbody>
					</table>
                    <table class="layui-table">
						<thead>
                            <tr>
								<th style="text-align:left; width:40%">下面问题与便秘的感觉有关。过去2周内下面问题的严重程度和强度……</th>
								<th>一点也不</th>
								<th>有一点</th>
								<th>一般</th>
                                <th>比较严重</th>
								<th>非常严重</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="left">19.为不知何时排便而担心</td>
								<td align="center"><input type="radio" id="c1019" name="c1019" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1019" name="c1019" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1019" name="c1019" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1019" name="c1019" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1019" name="c1019" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">20.担心不能够排便</td>
								<td align="center"><input type="radio" id="c1020" name="c1020" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1020" name="c1020" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1020" name="c1020" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1020" name="c1020" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1020" name="c1020" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">21.因不排便而影响生活</td>
								<td align="center"><input type="radio" id="c1021" name="c1021" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1021" name="c1021" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1021" name="c1021" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1021" name="c1021" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1021" name="c1021" value="5" title="5"></td>
							</tr>
						</tbody>
					</table>
                    <table class="layui-table">
						<thead>
                            <tr>
								<th style="text-align:left; width:40%">下列问题关于便秘与日常生活。过去2周中，下面症状出现的时间频率…</th>
								<th>没有时间</th>
								<th>偶尔</th>
								<th>有时</th>
                                <th>多数时间</th>
								<th>总是</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="left">22.担心情况越来越糟</td>
								<td align="center"><input type="radio" id="c1022" name="c1022" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1022" name="c1022" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1022" name="c1022" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1022" name="c1022" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1022" name="c1022" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">23.感到身体不能工作</td>
								<td align="center"><input type="radio" id="c1023" name="c1023" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1023" name="c1023" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1023" name="c1023" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1023" name="c1023" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1023" name="c1023" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">24.大便次数比想象的要少</td>
								<td align="center"><input type="radio" id="c1024" name="c1024" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1024" name="c1024" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1024" name="c1024" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1024" name="c1024" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1024" name="c1024" value="5" title="5"></td>
							</tr>
						</tbody>
					</table>
                    <table class="layui-table">
						<thead>
                            <tr>
								<th style="text-align:left; width:40%">下面问题关于满意度。在过去的2 周内下面问题的严重程度和强度……</th>
								<th>很满意</th>
								<th>比较满意</th>
								<th>一般</th>
                                <th>有点不满意</th>
								<th>很不满</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="left">25.对大便次数满意吗意？</td>
								<td align="center"><input type="radio" id="c1025" name="c1025" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1025" name="c1025" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1025" name="c1025" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1025" name="c1025" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1025" name="c1025" value="5" title="5"></td>
							</tr>
							<tr>
								<td align="left">26.对大便规律满意吗？</td>
								<td align="center"><input type="radio" id="c1026" name="c1026" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1026" name="c1026" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1026" name="c1026" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1026" name="c1026" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1026" name="c1026" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">27.对事物经过肠道的时间满意吗？</td>
								<td align="center"><input type="radio" id="c1027" name="c1027" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1027" name="c1027" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1027" name="c1027" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1027" name="c1027" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1027" name="c1027" value="5" title="5"></td>
							</tr>
                            <tr>
								<td align="left">28.对以往治疗满意吗？</td>
								<td align="center"><input type="radio" id="c1028" name="c1028" value="1" title="1" checked></td>
								<td align="center"><input type="radio" id="c1028" name="c1028" value="2" title="2" ></td>
								<td align="center"><input type="radio" id="c1028" name="c1028" value="3" title="3" ></td>
								<td align="center"><input type="radio" id="c1028" name="c1028" value="4" title="4"></td>
                                <td align="center"><input type="radio" id="c1028" name="c1028" value="5" title="5"></td>
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
							parent.parent.deleteTab('生活质量表');
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