<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>������Ϣ</title>

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
			<a href="<%=path %>/organization/CaiWu_insert.jsp" target="myframe"><button type="button" class="btn btn-primary">����Ӳ���</button></a>
			<button type="button" class="btn btn-success">ɾ������</button>
			<a href="<%=path %>/organization/CaiWu_modify.jsp" target="myframe"><button type="button" class="btn btn-info">�޸Ĳ�����Ϣ</button></a>
			<a href="<%=path %>/organization/CaiWu_adjust.jsp" target="myframe"><button type="button" class="btn btn-warning">��������</button></a>
			<button type="button" class="btn btn-danger">��������</button>
			<table align="center" class="table table-bordered" style="padding-top: 15px">
				<tr align="center"class="info"><td colspan="4">�鿴������</td></tr>
				<tr class=" ">   <td><span>���ű��룺</span></td> <td> </td>    <td><span>�ϼ����ţ�</span></td> <td> </td> </tr>
				<tr class="info">     <td><span>�������ƣ�</span></td> <td> </td>    <td><span>�������ͣ�</span></td> <td> </td> </tr>
				<tr class=" ">   <td><span>���ŵ�ַ��</span></td> <td> </td>    <td></td><td></td> 																</tr>
				<tr class="info">     <td><span>�������룺</span></td> <td> </td>    <td><span>�绰����:</span></td> <td> </td> </tr>
				<tr class="">   <td><span>������룺</span></td> <td> </td>    <td><span>�����ʼ�:</span></td> <td> </td> </tr>
				<tr class="active">   <td colspan="4" align="center"><input type="submit" value="ȷ��"> <input type="reset" value="ȡ��"></td></tr>
			</table>
		</div>
	</div>
</div>	
		

</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</html>