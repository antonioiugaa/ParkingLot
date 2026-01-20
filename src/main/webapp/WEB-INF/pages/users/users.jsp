<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>

<t:pageTemplate pageTitle="Users">
  <h1>Users</h1>

  <form method="POST" action="${pageContext.request.contextPath}/Users">

    <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
      <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddUser" role="button">Add User</a>
    </c:if>

    <c:if test="${pageContext.request.isUserInRole('INVOICING')}">
      <button class="btn btn-secondary btn-lg" type="submit">Invoice</button>
    </c:if>

    <table class="table table-striped mt-3">
      <thead>
      <tr>
        <th>Select</th>
        <th>Username</th>
        <th>Email</th>
        <th>Edit</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="user" items="${users}" varStatus="status">
        <tr>
          <td>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="user_${user.id}" name="user_ids" value="${user.id}">
              <label class="custom-control-label" for="user_${user.id}"></label>
            </div>
          </td>
          <td>${user.username}</td>
          <td>${user.email}</td>

          <td>
            <c:if test="${pageContext.request.isUserInRole('WRITE_USERS')}">
              <a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath}/EditUser?id=${user.id}">Edit User</a>
            </c:if>
          </td>

        </tr>
      </c:forEach>
      </tbody>
    </table>
  </form>

  <c:if test="${not empty invoices}">
    <hr/>
    <h2>Invoices</h2>
    <c:forEach var="username" items="${invoices}" varStatus="status">
      ${status.index + 1}. ${username} <br/>
    </c:forEach>
  </c:if>

</t:pageTemplate>