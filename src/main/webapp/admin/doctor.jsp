<%@page import="com.entity.Specialist"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.DoctorDao" %>
<%@ page import="com.entity.Doctor" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file= "../component/allcss.jsp" %>

 <style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>

           <%@include file= "navbar.jsp" %>
           
           
           <div class= "container-fluid p-3">
           <div class= "row">
           
            <div class= "col-md-5 offset-md-4">
            <div class= "card paint-card">
            <div class= "card-body">
            <p class= "fs-3 text-center"> ADD DOCTOR </p>
            <c:if test="${not empty errorMsg }">
               <p class= "fs-3 text-center text-danger">${errorMsg }</p>
               <c:remove var="errorMsg" scope= "session"/>
            </c:if>
              
               <c:if test="${not empty succMsg }">
               <p class= "fs-3 text-center text-success" role= "alert">${succMsg }</p>
               <c:remove var="succMsg" scope= "session"/>
            </c:if>
            
            <form action= "../addDoctor" method= "post">
            
            <div class= "mb-3">
            <label class= "form-label">Full Name</label> <input type= "text"
                   required name= "fullname" class= "form-control">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">DOB</label> <input type= "date"
                   required name= "dob" class= "form-control">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">QUALIFICATION</label> <input type= "text"
                   required name= "qualification" class= "form-control">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">SPECIALIST</label> <select name= "spec"
              required class= "form-control">
              <option>--SELECT--</option>
              
              <%SpecialistDao dao= new SpecialistDao(DBConnect.getConn());
              List<Specialist> list =dao.getAllspecialist(); 
              for(Specialist s :list)
              {%> 
                  <option><%=s.getSpecialistName() %></option>
                  
            	  
              <% }
              %>
              
              
              
              
              </select>
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">EMAIL</label> <input type= "email"
                   required name= "email" class= "form-control">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">MOB NO</label> <input type= "number"
                   required name= "mobno" class= "form-control">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">PASSWORD</label> <input type= "password"
                   required name= "password" class= "form-control">
            </div>
            
            <button type= "submit" class= "btn btn-primary">SUBMIT</button>
            
            
            </form>
            
            
            </div>
            </div>
            </div>
            
           
           </div>
           </div>

</body>
</html>