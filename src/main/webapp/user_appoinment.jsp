
<%@page import="com.entity.Specialist"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.DoctorDao" %>
<%@ page import="com.entity.Doctor" %>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Appointment</title>
    <%@include file="../component/allcss.jsp" %>
    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
        }

        .backImg {
            background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0.4)), url("img/hos5.jpg");
            height: 20vh;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <%@include file="component/navbar.jsp" %>
    <div class="container-fluid backImg p-5">
        <p class="text-center fs-2 text-white"></p>
    </div>
    <div class="container p-3">
        <div class="row">
            <div class="col-md-6 p-5">
                <img alt="" src="img/kanda.jpeg" height="500px">
            </div>
            <div class="col-md-6">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="text-center fs-3"> User Appointment</p>
                        <c:if test="${not empty errorMsg }">
                            <p class="fs-4 text-center text-danger">${errorMsg }</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>
                        <c:if test="${not empty succMsg }">
                            <p class="fs-4 text-center text-success">${succMsg }</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>
                        <form class="row g-3" action="appAppointment" method="post">
                            <input type="hidden" name="userid" value="${userobj.id }">
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">FULL NAME</label>
                                <input required type="text" class="form-control"  name="fullname">
                            </div>
                            <div class="col-md-6">
                                <label>GENDER</label>
                                <select class="form-control"  name="gender" required>
                                    <option value="male">MALE</option>
                                    <option value="female">FEMALE</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">AGE</label>
                                <input required type="number" class="form-control" name="age">
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">APPOINTMENT DATE</label>
                                <input type="date" class="form-control" required name="appoint_date">
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">EMAIL</label>
                                <input required type="email" class="form-control" required name="email">
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">PHONE NO</label>
                                <input maxlength="10" required type="text" class="form-control" name="phno">
                            </div>
                            <div class="col-md-6">
                                <label for="inputEmail4" class="form-label">DISEASES</label>
                                <input required type="text" class="form-control" name="diseases">
                            </div>
                            <div class="col-md-6">
                                <label for="inputpassword4" class="form-label">DOCTOR</label>
                                <select required class="form-control" name="doct">
                                    <option value="">--select--</option>
                                  <% DoctorDao dao= new DoctorDao(DBConnect.getConn());
                                		List<Doctor> list = dao.getAllDoctor();
                                		for(Doctor d : list){
                                		
                                			%>
                                			
                                			<option value= "<%=d.getId()%>"> <%=d.getFullName() %> (<%=d.getSpecialist() %>)
                                			</option>
                                			
                                			
                                		<% 	
                                		}
                                		%>
                                </select>
                            </div>
                            <div class="col-md-12">
                                <label>FULL ADDRESS</label>
                                <textarea required name="address" class="form-control" rows="3" cols=""></textarea>
                            </div>
                            <c:if test="${empty userobj }">
                                <a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">SUBMIT</a>
                            </c:if>
                            <c:if test="${not empty userobj }">
                                <button class="col-md-6 offset-md-3 btn btn-success">SUBMIT</button>
                            </c:if>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="component/footer.jsp" %>
</body>
</html>
