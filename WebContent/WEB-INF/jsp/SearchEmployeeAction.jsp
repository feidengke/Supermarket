<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>显示员工信息</title>
	<style type="text/css">
		table.abcabc {
		    font-family: verdana,arial,sans-serif;
		    font-size:11px;
		    color:#333333;
		    border-width: 1px;
		    border-color: #999999;
		    border-collapse: collapse;
		}
		table.abcabc th {
		    background:#b5cfd2;
		    border-width: 1px;
		    padding: 8px;
		    border-style: solid;
		    border-color: #999999;
		}
		table.abcabc td {
		    background:#dcddc0;
		    border-width: 1px;
		    padding: 8px;
		    border-style: solid;
		    border-color: #999999;
		}
	</style>
</head>
	<body>
		<h3>所有员工信息</h3>
		<!-- 设置表格样式 -->
		<table class="abcabc">
		    <tr>        
		        <td>ID</td>
		        <td>姓名</td>
		        <td>电子邮箱</td>
		        <td>手机号码</td>
		        <td>入职时间</td>
		    </tr>
	    	<!-- 使用struts2标签库中的iterator将所有数据遍历循环显示出来 -->
	    	<s:iterator value="#myEmployeeList" status="bcs">
		        <tr>    
		            <td><s:property value="id"></s:property></td>
		            <td><s:property value="name"></s:property></td>
		            <td><s:property value="email"></s:property></td>
		            <td><s:property value="telephone"></s:property></td>
		            <td><s:date name="employdate" format="yyyy-MM-dd"></s:date></td>
		        </tr>
	   	 	</s:iterator>
		</table>
	</body>
</html>