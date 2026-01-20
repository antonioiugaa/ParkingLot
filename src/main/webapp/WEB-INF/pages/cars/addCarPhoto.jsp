<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>

<t:pageTemplate pageTitle="Add Car Photo">
  <h1>Add Car Photo</h1>

  <form class="needs-validation" action="${pageContext.request.contextPath}/AddCarPhoto" method="POST" enctype="multipart/form-data" novalidate>

    <div class="row">
      <div class="col-md-6 mb-3">
        <label>License plate: ${car.licensePlate}</label>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6 mb-3">
        <label for="file">Photo</label>
        <input type="file" class="form-control" id="file" name="file" required>
        <div class="invalid-feedback">
          Photo is required.
        </div>
      </div>
    </div>

    <input type="hidden" name="car_id" value="${car.id}"/>

    <hr class="mb-4">
    <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>
  </form>
</t:pageTemplate>