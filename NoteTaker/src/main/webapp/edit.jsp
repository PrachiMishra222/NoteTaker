<%@page import= "com.helper.FactoryProvider" %>
<%@page import= "com.entities.Note" %>
<%@page import= "org.hibernate.Session" %>
<%@page import= "org.hibernate.*" %>
<%@page import= "java.util.List" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE HERE </title>
<%@include file="all_js_css.jsp" %>

</head>
<body>
<div class="container ">
    
    
    <%@include file="navbar.jsp" %>
    <%
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=FactoryProvider.getFactory().openSession();
		Note note=(Note)s.get(Note.class,noteId);
		
    %>
    <form action="UpdateServlet" method="post">
    <input value= "<%= note.getId()%>" name="noteId" type="hidden" /> 
    <div class="form-group">
    <label for="title">Note Title</label>
    
    <input required
     name="title"
     type="text" 
     class="form-control"
     id="title" 
     aria-describedby="emailHelp" 
     placeholder="Enter here"
     value="<%= note.getTitle() %>"  
     />
     
    <!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  
  
  <div class="form-group">
    <label for="">Note Content</label>
    <textarea required 
    name="content" 
    id="content" 
    class="form-control"
    style="height:200px;" 
    placeholder="enter the content here"><%=note.getContent()%></textarea>
  </div>
  
  <div class="container text-center " >
  <button type="submit" class="btn btn-success">SAVE</button>
  
  </div>
	
 </div>
</form>
</div>

</body>
</html>