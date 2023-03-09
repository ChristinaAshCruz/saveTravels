<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Project Name here</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
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
    <h1 class="mb-4">Edit Expense</h1>
    <div class="card p-4 mb-3" id="table-card">
        <form:form action="/expense/${thisExpense.id}/edit" method="POST" modelAttribute="thisExpense">
            <input type="hidden" name="_method" value="PUT" />
        <div class="mb-3">
          <form:label for="expenseName" class="form-label" path="expenseName">Expense:</form:label>
          <form:input type="text" class="form-control" name="expenseName" path="expenseName"/>
          <form:errors path="expenseName"></form:errors>
        </div>
        <div class="mb-3">
          <form:label for="vendorName" class="form-label" path="vendorName">Vendor Name:</form:label>
          <form:input type="text" class="form-control" name="vendorName" path="vendorName"/>
        </div>
        <div class="mb-3">
          <form:label class="form-label" path="amountCost">Amount:</form:label>
          <form:errors path="amountCost"></form:errors>
          <div class="input-group mb-3">
            <span class="input-group-text">$</span>
            <div class="form-floating">
              <form:input
              type="currency"
              step="0.01"
              min="0.01"
              class="form-control p-2"
              path="amountCost"
              />
            </div>
          </div>
        </div>
        <div class="mb-3">
          <form:label path="description" class="form-label">Description:</form:label>
          <form:errors path="description"></form:errors>
          <form:textarea
            class="form-control"
            placeholder="Leave a comment here"
            path="description"
            />
        </div>
        <button class="btn" type="submit">Submit</button>
      </form:form>
    </div>
  </body>
</html>
