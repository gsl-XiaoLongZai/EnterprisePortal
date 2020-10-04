<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="com.hnzj.*"%>
<%@ include file="Session.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");					//设置编码方式为UTF-8
	News News1=new News();									//引入新闻方法类
	Function Fun=new Function();							//引入功能方法类
	String [] sa=null;										//定义数组
	String NewsID=request.getParameter("newsId");			//从页面请求中获取编号
	String Action=request.getParameter("Action");			//从页面请求中获取命令
	if(Action!=null&&Action.equals("Edit")){				//判断是否存在
		String IP=request.getRemoteAddr();					//得到客户端IP地址
		//从页面缓存中提取当前用户
		String AdminName=(String)session.getAttribute("AdminName");
		String [] s=new String[2];							//定义数组
		s[0]=request.getParameter("upd_NewsTitle");			//填写数组第一位
		s[1]=request.getParameter("upd_NewsContent");		//填写数组第二位
		String sOK=News1.EditNews(s, NewsID, AdminName, IP);//获取方法返回值
		if(sOK.equals("Yes")){								//判断返回值
			//页面输出
			out.print("<script>alert('修改新闻成功！');location.href='news.jsp';</script>");
			return;
		}else{
			//页面输出
			out.print("<script>alert('添加新闻成功！');location.href='news.jsp';</script>");
			return;
		}
	}
%>
