<html>
<BODY BGCOLOR=#FFFFFF>

<%!char a;%>
<%!int b=0;%>
<%!int c=0;%>
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

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:evl");
	java.sql.Statement st=con.createStatement();
 st.executeUpdate("insert into Final(StudentId,CourseId,TeacherName,Q1,Q2,Q3,Q4,Total) values('"+request.getParameter("sid")+"','"+
request.getParameter("cid")+"','"+request.getParameter("tname")+"','"+request.getParameter("R1")+
"','"+request.getParameter("R2")+"','"+request.getParameter("R3")+"','"+request.getParameter("R4")+"','"+total+"')");
%> 
<jsp: forward page="<%=index.jsp%>"/>

</body>
</html>