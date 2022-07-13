<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


   <%@include file="all_css_js.jsp" %>

<title>Add Notes</title>
</head>
<body>

 <%@include file="NavBar.jsp" %>
 
 
 <br>
 
<div class="container">


<h1>Please fill your note details</h1>


 <!-- this is add form -->
 
 <form action="note" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" name="title"  required class="form-control " id="title" aria-describedby="emailHelp" placeholder="Enter here">
  </div>
  
  
  <div class="form-group">
    <label for="content" placeholder="Enter your content here">Note Content</label>
   <textarea id="content" required name="content"
    placeholder="Enter your content here" 
   class="form-control" style="height:300px;">
   </textarea>
  </div>
  
  <div class=" container text-center">
  
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
</div>

</body>
</html>