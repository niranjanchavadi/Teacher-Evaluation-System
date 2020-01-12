<jsp:useBean id="counter" class="hall.count"/>
<%@ page import="java.sql.*"%>
<html>
<head>
hi
<title>ValidateUser1</title>

</head>
<body>
<%
	request.getParameter("user");
	request.getParameter("password");
	request.getParameter("choice");
%>

<%! 
	String u;
	String p;
	String c;
	String nextPage;
	String page;


%>

<%
	String pass="";

	u=request.getParameter("user") ;
	p=request.getParameter("password");
	c=request.getParameter("choice");


	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:evl");
	java.sql.Statement st=con.createStatement();
	
	if(request.getParameter("user").equals("") || 	request.getParameter("password").equals(""))
	nextPage="exception.jsp";	

	else if(c.equals("Student"))
	{
		counter.setCount(-1);
		ResultSet rs=st.executeQuery("Select PassWord from Login where StudentId='"+u+"' ");
		while(rs.next())
		{
			pass=rs.getString("PassWord");
		}
		
		if (pass.equals(p))
		{nextPage="index.jsp";}
		else
			nextPage="exception.jsp";
		
	}

	else if(c.equals("Administrator"))
	{
		ResultSet rs1=st.executeQuery("Select PassWord from Admin where AdminId='"+u+"' ");
		while(rs1.next())
		{
			pass=rs1.getString("PassWord");
		}
			
		if(pass.equals(p))
		{nextPage="adminfinal.jsp";}
		else
			nextPage="exception.jsp";
	}

	else
	{
		nextPage="exception.jsp";
	}

%>
<jsp:forward page="<%=nextPage%>"/>
</body>
</html>	