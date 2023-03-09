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
    <h1 class="mb-4">✈️ Save Travels</h1>
    <div class="card p-4 mb-3" id="table-card">
      <table class="table" id="directory">
        <thead>
          <tr id="header-row">
            <th scope="col">Expense</th>
            <th scope="col">Vendor</th>
            <th scope="col">Amount</th>
            <!-- <th scope="col">Actions</th> -->
          </tr>
        </thead>
        <tr>
          <td>
            <a href="#"></a>
          </td>
          <td></td>
          <td></td>
          <!-- <td>
            <a href="#" class="btn col-5 ms-1">Edit</a>
            <a href="#" class="btn col-5 ms-1">Delete</a>
          </td> -->
        </tr>
      </table>
    </div>
    <div class="card p-4" id="form-card">
      <h3 class="mb-0">Add an Expense</h3>
      <hr class="mb-4" />
      <form>
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label"
            >Email address</label
          >
          <input
            type="email"
            class="form-control"
            id="exampleInputEmail1"
            aria-describedby="emailHelp"
          />
          <div id="emailHelp" class="form-text">
            We'll never share your email with anyone else.
          </div>
        </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input
            type="password"
            class="form-control"
            id="exampleInputPassword1"
          />
        </div>
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1" />
          <label class="form-check-label" for="exampleCheck1"
            >Check me out</label
          >
        </div>
        <button type="submit" class="btn">Submit</button>
      </form>
    </div>
  </body>
</html>
