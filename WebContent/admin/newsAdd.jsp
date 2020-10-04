<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="com.hnzj.*"%>

<%
	request.setCharacterEncoding("UTF-8");			//设置编码方式
	News News1=new News();							//引入新闻方法类
	Function Fun=new Function();					//引入功能方法类
	//从页面缓存中提取当前用户
	String AdminName=(String)session.getAttribute("AdminName");
	String Action=request.getParameter("Action");	//从页面请求中获取命令
	if(Action!=null&&Action.equals("Add")){			//判断是否存在
		String IP=request.getRemoteAddr();			//得到客户端IP地址
		String [] s=new String[2];					//定义数组
		s[0]=request.getParameter("NewsTitle");		//填写数组第一位
		s[1]=request.getParameter("NewsContent");		//填写数组第二位
		String sNews=News1.AddNews(s, AdminName, IP);//获取方法返回值
		if(sNews.equals("Yes")){
			//页面输出
			out.print("<script>alert('添加新闻成功！');location.href='news.jsp';</script>");
			return;									//结束
		}else{
			//页面输出
			out.print("<script>alert('添加新闻失败！');location.href='news.jsp';</script>");
			return;
		}
	}
%>