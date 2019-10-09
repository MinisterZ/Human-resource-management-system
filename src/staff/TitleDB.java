package staff;
 

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import common.*;
import organization.DeptInfo;
 
public class TitleDB{
	private Connection con = null;
	
public ArrayList<TitleInfo>getTitleList(){
	ResultSet rs = null;
	Statement sql = null;
	ArrayList<TitleInfo>titleList = new ArrayList<TitleInfo>();
	try {
		con = DBConnection.getConnection();
		sql=con.createStatement();
		//执行查询语句获取所有课程信息
		rs = sql.executeQuery("SELECT * FROM t_title");
		while(rs.next()){ 
			TitleInfo titleInfo=new TitleInfo();
			
			titleInfo.setTitleid(rs.getInt("N_TITLE_ID"));
			titleInfo.setTitlename(rs.getString("VC_TITLE_NAME"));
			titleInfo.setQualification(rs.getString("VC_QUALIFICATION"));
			titleInfo.setDuty(rs.getString("VC_DUTY"));
			titleInfo.setWorktarget(rs.getString("VC_WORK_TARGET"));
			 

			titleList.add(titleInfo);
		}
		rs.close();
		sql.close();
		//循环遍历课程信息结果集，将每条记录保存为一个课程信息对象，并把课程信息对象添加到数组studentList		
	}catch (Exception e) {
		System.out.println("获取所有职称信息失败！");

		DBConnection.closeConnection();
	}
	
	return titleList;
}

/*插入*/
public int insertTitle(TitleInfo titleInfo) {
	PreparedStatement pStmt = null;
	int count=0;
	try {
		con = DBConnection.getConnection();
		
		pStmt =con.prepareStatement("insert into t_title(N_TITLE_ID,VC_TITLE_NAME,VC_QUALIFICATION,VC_DUTY,VC_WORK_TARGET) values (?,?,?,?,?)");
	
		pStmt.setInt(1,titleInfo.getTitleid());
		pStmt.setString(2,titleInfo.getTitlename());		
		pStmt.setString(3,titleInfo.getQualification());		
		pStmt.setString(4,titleInfo.getDuty());		
		pStmt.setString(5,titleInfo.getWorktarget());		
		
		count=pStmt.executeUpdate();  
		pStmt.close();
			
							
						
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("添加职称失败！");
	}finally {
		DBConnection.closeConnection();
	}
	
	return count;
}
/* 删除职称信息 */
public int deletetitle(int titleid) {
 	PreparedStatement pStmt=null; 
	int count=0;
    try {
    	con=DBConnection.getConnection();
		pStmt = con.prepareStatement("delete from  t_title  where N_TITLE_ID=?");
		pStmt.setInt(1,titleid);		
		count=pStmt.executeUpdate();
		pStmt.close();    		
    } catch (Exception e) {
       	e.printStackTrace();
        System.out.println("删除职称信息失败！");
    } finally{
    	DBConnection.closeConnection();
	}		
    return count;
} 
/*通过id得到信息*/
public  TitleInfo gettitlebyid(String id){
	 ResultSet rs=null;
 	PreparedStatement pStmt=null; 
	TitleInfo titleInfo=null;
	try {
		con = DBConnection.getConnection();
		pStmt = con.prepareStatement("SELECT * FROM t_title where N_TITLE_ID=?");
		pStmt.setString(1,id);		
		rs = pStmt.executeQuery();
	 
		if(rs.next()){
			titleInfo = new TitleInfo();
			titleInfo.setTitleid(rs.getInt("N_TITLE_ID"));
			titleInfo.setTitlename(rs.getString("VC_TITLE_NAME"));
			titleInfo.setQualification(rs.getString("VC_QUALIFICATION"));
			titleInfo.setDuty(rs.getString("VC_DUTY"));
			titleInfo.setWorktarget(rs.getString("VC_WORK_TARGET"));
		

	 
		}
		rs.close();
		pStmt.close();
		//循环遍历课程信息结果集，将每条记录保存为一个课程信息对象，并把课程信息对象添加到数组studentList		
	}catch (Exception e) {
		System.out.println("获取单个信息失败！");

		DBConnection.closeConnection();
	}
	
	return titleInfo;
}
public int updatetitle(TitleInfo titleInfo) {
	PreparedStatement pStmt=null; 
	int count=0;
    try {			 
    	con=DBConnection.getConnection();
		pStmt = con.prepareStatement("update t_title set VC_TITLE_NAME=?,VC_QUALIFICATION=?,VC_DUTY=?,VC_WORK_TARGET=? where N_TITLE_ID=?");
		pStmt.setString(1,titleInfo.getTitlename());
		pStmt.setString(2,titleInfo.getQualification());
		pStmt.setString(3,titleInfo.getDuty());
		pStmt.setString(4,titleInfo.getWorktarget());
		pStmt.setInt(5,titleInfo.getTitleid());
		count=pStmt.executeUpdate();
		pStmt.close();

    } catch (Exception e) {
       	e.printStackTrace();
        System.out.println("修改职称信息失败！");
    } finally{
    	DBConnection.closeConnection();
	}		
    return count;
}  
	
}
 
