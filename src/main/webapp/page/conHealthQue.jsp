<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	

	<head>
		<meta charset="utf-8">
		<title>健康调查简表SF-36</title>
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
        		initConHQueRecord(pid);
        	});
        </script>
	</head>

	<body>
		<div style="margin: 15px;">
			
                  
			<fieldset class="layui-elem-field layui-field-title">
            
				<legend>健康调查简表SF-36</legend>
                
                <!--<blockquote class="layui-elem-quote">
				<h1>(patient assessment of constipation symptom, PAC-SYM)</h1></blockquote>-->
				
                <div class="layui-field-box">
                
                  
                  <form class="layui-form" action="">
						<div class="layui-form-item" style="float:left;">
								<input type="hidden" id="recordId" 		name="recordId" class="layui-input">
								<input type="hidden" id="createTime" 	name="createTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
								<input type="hidden" id="updateTime" 	name="updateTime" class="layui-input" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" >
								<input type="hidden" id="ticketId" 		name="ticketId" class="layui-input">
						</div>
					<table class="request">
                        <tr>
                            <td>1、总体来讲，您的健康状况是：</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" id="c10001" name="c10001" value="0" title="非常好" >
                                <input type="radio" id="c10001" name="c10001" value="1" title="非常好" >
                                <input type="radio" id="c10001" name="c10001" value="2" title="很好">
                                <input type="radio" id="c10001" name="c10001" value="3" title="好">
                                <input type="radio" id="c10001" name="c10001" value="4" title="一般">
                                <input type="radio" id="c10001" name="c10001" value="5" title="差">
                            </td>
                        </tr>
                        <tr>
                            <td>2、跟1年以前比您觉得自己的健康状况是：</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" id="c10201" name="c10201" value="0" title="比1年前好多了" >
                                <input type="radio" id="c10201" name="c10201" value="1" title="比1年前好多了" >
                                <input type="radio" id="c10201" name="c10201" value="2" title="比1年前好一些">
                                <input type="radio" id="c10201" name="c10201" value="3" title="跟1年前差不多">
                                <input type="radio" id="c10201" name="c10201" value="4" title="比1年前差一些">
                                <input type="radio" id="c10201" name="c10201" value="5" title="比1年前差多了">
                            </td>
                        </tr>
                        <tr>
                            <td>3、以下这些问题都和日常活动有关。请您想一想，您的健康状况是否限制了这些活动？如果有限制，程度如何？</td>
                        </tr>
                        <tr>
                            <td>（1）重体力活动。如跑步举重、参加剧烈运动等：
                                <input type="hidden" id="c10301" name="c10301" value="0" title="限制很大" >
                                <input type="radio" id="c10301" name="c10301" value="1" title="限制很大" >
                                <input type="radio" id="c10301" name="c10301" value="2" title="有些限制">
                                <input type="radio" id="c10301" name="c10301" value="3" title="毫无限制">
                                <br>（2）适度的活动。如移动一张桌子、扫地、打太极拳、做简单体操等：
                                <input type="hidden" id="c10302" name="c10302" value="0" title="限制很大" >
                                <input type="radio" id="c10302" name="c10302" value="1" title="限制很大" >
                                <input type="radio" id="c10302" name="c10302" value="2" title="有些限制">
                                <input type="radio" id="c10302" name="c10302" value="3" title="毫无限制">
                                <br>（3）手提日用品。如买菜、购物等：
                                <input type="hidden" id="c10303" name="c10303" value="0" title="限制很大" >
                                <input type="radio" id="c10303" name="c10303" value="1" title="限制很大" >
                                <input type="radio" id="c10303" name="c10303" value="2" title="有些限制">
                                <input type="radio" id="c10303" name="c10303" value="3" title="毫无限制">
                                <br>（4）上几层楼梯：
                                <input type="hidden" id="c10304" name="c10304" value="0" title="限制很大" >
                                <input type="radio" id="c10304" name="c10304" value="1" title="限制很大" >
                                <input type="radio" id="c10304" name="c10304" value="2" title="有些限制">
                                <input type="radio" id="c10304" name="c10304" value="3" title="毫无限制">
                                <br>（5）上一层楼梯：
                                <input type="hidden" id="c10305" name="c10305" value="0" title="限制很大" >
                                <input type="radio" id="c10305" name="c10305" value="1" title="限制很大" >
                                <input type="radio" id="c10305" name="c10305" value="2" title="有些限制">
                                <input type="radio" id="c10305" name="c10305" value="3" title="毫无限制">
                                <br>（6）弯腰、屈膝、下蹲：
                                <input type="hidden" id="c10306" name="c10306" value="0" title="限制很大" >
                                <input type="radio" id="c10306" name="c10306" value="1" title="限制很大" >
                                <input type="radio" id="c10306" name="c10306" value="2" title="有些限制">
                                <input type="radio" id="c10306" name="c10306" value="3" title="毫无限制">
                                <br>（7）步行1500米以上的路程：
                                <input type="hidden" id="c10307" name="c10307" value="0" title="限制很大" >
                                <input type="radio" id="c10307" name="c10307" value="1" title="限制很大" >
                                <input type="radio" id="c10307" name="c10307" value="2" title="有些限制">
                                <input type="radio" id="c10307" name="c10307" value="3" title="毫无限制">
                                <br>（8）步行1000米的路程：
                                <input type="hidden" id="c10308" name="c10308" value="0" title="限制很大" >
                                <input type="radio" id="c10308" name="c10308" value="1" title="限制很大" >
                                <input type="radio" id="c10308" name="c10308" value="2" title="有些限制">
                                <input type="radio" id="c10308" name="c10308" value="3" title="毫无限制">
                                <br>（9）步行100米的路程：
                                <input type="hidden" id="c10309" name="c10309" value="0" title="限制很大" >
                                <input type="radio" id="c10309" name="c10309" value="1" title="限制很大" >
                                <input type="radio" id="c10309" name="c10309" value="2" title="有些限制">
                                <input type="radio" id="c10309" name="c10309" value="3" title="毫无限制">
                                <br>（10）自己洗澡、穿衣：
                                <input type="hidden" id="c10310" name="c10310" value="0" title="限制很大" >
                                <input type="radio" id="c10310" name="c10310" value="1" title="限制很大" >
                                <input type="radio" id="c10310" name="c10310" value="2" title="有些限制">
                                <input type="radio" id="c10310" name="c10310" value="3" title="毫无限制">
                            </td>
                        </tr>
                        <tr>
                            <td>4、在过去4个星期里，您的工作和日常活动有无因为身体健康的原因而出现以下这些问题？</td>
                        </tr>
                        <tr>
                            <td>（1）减少了工作或其他活动时间：
                                <input type="hidden" id="c10401" name="c10401" value="0" title="是" >
                                <input type="radio" id="c10401" name="c10401" value="1" title="是" >
                                <input type="radio" id="c10401" name="c10401" value="2" title="不是">
                                <br>（2）本来想要做的事情只能完成一部分：
                                <input type="hidden" id="c10402" name="c10402" value="0" title="是" >
                                <input type="radio" id="c10402" name="c10402" value="1" title="是" >
                                <input type="radio" id="c10402" name="c10402" value="2" title="不是">
                                <br>（3）想要干的工作或活动种类受到限制：
                                <input type="hidden" id="c10403" name="c10403" value="0" title="是" >
                                <input type="radio" id="c10403" name="c10403" value="1" title="是" >
                                <input type="radio" id="c10403" name="c10403" value="2" title="不是">
                                <br>（4）完成工作或其他活动困难增多（比如需要额外的努力）：
                                <input type="hidden" id="c10404" name="c10404" value="0" title="是" >
                                <input type="radio" id="c10404" name="c10404" value="1" title="是" >
                                <input type="radio" id="c10404" name="c10404" value="2" title="不是">
                            </td>
                        </tr>
                        <tr>
                            <td>5、在过去4个星期里，您的工作和日常活动有无因为情绪的原因（如压抑或忧虑）而出现以下这些问题？</td>
                        </tr>
                        <tr>
                            <td>（1）减少了工作或活动时间：
                                <input type="hidden" id="c10501" name="c10501" value="0" title="是" >
                                <input type="radio" id="c10501" name="c10501" value="1" title="是" >
                                <input type="radio" id="c10501" name="c10501" value="2" title="不是">
                                <br>（2）本来想要做的事情只能完成一部分：
                                <input type="hidden" id="c10502" name="c10502" value="0" title="是" >
                                <input type="radio" id="c10502" name="c10502" value="1" title="是" >
                                <input type="radio" id="c10502" name="c10502" value="2" title="不是">
                                <br>（3）干事情不如平时仔细：
                                <input type="hidden" id="c10503" name="c10503" value="0" title="是" >
                                <input type="radio" id="c10503" name="c10503" value="1" title="是" >
                                <input type="radio" id="c10503" name="c10503" value="2" title="不是">
                            </td>
                        </tr>
                        <tr>
                            <td>6、在过去4个星期里，您的健康或情绪不好在多大程度上影响了您与家人、朋友、邻居或集体的正常社会交往？</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" id="c10601" name="c10601" value="0" title="完全没有影响" >
                                <input type="radio" id="c10601" name="c10601" value="1" title="完全没有影响" >
                                <input type="radio" id="c10601" name="c10601" value="2" title="有一点影响">
                                <input type="radio" id="c10601" name="c10601" value="3" title="中等影响">
                                <input type="radio" id="c10601" name="c10601" value="4" title="影响很大">
                                <input type="radio" id="c10601" name="c10601" value="5" title="影响非常大">
                            </td>
                        </tr>
                        <tr>
                            <td>7、在过去4个星期里，您有身体疼痛吗？</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" id="c10701" name="c10701" value="0" title="完全没有疼痛" >
                                <input type="radio" id="c10701" name="c10701" value="1" title="完全没有疼痛" >
                                <input type="radio" id="c10701" name="c10701" value="2" title="有一点疼痛">
                                <input type="radio" id="c10701" name="c10701" value="3" title="中等疼痛">
                                <input type="radio" id="c10701" name="c10701" value="4" title="严重疼痛">
                                <input type="radio" id="c10701" name="c10701" value="5" title="很严重疼痛">
                            </td>
                        </tr>
                        <tr>
                            <td>8、在过去4个星期里，您的身体疼痛影响了您的工作和家务吗？</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" id="c10801" name="c10801" value="0" title="完全没有影响" >
                                <input type="radio" id="c10801" name="c10801" value="1" title="完全没有影响" >
                                <input type="radio" id="c10801" name="c10801" value="2" title="有一点影响">
                                <input type="radio" id="c10801" name="c10801" value="3" title="中等影响">
                                <input type="radio" id="c10801" name="c10801" value="4" title="影响很大">
                                <input type="radio" id="c10801" name="c10801" value="5" title="影响非常大">
                            </td>
                        </tr>
                        <tr>
                            <td>9、以下这些问题是关于过去1个月里您自己的感觉，对每一条问题所说的事情，您的情况是什么样的？</td>
                        </tr>
                        <tr>
                            <td>（1）您觉得生活充实：
                                <input type="hidden" id="c10901" name="c10901" value="0" title="所有的时间" >
                                <input type="radio" id="c10901" name="c10901" value="1" title="所有的时间" >
                                <input type="radio" id="c10901" name="c10901" value="2" title="大部分时间">
                                <input type="radio" id="c10901" name="c10901" value="3" title="比较多时间">
                                <input type="radio" id="c10901" name="c10901" value="4" title="一部分时间">
                                <input type="radio" id="c10901" name="c10901" value="5" title="小部分时间">
                                <input type="radio" id="c10901" name="c10901" value="6" title="没有这种感觉">
                                <br>（2）您是一个敏感的人：
                                <input type="hidden" id="c10902" name="c10902" value="0" title="所有的时间" >
                                <input type="radio" id="c10902" name="c10902" value="1" title="所有的时间" >
                                <input type="radio" id="c10902" name="c10902" value="2" title="大部分时间">
                                <input type="radio" id="c10902" name="c10902" value="3" title="比较多时间">
                                <input type="radio" id="c10902" name="c10902" value="4" title="一部分时间">
                                <input type="radio" id="c10902" name="c10902" value="5" title="小部分时间">
                                <input type="radio" id="c10902" name="c10902" value="6" title="没有这种感觉">
                                <br>（3）您的情绪非常不好，什么事都不能使您高兴起来：
                                <input type="hidden" id="c10903" name="c10903" value="0" title="所有的时间" >
                                <input type="radio" id="c10903" name="c10903" value="1" title="所有的时间" >
                                <input type="radio" id="c10903" name="c10903" value="2" title="大部分时间">
                                <input type="radio" id="c10903" name="c10903" value="3" title="比较多时间">
                                <input type="radio" id="c10903" name="c10903" value="4" title="一部分时间">
                                <input type="radio" id="c10903" name="c10903" value="5" title="小部分时间">
                                <input type="radio" id="c10903" name="c10903" value="6" title="没有这种感觉">
                                <br>（4）您的心理很平静：
                                <input type="hidden" id="c10904" name="c10904" value="0" title="所有的时间" >
                                <input type="radio" id="c10904" name="c10904" value="1" title="所有的时间" >
                                <input type="radio" id="c10904" name="c10904" value="2" title="大部分时间">
                                <input type="radio" id="c10904" name="c10904" value="3" title="比较多时间">
                                <input type="radio" id="c10904" name="c10904" value="4" title="一部分时间">
                                <input type="radio" id="c10904" name="c10904" value="5" title="小部分时间">
                                <input type="radio" id="c10904" name="c10904" value="6" title="没有这种感觉">
                                <br>（5）您做事精力充沛：
                                <input type="hidden" id="c10905" name="c10905" value="0" title="所有的时间" >
                                <input type="radio" id="c10905" name="c10905" value="1" title="所有的时间" >
                                <input type="radio" id="c10905" name="c10905" value="2" title="大部分时间">
                                <input type="radio" id="c10905" name="c10905" value="3" title="比较多时间">
                                <input type="radio" id="c10905" name="c10905" value="4" title="一部分时间">
                                <input type="radio" id="c10905" name="c10905" value="5" title="小部分时间">
                                <input type="radio" id="c10905" name="c10905" value="6" title="没有这种感觉">
                                <br>（6）您的情绪低落：
                                <input type="hidden" id="c10906" name="c10906" value="0" title="所有的时间" >
                                <input type="radio" id="c10906" name="c10906" value="1" title="所有的时间" >
                                <input type="radio" id="c10906" name="c10906" value="2" title="大部分时间">
                                <input type="radio" id="c10906" name="c10906" value="3" title="比较多时间">
                                <input type="radio" id="c10906" name="c10906" value="4" title="一部分时间">
                                <input type="radio" id="c10906" name="c10906" value="5" title="小部分时间">
                                <input type="radio" id="c10906" name="c10906" value="6" title="没有这种感觉">
                                <br>（7）您觉得筋疲力尽：
                                <input type="hidden" id="c10907" name="c10907" value="0" title="所有的时间" >
                                <input type="radio" id="c10907" name="c10907" value="1" title="所有的时间" >
                                <input type="radio" id="c10907" name="c10907" value="2" title="大部分时间">
                                <input type="radio" id="c10907" name="c10907" value="3" title="比较多时间">
                                <input type="radio" id="c10907" name="c10907" value="4" title="一部分时间">
                                <input type="radio" id="c10907" name="c10907" value="5" title="小部分时间">
                                <input type="radio" id="c10907" name="c10907" value="6" title="没有这种感觉">
                                <br>（8）您是个快乐的人：
                                <input type="hidden" id="c10908" name="c10908" value="0" title="所有的时间" >
                                <input type="radio" id="c10908" name="c10908" value="1" title="所有的时间" >
                                <input type="radio" id="c10908" name="c10908" value="2" title="大部分时间">
                                <input type="radio" id="c10908" name="c10908" value="3" title="比较多时间">
                                <input type="radio" id="c10908" name="c10908" value="4" title="一部分时间">
                                <input type="radio" id="c10908" name="c10908" value="5" title="小部分时间">
                                <input type="radio" id="c10908" name="c10908" value="6" title="没有这种感觉">
                                <br>（9）您感觉厌烦：
                                <input type="hidden" id="c10909" name="c10909" value="0" title="所有的时间" >
                                <input type="radio" id="c10909" name="c10909" value="1" title="所有的时间" >
                                <input type="radio" id="c10909" name="c10909" value="2" title="大部分时间">
                                <input type="radio" id="c10909" name="c10909" value="3" title="比较多时间">
                                <input type="radio" id="c10909" name="c10909" value="4" title="一部分时间">
                                <input type="radio" id="c10909" name="c10909" value="5" title="小部分时间">
                                <input type="radio" id="c10909" name="c10909" value="6" title="没有这种感觉">
                            </td>
                        </tr>
                        <tr>
                            <td>10、不健康影响了您的社会活动（如走亲访友）：</td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" id="c11001" name="c11001" value="0" title="所有的时间" >
                                <input type="radio" id="c11001" name="c11001" value="1" title="所有的时间" >
                                <input type="radio" id="c11001" name="c11001" value="2" title="大部分时间">
                                <input type="radio" id="c11001" name="c11001" value="3" title="比较多时间">
                                <input type="radio" id="c11001" name="c11001" value="4" title="一部分时间">
                                <input type="radio" id="c11001" name="c11001" value="5" title="小部分时间">
                                <input type="radio" id="c11001" name="c11001" value="6" title="没有这种感觉">
                            </td>
                        </tr>
                        <tr>
                            <td>11、请看下列每一条问题，哪一种答案最符合您的情况？</td>
                        </tr>
                        <tr>
                            <td>（1）我好象比别人容易生病：
                                <input type="hidden" id="c11101" name="c11101" value="0" title="绝对正确" >
                                <input type="radio" id="c11101" name="c11101" value="1" title="绝对正确" >
                                <input type="radio" id="c11101" name="c11101" value="2" title="大部分正确">
                                <input type="radio" id="c11101" name="c11101" value="3" title="不能肯定">
                                <input type="radio" id="c11101" name="c11101" value="4" title="大部分错误">
                                <input type="radio" id="c11101" name="c11101" value="5" title="绝对错误">
                                <br>（2）我跟周围人一样健康：
                                <input type="hidden" id="c11102" name="c11102" value="0" title="绝对正确" >
                                <input type="radio" id="c11102" name="c11102" value="1" title="绝对正确" >
                                <input type="radio" id="c11102" name="c11102" value="2" title="大部分正确">
                                <input type="radio" id="c11102" name="c11102" value="3" title="不能肯定">
                                <input type="radio" id="c11102" name="c11102" value="4" title="大部分错误">
                                <input type="radio" id="c11102" name="c11102" value="5" title="绝对错误">
                                <br>（3）我认为我的健康状况在变坏：
                                <input type="hidden" id="c11103" name="c11103" value="0" title="绝对正确" >
                                <input type="radio" id="c11103" name="c11103" value="1" title="绝对正确" >
                                <input type="radio" id="c11103" name="c11103" value="2" title="大部分正确">
                                <input type="radio" id="c11103" name="c11103" value="3" title="不能肯定">
                                <input type="radio" id="c11103" name="c11103" value="4" title="大部分错误">
                                <input type="radio" id="c11103" name="c11103" value="5" title="绝对错误">
                                <br>（4）我的健康状况非常好：
                                <input type="hidden" id="c11104" name="c11104" value="0" title="绝对正确" >
                                <input type="radio" id="c11104" name="c11104" value="1" title="绝对正确" >
                                <input type="radio" id="c11104" name="c11104" value="2" title="大部分正确">
                                <input type="radio" id="c11104" name="c11104" value="3" title="不能肯定">
                                <input type="radio" id="c11104" name="c11104" value="4" title="大部分错误">
                                <input type="radio" id="c11104" name="c11104" value="5" title="绝对错误">
                            </td>
                        </tr>
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
					$.post("${pageContext.request.contextPath}/constipation/saveConHealthQue.action",data.field,function(res){
						var re = eval("("+res+")");
						if(re.success){
							layer.alert("健康调查表提交成功！");
							//alert(parent.name);
							parent.parent.deleteTab('健康调查简表');
						}else{
							layer.alert("提交失败，请联系管理员！");
						}
					});
					return false;
				});
			});
			function initConHQueRecord(pid){
				layui.use(['form', 'layedit', 'laydate','element'], function() {
					var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					element = layui.element();
					laydate = layui.laydate;						
        		//后台获取
				$.getJSON("${pageContext.request.contextPath}/constipation/findConHealthQue.action",{pid:pid},function(data){
        			//set from fields value
        			for (var key in data){
        				//alert(key + " - " + data[key]);
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