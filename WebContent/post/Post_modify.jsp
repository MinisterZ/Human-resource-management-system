<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="post.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
 PostInfo post=(PostInfo)session.getAttribute("postinfo");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>修改岗位信息</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>


<form name="frm" method="post" action="<%=request.getContextPath() %>/PostModifyAction">
			<table  class="table table-bordered" >
				<tr align="center" class=" "><td colspan="4">修改职称信息</td>						</tr>
		  		<tr class=" ">   <td><span>岗位ID</span></td> <td><input name="postid"  value="<%=post.getPostid()%>"></td>    </tr>	
				<tr class=" ">   <td><span>岗位名称</span></td> <td><input name="postname"  value="<%=post.getPostname()%>"></td>    </tr>
				<tr class=" ">   <td ><span>上级岗位</span></td> <td><input name="parentid" value="<%=post.getParentid()%>"></td>  	  </tr>
				<tr class=" ">   <td><span>岗位职责</span></td> <td><input name="duty"value="<%=post.getDuty() %>"></td>  		</tr>
				<tr class=" ">   <td><span>任职资格</span></td> <td><input name="qualification"value="<%=post.getQualification()%>"></td>   			</tr>
				<tr class=" ">   <td><span>岗位权限</span></td> <td><input name="purview"value="<%=post.getPurview()%>"></td>
				<tr class=" ">   <td><span>工作内容</span></td> <td><input name="workcontent"value="<%=post.getWorkcontent()%>"></td>
				
				<tr class=" ">   <td colspan="4" align="center"><input type="submit" value="确定"> <input type="reset" value="取消" ></td></tr>
			</table>
		
		
		</form>
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>