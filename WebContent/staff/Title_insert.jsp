<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>录入新部门</title>
 <!-- Bootstrap -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
		<form name="frm" method="post" action="<%=request.getContextPath() %>/TitleInsertAction">
			<table  class="table table-bordered" >
				<tr align="center" class=" "><td colspan="4">录入职称信息</td>						</tr>
				<tr class="">   <td><span>职称ID</span></td> <td><input name="titleid"></td>          </tr>
				<tr class=" ">   <td><span>职称名陈</span></td> <td><input name="titlename"></td>    </tr>
				<tr class=" ">   <td ><span>任职资格</span></td> <td><input name="qualification"></td>  	  </tr>
				<tr class=" ">   <td><span>职责</span></td> <td><input name="duty"></td>  		</tr>
				<tr class=" ">   <td><span>工作目标</span></td> <td><input name="worktarget"></td>   			</tr>
				<tr class=" ">   <td colspan="4" align="center"><input type="submit" value="确定"> <input type="reset" value="取消" ></td></tr>
			</table>
		
		
		</form>
		
		
		

		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>