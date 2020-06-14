<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container ">
    
    
    <%@include file="navbar.jsp" %>
    
    <br>
    
    <h1>Please fill your note details </h1>
    
    <!-- this is add form -->
    
    <form action="SaveNoteServlet" method="post">
    <div class="form-group">
    <label for="title">Note Title</label>
    
    <input required
     name="title"
     type="text" 
     class="form-control"
     id="title" 
     aria-describedby="emailHelp" 
     placeholder="Enter here"/>
     
    <!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
  </div>
  
  
  <div class="form-group">
    <label for="">Note Content</label>
    <textarea required 
    name="content" 
    id="content" 
    class="form-control"
    style="height:200px;"
    placeholder="enter the content here"></textarea>
  </div>
  
  <div class="container text-center " >
  <button type="submit" class="btn btn-dark purple">ADD</button>
  </div>
	
 </div>
</form>

</body>
</html>