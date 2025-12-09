<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<t:pageTemplate pageTitle="Users">

  <h1>Users</h1>

  <div class="table-responsive">
    <table class="table table-striped table-hover">
      <thead>
      <tr>
        <th>Username</th>
        <th>Email</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="user" items="${users}">
        <tr>
          <td>${user.username}</td>
          <td>${user.email}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>

</t:pageTemplate>