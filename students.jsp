<jsp:useBean id="counter" class="hall.count"/>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Students</title>

</head>
<body>

<%! 

	String c;
	String nextPage;
	String page;


%>

<%
	String u="";
	String p="";

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:evl");
	java.sql.Statement st=con.createStatement();
	
		ResultSet rs=st.executeQuery("Select StudentId from Final");
		while(rs.next())
		{
			u=rs.getString("StudentId");
			if(p!=u)
			out.println(u);
			p=u;

%><br><%
		}
		
%>

</body>
</html>	