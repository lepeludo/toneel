<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="${pageContext.servletContext.contextPath}/styles/favicon.ico">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css"
	rel="stylesheet">


<title>Cover Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.servletContext.contextPath}/styles/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.servletContext.contextPath}/styles/cover.css"
	rel="stylesheet">

<link href="${pageContext.servletContext.contextPath}/styles/search.css"
	rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div class="site-wrapper">

		<div class="site-wrapper-inner">

			<div class="cover-container">

				<div class="masthead clearfix">
					<div class="inner">
						<h3 class="masthead-brand"></h3>
						<ul class="nav masthead-nav">
							<li class="active"><a
								href="${pageContext.request.contextPath}/">Home</a></li>
							<li><sec:authorize access="isAuthenticated()">
									<a href="<c:url value='/j_spring_security_logout' />">
										Logout</a>
								</sec:authorize></li>
							<li><sec:authorize access="not isAuthenticated()">
									<a href="${pageContext.request.contextPath}/login">Log in</a>
								</sec:authorize></li>
						</ul>
						<p class="lead">
					</div>
					<p class="lead">
				</div>
				<div class="inner cover">
					<br /> <br />
					<p class="lead"></p>
					<c:url value="/zoekstuk" var="url" />
					<div class="bram">
						<p class="lead">
						<div class="row">
							<p class="lead">
							<form action="${url}" method="get" id="form1">
								<div class="input-group custom-search-form">
									<input type="text" name="tekst" class="form-control"
										placeholder="zoek op naam"> <span
										class="input-group-btn">
										<button class="btn btn-default" type="submit">
											<span class="glyphicon glyphicon-search"></span>
										</button>
									</span>
								</div>
							</form>
							<form action="${url}" method="get" id="form2">
								<div class="input-group custom-search-form">
									<input type="text" name="aantalspelers" class="form-control"
										placeholder="zoek op aantal spelers"> <span
										class="input-group-btn">
										<button class="btn btn-default" type="submit">
											<span class="glyphicon glyphicon-search"></span>
										</button>
									</span>
								</div>
								<!-- /input-group -->

							</form>
						</div>
					</div>

					<h1 class="cover-heading">Toneelstukken</h1>
					<table class="table">
						<tr>
							<td>nummer</td>
							<td>mapnr</td>
							<td>mapnaam</td>
							<td>mapdeel</td>
							<td>naam</td>
							<td>auteur</td>
							<td>splrs</td>
							<td>opm</td>
						</tr>
						<c:forEach var="toneelstuk" items="${toneelstukken}"
							varStatus="status">
							<tr>
								<td width="30">${status.count}</td>
								<td>${toneelstuk.mapnummer}</td>
								<td>${toneelstuk.mapnaam}</td>
								<td>${toneelstuk.mapdeel}</td>
								<td>${toneelstuk.naamstuk}</td>
								<td>${toneelstuk.naamauteur}</td>
								<td>${toneelstuk.aantalspelers}</td>
								<td>${toneelstuk.opmerkingen}</td>
								<td><a
									href="${pageContext.request.contextPath}/detail?id=${toneelstuk.id}">Pas
										aan</a></td>
							</tr>
						</c:forEach>
					</table>


				</div>

				<div class="mastfoot">
					<div class="inner">
						<p></p>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/styles/bootstrap.min.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/styles/docs.min.js"></script>
</body>
</html>
