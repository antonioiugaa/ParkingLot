<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<t:pageTemplate pageTitle="Add Car">

  <h1>Add Car</h1>

  <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">

    <div class="row g-3">

      <div class="col-md-6">
        <label for="license_plate" class="form-label">License Plate</label>
        <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value="" required>
        <div class="invalid-feedback">
          License Plate is required.
        </div>
      </div>

      <div class="col-md-6">
        <label for="parking_spot" class="form-label">Parking Spot</label>
        <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="" value="" required>
        <div class="invalid-feedback">
          Parking Spot is required.
        </div>
      </div>

      <div class="col-12">
        <label for="owner_id" class="form-label">Owner</label>
        <select class="form-select" id="owner_id" name="owner_id" required>
          <c:forEach var="user" items="${users}" varStatus="status">
            <option value="${user.id}">${user.username}</option>
          </c:forEach>
        </select>
        <div class="invalid-feedback">
          Please select a valid owner.
        </div>
      </div>

    </div>

    <hr class="my-4">

    <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>

  </form>

  <script>
    (() => {
      'use strict'

      const forms = document.querySelectorAll('.needs-validation')

      Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }

          form.classList.add('was-validated')
        }, false)
      })
    })()
  </script>

</t:pageTemplate>