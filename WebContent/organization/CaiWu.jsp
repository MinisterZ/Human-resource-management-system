<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>部门信息</title>

	<!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<style type="text/css">
	.col-md-9{
		padding-top: 15px;	
	}
</style>

</head>

<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-3">
			<iframe src="<%=path%>/organization/CWTree.jsp" name="myframe" width="100%" height="500" frameborder="0" scrolling="yes" style="padding-top: 16px"></iframe>
		</div>
		<div class="col-md-9">
			<a href="<%=path %>/organization/CaiWu_insert.jsp" target="myframe"><button type="button" class="btn btn-primary">添加子部门</button></a>
			<button type="button" class="btn btn-success">删除部门</button>
			<a href="<%=path %>/organization/CaiWu_modify.jsp" target="myframe"><button type="button" class="btn btn-info">修改部门信息</button></a>
			<a href="<%=path %>/organization/CaiWu_adjust.jsp" target="myframe"><button type="button" class="btn btn-warning">调整部门</button></a>
			<button type="button" class="btn btn-danger">撤销部门</button>
			<table align="center" class="table table-bordered" style="padding-top: 15px">
				<tr align="center"class="info"><td colspan="4">查看各部门</td></tr>
				<tr class=" ">   <td><span>部门编码：</span></td> <td> </td>    <td><span>上级部门：</span></td> <td> </td> </tr>
				<tr class="info">     <td><span>部门名称：</span></td> <td> </td>    <td><span>部门类型：</span></td> <td> </td> </tr>
				<tr class=" ">   <td><span>部门地址：</span></td> <td> </td>    <td></td><td></td> 																</tr>
				<tr class="info">     <td><span>邮政编码：</span></td> <td> </td>    <td><span>电话号码:</span></td> <td> </td> </tr>
				<tr class="">   <td><span>传真号码：</span></td> <td> </td>    <td><span>电子邮件:</span></td> <td> </td> </tr>
				<tr class="active">   <td colspan="4" align="center"><input type="submit" value="确定"> <input type="reset" value="取消"></td></tr>
			</table>
		</div>
	</div>
</div>	
		

</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>