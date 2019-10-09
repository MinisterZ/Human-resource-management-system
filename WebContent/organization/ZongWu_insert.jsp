<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<% String path = request.getContextPath(); %>
<body>
<form name="frm" method="post" action="<%=path %>/ZongWuInsertAction">
	<jsp:include page="Insert.jsp"/>
</form>
</body>
</html>