<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>调整部门</title>
	<!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
<!-- 		<form name="frm" method=" post" action=""-->
			<table class="table table-bordered">
				<tr align="center" class="success"> <td colspan="4">部门调整</td></tr>
				<tr class="active">   <td><span>部门编码：</span></td>  <td><input name="thecode"></td>    <td><span>上级部门：</span></td>
			    <td><select>
				<option value="1">总务部</option>
				<option value="2">人资部</option>
				<option value="3">财务部</option>
				<option value="4">网络部</option>	
				</select></td> </tr>
				<tr class="info">     <td><span>部门名称：</span></td>  <td> </td>   <td><span>部门类型：</span></td> <td> </td> </tr>
				<tr class="active">   <td ><span>部门地址：</span></td>  <td> </td> <td></td><td></td> 																</tr>
				<tr class="info">     <td><span>邮政编码：</span></td>  <td> </td> <td><span>电话号码：</span></td> <td> </td> </tr>
				<tr class="active">   <td><span>传真号码：</span></td>  <td> </td>  <td><span>电子邮件：</span></td> <td> </td></tr>
				<tr class="danger">   <td colspan="4" align="center"><input type="submit" value="确定"> <input type="reset" value="取消"></td></tr>
			</table>
		
		
<!-- 		</form> -->
</body>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>