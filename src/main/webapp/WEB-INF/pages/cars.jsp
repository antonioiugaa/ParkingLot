<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
  <h1>Cars</h1>
  <form method="POST" action="${pageContext.request.contextPath}/Cars">

    <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
      <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddCar">Add Car</a>
      <button class="btn btn-danger" type="submit">Delete Cars</button>
    </c:if>

    <div class="container text-center mt-3"> <div class="row font-weight-bold border-bottom mb-2">
      <div class="col">Select</div>
      <div class="col">License</div>
      <div class="col">Spot</div>
      <div class="col">Owner</div>
      <div class="col">Photo</div>
      <div class="col">Action</div>
      <div class="col">Edit</div>
    </div>

      <c:forEach var="car" items="${cars}">
        <div class="row align-items-center mb-2"> <div class="col">
          <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
            <input type="checkbox" name="car_ids" value="${car.id}" />
          </c:if>
        </div>

          <div class="col">
              ${car.licensePlate}
          </div>
          <div class="col">
              ${car.parkingSpot}
          </div>
          <div class="col">
              ${car.ownerName}
          </div>

          <div class="col">
            <img src="${pageContext.request.contextPath}/CarPhotos?id=${car.id}" width="50" height="50" style="object-fit: cover;" alt="Car Photo"/>
          </div>

          <div class="col">
            <a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath}/AddCarPhoto?id=${car.id}">Add Photo</a>
          </div>

          <div class="col">
            <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
              <a class="btn btn-secondary btn-sm" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit Car</a>
            </c:if>
          </div>

        </div>
      </c:forEach>
    </div>
  </form>

  <hr/>
  <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>