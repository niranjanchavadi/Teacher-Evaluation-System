<jsp:useBean id="counter" class="hall.count"/>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<HTML>
<HEAD>
<TITLE>TEACHER EVALUATION FORM</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">
</HEAD>
<BODY BGCOLOR=#FFFFFF>

<!--from here-->
<%!
	int c; 
%>
<%
 c=counter.getCount();
%>



<%request.getParameter("user");%>
<%request.getParameter("password");%>

<%!
	int count=0; 
	String cid; 
	String tid;
	String cn;
	String sn;
	String tn;
	String a;
	int x=0;
	String nPage="end.jsp";
	public static String not="";
	Vector vc;
	String nextPage="end.jsp";

%>

<%
 a=request.getParameter("user");

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:evl");
	java.sql.Statement st = con.createStatement();
%>

<%ResultSet rs=st.executeQuery("Select StudentName from Student where StudentId='"+a+"' ");
while(rs.next()){%>
<% sn=rs.getString("StudentName");%> 
<%}%>

<%
int oo=0;
ResultSet rrss=st.executeQuery("Select CourseId from StudentCourse where StudentId='"+a+"' ");
while(rrss.next()){oo++;}

ResultSet rs1=st.executeQuery("Select CourseId from StudentCourse where StudentId='"+a+"' ");

x=0;
while(rs1.next()){
if(x>c){
break;
}
cid=rs1.getString("CourseId");
if(c==oo){%>
<jsp:forward page="<%=nextPage%>"/>
<%}
x++;
}
%>

<%ResultSet rs2=st.executeQuery("Select TeacherId from TeacherCourse where CourseId='"+cid+"' ");
while(rs2.next()){%>
<%tid=rs2.getString("TeacherId");%>
<%}%>

<%ResultSet rs3=st.executeQuery("Select TeacherName from Teacher where TeacherId='"+tid+"' ");
while(rs3.next()){%>
<% tn=rs3.getString("TeacherName");%> 
<%}%>

<%ResultSet rs4=st.executeQuery("Select CourseName from Course where CourseId='"+cid+"' ");
while(rs4.next()){%>
<% cn=rs4.getString("CourseName");%> 
<%}%>

<!--upto here-->

<TABLE WIDTH=760 BORDER=0 CELLPADDING=0 CELLSPACING=0 height="225">
	<TR>
		<TD colspan="13" width="760" height="88">
			<IMG SRC="images/index_01.gif" WIDTH=760 HEIGHT=88 ALT=""></TD>
	</TR>
	<TR>
		<TD width="12" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="13" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="301" height="1" bgcolor="#333333" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="47" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="51" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="66" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="65" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="64" height="1" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="64" height="1" bgcolor="#333333">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="19" align="center" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="19" align="center" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19" align="center">
			&nbsp;</TD>
		<TD width="301" height="19" align="left" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19" align="center">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="19" align="center" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="19" align="center" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19" align="center">
			&nbsp;</TD>
		<TD width="301" height="19" align="left" colspan="3">
<%="<h4>STUDENT ID = "+a+"</h4>"%>
</TD>
		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19" align="center">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="19" align="center" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="19" align="center" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19" align="center">
			&nbsp;</TD>
		<TD width="301" height="19" align="left" colspan="3">
<%="<h4>STUDENT NAME = "+sn+"</h4>"%>
</TD>

		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19" align="center">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="19" align="center" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="19" align="center" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19" align="center">
			&nbsp;</TD>
		<TD width="301" height="19" align="left" colspan="3">
<%="<h4>TEACHER NAME = "+tn+"</h4>"%>
</TD>
		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19" align="center">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="19" align="center" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="19" align="center" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19" align="center">
			&nbsp;</TD>
		<TD width="301" height="19" align="left" colspan="3">
<%="<h4>COURSE NAME = "+cn+"</h4>"%>
</TD>
		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19" align="center">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
