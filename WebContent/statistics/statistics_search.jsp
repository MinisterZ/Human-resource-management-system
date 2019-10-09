<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
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
    <form name="frm" action="" method="post">
        <table class="table table-bordered">
            <tr align="center"><td colspan="4">员工信息查询</td></tr>
            <tr><td>姓名：</td><td><input name="name"></td> <td>员工号：</td><td><input name="number"></td></tr>
            <tr><td>性别：</td><td><select><option>男</option><option>女</option></select></td><td>部门：</td><td><input name="department"></td></tr>
            <tr><td>职称：</td><td><input name="title"></td><td>岗位：</td><td><input name="post"></td></tr>
            <tr><td>出生日期：</td>
                <td>
                    <select><option>1980</option></select>年
                    <select><option>1</option></select>月
                    <select><option>1</option></select>日
                </td> <td>最高学历：</td>
                <td><select>
                    <option>博士</option>
                    <option>硕士</option>
                    <option>本科</option>
                </select></td></tr>
            <tr><td>健康状况：</td>
                <td colspan="3"><select>
                    <option>良好</option>
                    <option>差</option>
                </select></td> </tr>
            <tr align="center"><td colspan="4"><input type="submit" value="查询"> <input type="reset" value="取消"></td></tr>

        </table>
    </form>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>