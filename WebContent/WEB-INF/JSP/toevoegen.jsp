<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Cover Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.servletContext.contextPath}/styles/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.servletContext.contextPath}/styles/form.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<h1>Voeg een stuk toe</h1>
	<c:url value="/docreate" var="url" />
	<div class="wit">
		<sf:form action='${url}' method="post" commandName="toneelstuk">
			<div class="form-group">
				<sf:label class="zwart" path="mapnummer">mapnummer</sf:label>
				<sf:input path="mapnummer" type="text" class="control" />
				<sf:errors path="mapnummer" cssClass="error"></sf:errors>
			</div>
			<div class="form-group">
				<sf:label class="zwart" path="mapnaam">mapnaam</sf:label>
				<sf:input path="mapnaam" type="text" class="control" />
				<sf:errors path="mapnaam" cssClass="error"></sf:errors>
			</div>
			<sf:label class="zwart" path="mapdeel">mapdeel</sf:label>
			<sf:input path="mapdeel" type="text" class="control" />
			<sf:errors path="mapdeel" cssClass="error"></sf:errors>
			<div class="form-group"></div>
			<sf:label class="zwart" path="naamstuk">naam stuk</sf:label>
			<sf:input path="naamstuk" type="text" class="control" />
			<sf:errors path="naamstuk" cssClass="error"></sf:errors>
			<div class="form-group"></div>
			<sf:label class="zwart" path="naamauteur">naam auteur</sf:label>
			<sf:input path="naamauteur" type="text" class="control" />
			<sf:errors path="naamauteur" cssClass="error"></sf:errors>
			<div class="form-group"></div>
			<sf:label class="zwart" path="aantalspelers">aantal spelers</sf:label>
			<sf:input path="aantalspelers" type="text" class="control" />
			<sf:errors path="aantalspelers" cssClass="error"></sf:errors>
			<div class="form-group"></div>
			<sf:label class="zwart" path="opmerkingen">opmerkingen</sf:label>
			<sf:textarea rows="20" cols="60" path="opmerkingen" type="text"
				class="control" />
			<div class="form-group"></div>
			<div class="form-group">
				<sf:errors path="opmerkingen" cssClass="error"></sf:errors>
				<br />
			</div>
			<sf:hidden path="id" />
			<button type="submit" class="btn btn-primary">Voeg stuk toe</button><br/><br/>
		</sf:form>
	</div>
</body>
</html>