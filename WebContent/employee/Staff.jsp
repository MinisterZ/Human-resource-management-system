<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>\
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB18030">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-3">
			<iframe src="<%=path%>/staff/StaffTree.jsp" name="myframe" width="100%" height="500" frameborder="0" scrolling="yes" style="padding-top: 16px"></iframe>
		</div>
		<div class="col-md-9">
				<form name="frm" action="">
			    <table class="table table-striped">
			        <tr > <td align="center" colspan="2">������Ϣ</td>   </tr>
			        <tr><td>������</td>          <td><input name="name"><font color="red">*</font>2-30���ַ�</td></tr>
			        <tr><td>�Ա�</td>          <td><select>
			        <option>��</option>
			        <option>Ů</option>
			        </select><font color="red">*</font></td></tr>
			        <tr><td>�������ڣ�</td>
			            <td><input type="data" name="data">	</td>
			        </tr>
			        <tr><td>���֤��</td>        <td><input><font color="red">*</font>15-18���ַ�</td></tr>
			        <tr><td>���᣺</td>          <td><input><font color="red">*</font>3-30���ַ�</td></tr>
			        <tr><td>ѧ����</td>
			             <td><select>
			                    <option>��ʿ</option>
			                    <option>˶ʿ</option>
			                    <option>����</option>
			                 </select>
			             </td>
			        </tr>
			
			        <tr><td>���壺</td>
			            <td><select>
			            <option value="1">����</option>
			            <option value="2">����</option>
			            <option>�ɹ���</option>
			            
			     			56�����壬һ��56��option���������value
			     			�����optionһ�������ĸ�03word���2.3����

			            
			        </select></td>
			        </tr>
			
			        <tr><td>������ò��</td>
			            <td><select>
			            <option>�й���Ա</option>
			            <option>������Ա</option>
			            <option>Ⱥ��</option>
			        </select></td>
			        </tr>
			
			        <tr><td>����״����</td>
			            <td><select>
			                <option value="����">����</option>
			                <option>��</option>
			                
			                
			            </select></td>
			        </tr>
			        <tr><td>��������</td>
			            <td><select>
			                <option>ũ�廧��</option>
			                <option>���о���</option>
			            </select></td>
			        </tr>
			        <tr align="center"><td colspan="2">��ְ��Ϣ</td></tr>
			        <tr><td>����</td> <td><input><font color="red">*</font>12���ַ�����201003310001����ְ����+Ա�����</td></tr>
			        <tr><td>�������ͣ�</td>
			            <td><select>
			            <option>������</option>
			            <option>��������</option>
			           
			        </select><font color="red">*</font></td>
			        </tr>
			        <tr> <td>ְ�ƣ�</td>
			            <td><select>
			            <option>������ʦ</option>
			            <option>�ܹ���ʦ</option>
			        </select><font color="red">*</font></td>
			        </tr>
			        <tr><td>��λ��</td>
			            <td><select>
			                <option>CEO</option>
			                <option>CFO</option>
			            </select><font color="red">*</font></td>
			        </tr>
			        <tr><td>��ְ״̬��</td>
			            <td><select>
			                <option>����</option>
			                <option>ת��</option>
			            </select><font color="red">*</font></td>
			        </tr>
			        <tr align="center"><td colspan="2"><input type="submit" value="ȷ��"> <input type="reset" value="ȡ��"></td></tr>
			    </table>
			</form>
		</div>
	</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>