<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE>Untitled-1</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">


</HEAD>
<BODY BGCOLOR=#FFFFFF>

<%!char a;%>
<%!int b=0;%>
<%!
String nextPage="index.jsp";
int c=0;
static String z="";

%>
<%
String q1=request.getParameter("R1");
int intQ1=Integer.parseInt(q1);

String q2=request.getParameter("R2");
int intQ2=Integer.parseInt(q2);

String q3=request.getParameter("R3");
int intQ3=Integer.parseInt(q3);

String q4=request.getParameter("R4");
int intQ4=Integer.parseInt(q4);

int total=intQ1+intQ2+intQ3+intQ4;

%>
<%
request.getParameter("user");
request.getParameter("coid");
request.getParameter("tname");
%>

<%
String s=request.getParameter("user");
String y="Yes";
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:evl");
	java.sql.Statement st=con.createStatement();


st.executeUpdate("insert into Student(DidEvaluation) values('"+y+"') where StudentId=('"+s+"') ");


 st.executeUpdate("insert into Final(StudentId,CourseId,TeacherName,Q1,Q2,Q3,Q4,Total) values('"+request.getParameter("user")+"','"+
request.getParameter("coid")+"','"+request.getParameter("tname")+"','"+request.getParameter("R1")+
"','"+request.getParameter("R2")+"','"+request.getParameter("R3")+"','"+request.getParameter("R4")+"','"+total+"')");

%> 

<TABLE WIDTH=760 BORDER=0 CELLPADDING=0 CELLSPACING=0 height="83">
	<TR>
		<TD width="760" height="5">
			<IMG SRC="images\index_01.gif" WIDTH=760 HEIGHT=88 ALT=""></TD>
	</TR>


<jsp:forward page="<%=nextPage%>"/>	
</TABLE>

</BODY>
</HTML>