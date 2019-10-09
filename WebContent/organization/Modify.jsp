<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="organization.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
DeptInfo dept=(DeptInfo)session.getAttribute("deptinfo");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>修改部门</title>


    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>

</head>
<body>
<!-- 		<form name="frm" method="post" action=""> -->
			<table  class="table table-bordered">
				<tr align="center" class=" "><td colspan="4">编辑部门信息</td></tr>
				<tr class="">   <td><span>部门编号</span></td> <td><input name="deptcode" readonly="readonly"value="<%=dept.getDeptcode() %>"></td>    <td><span>上级部门ID</span></td> <td><input name="parentid" value="<%=dept.getParentid() %>"></td> </tr>
				<tr class=" ">   <td><span>部门名称</span></td> <td><input name="deptname" value="<%=dept.getDeptname() %>"></td>    <td><span>部门类型</span></td> <td><input name="depttype" value="<%=dept.getDepttype() %>"></td> </tr>
				<tr class=" ">   <td ><span>部门地址</span></td> <td><input name="location" value="<%=dept.getLocation() %>"></td> <td></td><td></td> 																</tr>
				<tr class=" ">   <td><span>邮政编码</span></td> <td><input name="postcode" value="<%=dept.getPostcode() %>"></td> <td><span>电话号码</span></td> <td><input name="telephone" value="<%=dept.getTelephone() %>"></td> </tr>
				<tr class=" ">   <td><span>传真号码</span></td> <td><input name="fax" value="<%=dept.getFax() %>"></td>  <td><span>电子邮件</span></td> <td><input name="mail" 			value="<%=dept.getMail() %>"></td></tr>
				<tr class=" ">   <td colspan="4" align="center"><input type="submit" value="确定"> <input type="reset" value="取消" ></td></tr>
			</table>
<!-- 		</form> -->
		
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>