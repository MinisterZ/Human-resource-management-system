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
			        <tr > <td align="center" colspan="2">基本信息</td>   </tr>
			        <tr><td>姓名：</td>          <td><input name="name"><font color="red">*</font>2-30个字符</td></tr>
			        <tr><td>性别：</td>          <td><select>
			        <option>男</option>
			        <option>女</option>
			        </select><font color="red">*</font></td></tr>
			        <tr><td>出生日期：</td>
			            <td><input type="data" name="data">	</td>
			        </tr>
			        <tr><td>身份证号</td>        <td><input><font color="red">*</font>15-18个字符</td></tr>
			        <tr><td>籍贯：</td>          <td><input><font color="red">*</font>3-30个字符</td></tr>
			        <tr><td>学历：</td>
			             <td><select>
			                    <option>博士</option>
			                    <option>硕士</option>
			                    <option>本科</option>
			                 </select>
			             </td>
			        </tr>
			
			        <tr><td>民族：</td>
			            <td><select>
			            <option value="1">汉族</option>
			            <option value="2">藏族</option>
			            <option>蒙古族</option>
			            
			     			56个民族，一共56个option，改里面的value
			     			下面的option一样根据哪个03word里的2.3来改

			            
			        </select></td>
			        </tr>
			
			        <tr><td>政治面貌：</td>
			            <td><select>
			            <option>中共党员</option>
			            <option>共青团员</option>
			            <option>群众</option>
			        </select></td>
			        </tr>
			
			        <tr><td>健康状况：</td>
			            <td><select>
			                <option value="良好">良好</option>
			                <option>差</option>
			                
			                
			            </select></td>
			        </tr>
			        <tr><td>户口类型</td>
			            <td><select>
			                <option>农村户口</option>
			                <option>城市居民</option>
			            </select></td>
			        </tr>
			        <tr align="center"><td colspan="2">任职信息</td></tr>
			        <tr><td>工号</td> <td><input><font color="red">*</font>12个字符，如201003310001，入职日期+员工序号</td></tr>
			        <tr><td>部门类型：</td>
			            <td><select>
			            <option>管理部门</option>
			            <option>生产部门</option>
			           
			        </select><font color="red">*</font></td>
			        </tr>
			        <tr> <td>职称：</td>
			            <td><select>
			            <option>助理工程师</option>
			            <option>总工程师</option>
			        </select><font color="red">*</font></td>
			        </tr>
			        <tr><td>岗位：</td>
			            <td><select>
			                <option>CEO</option>
			                <option>CFO</option>
			            </select><font color="red">*</font></td>
			        </tr>
			        <tr><td>任职状态：</td>
			            <td><select>
			                <option>试用</option>
			                <option>转正</option>
			            </select><font color="red">*</font></td>
			        </tr>
			        <tr align="center"><td colspan="2"><input type="submit" value="确定"> <input type="reset" value="取消"></td></tr>
			    </table>
			</form>
		</div>
	</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>