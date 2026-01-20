<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Edit User">
  <h1>Edit User</h1>

  <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditUser">
    <input type="hidden" name="user_id" value="${user.id}">

    <div class="row g-3">
      <div class="col-md-6">
        <label for="username" class="form-label">Username</label>
        <input type="text" class="form-control" id="username" name="username" value="${user.username}" required>
        <div class="invalid-feedback">Username is required.</div>
      </div>

      <div class="col-md-6">
        <label for="email" class="form-label">Email</label>
        <input type="email" class="form-control" id="email" name="email" value="${user.email}" required>
        <div class="invalid-feedback">Valid email is required.</div>
      </div>

      <div class="col-12">
        <label for="password" class="form-label">Password (Leave blank to keep current)</label>
        <input type="password" class="form-control" id="password" name="password">
      </div>
    </div>

    <hr class="my-4">
    <button class="w-100 btn btn-primary btn-lg" type="submit">Save Changes</button>
  </form>

  <script src="${pageContext.request.contextPath}/scripts/form-validation.js"></script>
</t:pageTemplate>