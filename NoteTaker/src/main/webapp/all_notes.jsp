<%@page import= "com.helper.FactoryProvider" %>
<%@page import= "com.entities.Note" %>
<%@page import= "org.hibernate.Session" %>
<%@page import= "org.hibernate.Query" %>
<%@page import= "java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes : Note Taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container ">
    
    
    <%@include file="navbar.jsp" %>
    
    <br>
    
    <h1>ALL NOTES  </h1>
    <div class= "row">
    <div class="col-12">
    <%  
    Session s=FactoryProvider.getFactory().openSession();
    Query q= s.createQuery("from Note");
    List<Note> list=(List<Note>) q.list();
    for(Note note:list){
    	//out.println(note.getId()+" : "+note.getTitle()+" : "+note.getAddedDate()+" : "+note.getContent()+ "<br>");
    %>
    <div class="card mt-3" style="">
  <img class="card-img-top m-4 mx-auto" style="max-width:100px" src="img/study.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title "><%= note.getTitle() %></h5>
    <p class="card-text">
    <%= note.getContent() %>
    <br>
    <h6 align=right><%= note.getAddedDate().toLocaleString() %></h6>
    </p>
    <div class="container text-center mt-2">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%= note.getId()%>" class="btn btn-primary">Update</a>
  </div></div>
    
</div>
    
    <%
  
    }
    s.close();
    %>
 </div></div></div>
</body>
</html>