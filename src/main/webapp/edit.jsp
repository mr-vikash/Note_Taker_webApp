<%@ page import="com.helper.*, org.hibernate.*, com.Entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page: Note taker</title>

<%@include file="all_css_js.jsp"%>
</head>
<body>

	<div class="container-fluid  m-0 p-0">

		<%@include file="NavBar.jsp"%>
	</div>

	<div class="container">


		<h1>Edit your note</h1>

		<br>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		%>


		

		<!-- this is add form -->

		<form action="UpdateServlet" method="post">
			<div class="form-group">
			<input name="noteId"  type="hidden" value="<%=note.getId() %>"/>
				<label for="title">Note Title</label> <input type="text"
					name="title" required class="form-control " id="title"
					aria-describedby="emailHelp" placeholder="Enter here"
					
					value = "<%= note.getTitle() %>"
					>
			</div>


			<div class="form-group">
				<label for="content" placeholder="Enter your content here">Note
					Content</label>
				<textarea id="content" required name="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 300px;"  >
					<%=note.getContent()%>
   </textarea>
			</div>

			<div class=" container text-center">

				<button type="submit" class="btn btn-success">Save your note</button>
			</div>
		</form>
	</div>
</body>
</html>