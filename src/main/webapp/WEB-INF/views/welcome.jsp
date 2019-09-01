<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="label.heading" /></title>

<spring:url value="/res/css/style.css" var="cssUrl" />
<spring:url value="/res/css/bootstrap.min.css" var="bootstrapUrl" />
<spring:url value="/res/js/jquery-3.4.1.js" var="jqueryUrl" />
<spring:url value="/res/js/script.js" var="scriptUrl" />

<link href="${cssUrl}" rel="stylesheet" />
<link href="${bootstrapUrl}" rel="stylesheet" />
<script src="${jqueryUrl}"></script>
<script src="${scriptUrl}"></script>

</head>

<body>

<div class="locale">
	<a href="?locale=en">English </a> |
	<a href="?locale=fr">French </a>
</div>	
	<div align="center">
		
		<form:form role="form" action="weather.htm" modelAttribute="weather" class="light-bg">
			<div class="img-wrapper mb-4">
			<img class="mb-4" src="${pageContext.request.contextPath}/res/img/logo.png" /> 
				
				<p>
					<spring:message code="label.one" />
					<code><spring:message code="label.weather.data" /></code>
					<spring:message code="label.two" /> <a
						href="https://en.wikipedia.org/wiki/List_of_towns_and_cities_with_100,000_or_more_inhabitants/cityname:_B"
						target="_blank"><spring:message code="label.all.cities" /></a>
				</p>
			</div>

			<div class="form-label-group">
				<spring:message code="label.city" />
				<input type="text" id="searchItem" name="city" class="form-control"
					placeholder="Enter City or Cities(with comma separated)" required
					autofocus>

			</div>
			
			<div class="checkbox mb-3">
				<label> <input type="checkbox" value="remember-me">
					<spring:message code="label.choose.default" />
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				<spring:message code="label.get.weather" />
			</button>
			<p class="mt-5 mb-3 text-muted text-center">&copy;OpenWeather@2019</p>
		</form:form>


	</div>

</body>
</html>

