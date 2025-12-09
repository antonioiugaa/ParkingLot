<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
  <h1>Cars</h1>
  <div class="mb-3">
    <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddCar">
      Add Car
    </a>
  </div>
  <div class="container text-center">
    <c:forEach var="car" items="${cars}">
      <div class="row">
        <div class="col">
            ${car.licensePlate};
        </div>
        <div class="col">
            ${car.parkingSpot}
        </div>
        <div class="col">
            ${car.ownerName}
        </div>
        <div class="col">
          <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit Car</a>
        </div>
      </div>
    </c:forEach>
  </div>
  <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>