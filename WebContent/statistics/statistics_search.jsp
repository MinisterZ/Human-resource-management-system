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
            <tr align="center"><td colspan="4">Ա����Ϣ��ѯ</td></tr>
            <tr><td>������</td><td><input name="name"></td> <td>Ա���ţ�</td><td><input name="number"></td></tr>
            <tr><td>�Ա�</td><td><select><option>��</option><option>Ů</option></select></td><td>���ţ�</td><td><input name="department"></td></tr>
            <tr><td>ְ�ƣ�</td><td><input name="title"></td><td>��λ��</td><td><input name="post"></td></tr>
            <tr><td>�������ڣ�</td>
                <td>
                    <select><option>1980</option></select>��
                    <select><option>1</option></select>��
                    <select><option>1</option></select>��
                </td> <td>���ѧ����</td>
                <td><select>
                    <option>��ʿ</option>
                    <option>˶ʿ</option>
                    <option>����</option>
                </select></td></tr>
            <tr><td>����״����</td>
                <td colspan="3"><select>
                    <option>����</option>
                    <option>��</option>
                </select></td> </tr>
            <tr align="center"><td colspan="4"><input type="submit" value="��ѯ"> <input type="reset" value="ȡ��"></td></tr>

        </table>
    </form>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>