<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>吉他查询</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main1.css"/>
    <script type="text/javascript" src="js/modernizr.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
</head>


<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">首页</a></li>
                
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
             
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>吉他查询</h1>
        </div>
    </div>
    <!--/管理-->
    <div class="main-wrap">
       
       <div class="result-wrap">
            <!--  <form name="myform" id="myform" method="post"> -->
                <div class="result-title">
                    <div class="result-list">
                    	<form action="select" method="post">
							查询类型：<input type="text" name="type">
							<p><input type="submit" value="条件查询"></p>
						</form> 
						<p> 
						<form action="searchall" method="post">
							
							<p><input type="submit" value="查询全部"></p>
						</form>   
						<p>                      
                        
                    </div>
                </div>
        <div class="result-content">
               
                    <table class="result-tab" width="100%">
                        <tr align="center">
                            <td width="50">价格</td>
                            <td width="70">生产厂家</td>
                            <td width="120">吉他类型</td>
                            <td width="100">木板材料</td>
                            <td width="100">产品编号</td>
                        </tr>
                        
                       <!-- foreach循环 -->
                       
                       <c:forEach var="guitar" items="${requestScope.list}">
                                <tr align="center">
                                	<td>${guitar.ID}</td> 
                                    <td>${guitar.price}</td>
                                    <td>${guitar.builder}</td>
                                    <td>${guitar.backWood}</td>
                                    <td>${guitar.topWood}</td>
                                    
                                </tr>
                          </c:forEach>
                        <!-- 结束 -->
                    </table>
                    <div class="list-page">  1/1 页</div>
                    
                </div>
</div>
</div>
</div>
</body>
</html>
