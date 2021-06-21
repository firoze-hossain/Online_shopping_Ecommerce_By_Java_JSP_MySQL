# Online_shopping_Ecommerce_By_Java_JSP_MySQL
Create a dynamic web project by eclipse
import MySQL Connector jar in lib folder
Configure tomcat server with project build path
Add a ConnectionProvider Class in java folder 


The Connection Provider Class(For MySQL and Database connection)
package com.roze;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
public static Connection getCon() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","firoze28");
	return con;
	}
	catch (Exception e) {
		System.out.println(e);
		return null;
	}
}
}


Create a database with name "onlineshopping" in MySQL Workbench
create a folder with the name of "table"
Then create a jsp file with the name "create_table.jsp"


<%@page import="com.roze.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String q2="create table product(id int,name varchar(500),category varchar(200),price int,active varchar(10))";
	String q3="create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
	String q4="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id)) ";
	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	System.out.println(q4);
	//st.execute(q1);
	//st.execute(q2);
	//st.execute(q3);
	st.execute(q4);
	System.out.println("Table Created");
	con.close();
}
catch(Exception e){
	System.out.print(e);
}
%>

when one table is created,then comments it out nor it will shows error

or You can download the project
Then extract it
Import project with as genera"Existing project in workspace" with eclipse
Import SQL file in MySQL workbench "Go to server=>Data import=>selct import from self-contained file"
Then run the project(login.jsp) with tomcat server
For admin panel(Username"admin@gmail.com" and password("admin"))
For user Panel create a user"go to signup page" and create a user
Then login with username and password



