<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<HTML>
<HEAD>
<TITLE>TEACHER EVALUATION FORM</TITLE>

</HEAD>
<BODY BGCOLOR=#FFFFFF>
	<TR>
		<TD colspan="16" width="760" height="88">
			<IMG SRC="images\index_01.gif" WIDTH=760 HEIGHT=88 ALT=""></TD>
	</TR>
	<TR>

<%request.getParameter("tname");%>

<%!String tn;%>
<%!String a;%>

<%!int t=0;%>


<%!Vector vc;%>
<%
a=request.getParameter("tname");

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:evl");
	java.sql.Statement st = con.createStatement();
%>

<%

ResultSet rs=st.executeQuery("Select Total from Final where TeacherName='"+a+"' ");
double mo=0;
double tm=0;
int x=0;

while(rs.next()){%>
<% tn=rs.getString("Total");%> 

<%



int rm=Integer.parseInt(tn);
mo=mo+rm;
%>
<%++x;%> 
<%}%>

<%tm=x*40;%>

<%


double z=(100*(mo/tm));
%>
<br><br><br>
<b><center>
<%

if(z>=90){out.println(a+"'s GPA is= 4.0");}


else if(z>=80){	out.println(a+"'s GPA is= 3.0");}


else if(z>=70){	out.println(a+"'s GPA is= 2.0");}


else if(z<70){out.println(a+"'s GPA is= 1.0");}

%>
	
    </b>
    <form method="POST" action="techergpa.jsp">
      <!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" --><p>
      <a href="techergpa.jsp"><input type="submit" value="BACK" name="B1"></a></p>
    </form>
	
</BODY>
</HTML>