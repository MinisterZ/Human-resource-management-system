package staff;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MyTools;
 

 
public class TitleInsertAction extends HttpServlet {
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TitleDB beanDB=new TitleDB();
		   //1、获取客户端提交数据
		   TitleInfo titleInfo=new  TitleInfo();
		   titleInfo.setTitleid(MyTools.strToint(request.getParameter("titleid")));
		   titleInfo.setTitlename(MyTools.toChinese(request.getParameter("titlename")));
		   titleInfo.setQualification(MyTools.toChinese(request.getParameter("qualification")));
		   titleInfo.setDuty(MyTools.toChinese(request.getParameter("duty")));
		   titleInfo.setWorktarget(MyTools.toChinese(request.getParameter("worktarget")));
		   
 
		   //2、处理客户端提交数据
			beanDB.insertTitle(titleInfo);		    
		   //3、向客户端做出响应 
		   response.sendRedirect(request.getContextPath()+"/PostListAction");
	}

}
