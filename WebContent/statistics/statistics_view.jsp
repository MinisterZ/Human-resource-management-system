<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>

<table   class="table table-bordered">
    <tr align="center"><td colspan="6">公司员工按学历划分所占比例情况</td></tr>
    <tr><td width="15%" height="50px">序号</td><td width="15%">学历</td><td width="15%">所占人数</td><td width="15%">比例</td>
    <td width="30%" colspan="2" rowspan="6"><img src="<%=path %>/images/pic.jpg" style="width:340px;height:250px"></td>
    </tr>
    <tr><td height="50px">1</td><td>本科</td><td>15</td><td>15%</td></tr>
    <tr><td height="50px">2</td><td>研究生</td><td>15</td><td>15%</td></tr>
    <tr><td height="50px">3</td><td>博士生</td><td>30</td><td>30%</td></tr>
    <tr><td height="50px">4</td><td>博士后</td><td>40</td><td>40%</td></tr>

</table>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>