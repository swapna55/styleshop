<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product page</title>
<jsp:include page="Adminheader.jsp"/>

<style type="text/css">

.tg {

	border-collapse: collapse;

	border-spacing: 0;

	border-color: #101010;

}


.tg td {

	font-family: Arial, sans-serif;

	font-size: 14px;

	padding: 10px 5px;

	border-style: solid;

	border-width: 1px;

	overflow: hidden;

	word-break: normal;

	border-color: #101010;

	color: #00000;

	background-color: #e0e0e0;

}


.tg th {

	font-family: Arial, sans-serif;

	font-size: 14px;

	font-weight: normal;

	padding: 10px 5px;

	border-style: solid;

	border-width: 1px;

	overflow: hidden;

	word-break: normal;

	border-color: #282828;

	color: #000000;

	background-color: #f0f0f0;

}


.tg .tg-4eph {

	background-color: #f0f0f0;

}

</style>


</head>

<body>

	<div class="container-fluid">

		<div class="row">

			<div class="col-sm-12">

			<div class="col-sm-3"></div>	

				<div class="col-sm-6">

					<div class="panel panel-default">

						<div class="panel-heading">Add

							Product</div>

						<div class="panel-body">

							<h1>Add a Product</h1>


						



<form:form action="${pageContext.request.contextPath}/product/add" commandName="product" enctype="multipart/form-data">

							<table>

									<tr>

										<td><form:label path="id">

												<spring:message text="ID" />

											</form:label></td>

										<c:choose>

											<c:when test="${!empty product.id}">

												<td><form:input path="id" disabled="true"

														readonly="true" /></td>

											</c:when>


											<c:otherwise>

												<td><form:input path="id" patttern=".{6,7}"

														required="true"

														title="id should contains 6 to 7 characters" /></td>

											</c:otherwise>

										</c:choose>

									<tr>

										<form:input path="id" hidden="true" />

										<td><form:label path="name">

												<spring:message text="Name" />

											</form:label></td>

										<td><form:input path="name" required="true" /></td>

									</tr>



									<tr>

										<td><form:label path="price">

												<spring:message text="Price" />

											</form:label></td>

										<td><form:input path="price" required="true" /></td>

									</tr>


									<tr>

										<td><form:label path="description">

												<spring:message text="Description" />

											</form:label></td>

										<td><form:input path="description" required="true" /></td>

									</tr>

									



									<tr>

										<td><form:label path="supplier">

												<spring:message text="Supplier" />

											</form:label></td>

										<%-- <td><form:input path="supplier.name" required="true" /></td> --%>

										<td><form:select path="supplier.name"

												items="${supplierList}" itemValue="name" itemLabel="name" /></td>

									</tr>

									<tr>

										<td><form:label path="category">

												<spring:message text="Category" />

											</form:label></td>

										<%-- <td><form:input path="category.name" required="true" /></td> --%>

										<td><form:select path="category.name"

												items="${categoryList}" itemValue="name" itemLabel="name" /></td>

									</tr>


									<tr>



										</td>

									</tr>


									<tr>

										<td colspan="2"><c:if test="${!empty product.name}">

												<input type="submit"

													value="<spring:message text="Edit Product"/>" />

											</c:if> <c:if test="${empty product.name}">

												<input type="submit"

													value="<spring:message text="Add Product"/>" />

											</c:if></td>

									</tr>
																		<tr>

										<td><form:label path="image">

												<spring:message text="Image" />

											</form:label></td>

										<td><form:input path="image" type="file" /></td>

									</tr>
									

								</table>

							</form:form>

							<br>

						</div>

					</div>

				</div>
				</div>

				<div class="col-sm-7">

					<div class="panel panel-default">


						<div class="panel-body">



							<c:if test="${!empty productList}">

								<table class="tg">

									<tr>

										<th width="80">Product ID</th>

										<th width="120">Product Name</th>

										<th width="200">Product Description</th>

										<th width="80">Price</th>

										

										<th width="80">Product Category</th>

										<th width="80">Product Supplier</th>

										<th width="60">Edit</th>

										<th width="60">Delete</th>

									</tr>

									<c:forEach items="${productList}" var="product">

										<tr>

											<td>${product.id}</td>

											<td>${product.name}</td>

											<td>${product.description}</td>

											<td>${product.price}</td>


											<td>${product.category.name}</td>

											<td>${product.supplier.name}</td>

											<td><a

												href="<c:url value='product/edit/${product.id}' />">Edit</a></td>

											<td><a

												href="<c:url value='product/remove/${product.id}' />">Delete</a></td>

										</tr>

									</c:forEach>

								</table>

							</c:if>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>

</center>


</body>

</html>