<!--		<TR>
		<TD width="12" height="19" align="center" bgcolor="#F7BEFF">
        
        &nbsp;</TD>
		<TD width="13" height="19" align="center" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19" align="center">
			&nbsp;</TD>
		<TD width="301" height="19" align="center" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19" align="center">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>-->
	<TR>
		<TD width="12" height="19" align="center" bgcolor="#F7BEFF">
        
        </TD>
		<TD width="13" height="19" align="center" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19" align="center">
			&nbsp;</TD>
		<TD width="301" height="19" align="center" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="19" align="center">
			Poor</TD>
		<TD width="47" height="19" align="center">
			Fair</TD>
		<TD width="51" height="19" align="center">
			Good</TD>
		<TD width="66" height="19" align="center">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
	<form method="POST" action="evaluate.jsp">
        <!--webbot bot="SaveResults" u-file="D:\1111\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p>&nbsp;</p>

	<TR>
		<TD width="12" height="21" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="21" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="21">
			&nbsp;</TD>
		<TD width="301" height="21" colspan="3">
			Teachers interest in solving the problem</TD>
		<TD width="44" height="21" align="center">
			<input type="radio" name="R1" value="4" checked></TD>
		<TD width="47" height="21" align="center">
			<input type="radio" name="R1" value="7"></TD>
		<TD width="51" height="21" align="center">
			<input type="radio" name="R1" value="10"></TD>
		<TD width="66" height="21">
			&nbsp;</TD>
		<TD width="65" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="19" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="19" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19">
			&nbsp;</TD>
		<TD width="301" height="19" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="21" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="21" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="21">
			&nbsp;</TD>
		<TD width="301" height="21" colspan="3">
			Teacher's knowledge about course</TD>
		<TD width="44" height="21" align="center">
			<input type="radio" name="R2" value="4" checked></TD>
		<TD width="47" height="21" align="center">
			<input type="radio" name="R2" value="7"></TD>
		<TD width="51" height="21" align="center">
			<input type="radio" name="R2" value="10"></TD>
		<TD width="66" height="21">
			&nbsp;</TD>
		<TD width="65" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="19" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="19" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19">
			&nbsp;</TD>
		<TD width="301" height="19" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="21" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="21" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="21">
			&nbsp;</TD>
		<TD width="301" height="21" colspan="3">
			Teacher's way of grading
        </TD>
		<TD width="44" height="21" align="center">
			<input type="radio" name="R3" value="4" checked ></TD>
		<TD width="47" height="21" align="center">
			<input type="radio" name="R3" value="7"></TD>
		<TD width="51" height="21" align="center">
			<input type="radio" name="R3" value="10"></TD>
		<TD width="66" height="21">
			&nbsp;</TD>
		<TD width="65" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="19" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="19" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="19">
			&nbsp;</TD>
		<TD width="301" height="19" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="19" align="center">
			&nbsp;</TD>
		<TD width="47" height="19" align="center">
			&nbsp;</TD>
		<TD width="51" height="19" align="center">
			&nbsp;</TD>
		<TD width="66" height="19">
			&nbsp;</TD>
		<TD width="65" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
		<TD width="64" height="19">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="21" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="21" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="21">
			&nbsp;</TD>
		<TD width="301" height="21" colspan="3">
			Usefulness of assignments and quizzes</TD>
		<TD width="44" height="21" align="center">
			<input type="radio" name="R4" value="4" checked ></TD>
		<TD width="47" height="21" align="center">
			<input type="radio" name="R4" value="7"></TD>
		<TD width="51" height="21" align="center">
			<input type="radio" name="R4" value="10"></TD>
		<TD width="66" height="21">
			&nbsp;</TD>
		<TD width="65" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="21" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="21" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="21">
			&nbsp;</TD>
		<TD width="301" height="21" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="21" align="center">
			&nbsp;</TD>
		<TD width="47" height="21" align="center">
			&nbsp;</TD>
		<TD width="51" height="21" align="center">
			&nbsp;</TD>
		<TD width="66" height="21">
			&nbsp;</TD>
		<TD width="65" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="21" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="21" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="21">
			&nbsp;</TD>
		<TD width="301" height="21" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="21" align="center">
			&nbsp;</TD>
		<TD width="47" height="21" align="center">
			&nbsp;</TD>
		<TD width="51" height="21" align="center">
			&nbsp;</TD>
		<TD width="66" height="21">
			&nbsp;</TD>
		<TD width="65" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="21" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="21" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="21">
			&nbsp;</TD>
		<TD width="61" height="21">
			&nbsp;</TD>
		<TD width="134" height="21">
			<input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></TD>
		<TD width="106" height="21">
			&nbsp;</TD>
		<TD width="44" height="21" align="center">
			&nbsp;</TD>
		<TD width="47" height="21" align="center">
			&nbsp;</TD>
		<TD width="51" height="21" align="center">
			&nbsp;</TD>
		<TD width="66" height="21">
			&nbsp;</TD>
		<TD width="65" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD width="12" height="21" bgcolor="#F7BEFF">
			&nbsp;</TD>
		<TD width="13" height="21" bgcolor="#333333">
			&nbsp;</TD>
		<TD width="36" height="21">
			&nbsp;</TD>
		<TD width="301" height="21" colspan="3">
			&nbsp;</TD>
		<TD width="44" height="21" align="center">
			&nbsp;</TD>
		<TD width="47" height="21" align="center">
			&nbsp;</TD>
		<TD width="51" height="21" align="center">
			&nbsp;</TD>
		<TD width="66" height="21">
			&nbsp;</TD>
		<TD width="65" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
		<TD width="64" height="21">
			&nbsp;</TD>
	</TR>
		<input type=hidden name=user value=<%=a%>>
		<input type=hidden name=coid value=<%=cid%>>
		<input type=hidden name=tname value=<%=tn%>>
		<input type=hidden name=nothing value=<%=not%>>
	
			    </form>
	</TR>
</TABLE	>
</BODY>
</HTML>