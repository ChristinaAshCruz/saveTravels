<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rend mb-3ering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Save Travels</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Source+Serif+Pro:wght@300;400;600;900&display=swap"
      rel="stylesheet"
    />
    <!--  -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="d-flex justify-content-between align-items-baseline">
      <h1 class="mb-4">📝 Expense Details</h1>
      <a href="/" class="btn">Go back to Home</a>
    </div>
    <div class="card p-4 mb-3" id="table-card">
      <div class="row g-0 align-items-end mb-3">
        <h3 class="col-3">Expense Name:</h3>
        <h5 class="col-6">
          <c:out value="${thisExpense.expenseName}"></c:out>
        </h5>
      </div>
      <div class="row g-0 align-items-end mb-3">
        <h3 class="col-3">Expense Description:</h3>
        <h5 class="col-6">
          <c:out value="${thisExpense.description}"></c:out>
        </h5>
      </div>
      <div class="row g-0 align-items-end mb-3">
        <h3 class="col-3">Vendor name:</h3>
        <h5 class="col-6">
          <c:out value="${thisExpense.vendorName}"></c:out>
        </h5>
      </div>
      <div class="row g-0 align-items-end mb-3">
        <h3 class="col-3">Amount Spent:</h3>
        <h5 class="col-6">
          <fmt:formatNumber value="${thisExpense.amountCost}" type="currency" />
        </h5>
      </div>
    </div>
  </body>
</html>
