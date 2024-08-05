<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<%@page import="com.entity.Specialist"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.DoctorDao" %>
<%@ page import="com.entity.Doctor" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

 .paint-card {
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}

</style>

<%@include file= "../component/allcss.jsp" %>

</head>
<body>

<c:if test="${empty docobj }">
    <c:redirect url= "../doctor_login.jsp"></c:redirect>
</c:if>


<%@include file= "Navbar.jsp" %>

<div class= "container p-4">
<div class= "row">
<div class= "col-md-4 ">
<div class= "card paint-card">
<p class= "text-center fs-3">Change Password</p>

<c:if test="${not empty succMsg}">
                        <p class="text-center text-success fs-3">${succMsg}</p>
                        <c:remove var="succMsg" scope= "session" />
                    </c:if>
                    
                    <c:if test="${not empty errorMsg}">
                        <p class="text-center text-danger fs-3">${errorMsg}</p>
                        <c:remove var="errorMsg" scope= "session" />
                    </c:if>
 

<div class= "card-body">
<form action= "../doctchangepassword" method= "post">
<div class= "mb-3">
<label>Enter New Password</label> <input type= "text"
 name= "newpassword" class= "form-control" required>
</div>

<div class= "mb-3">
<label>Enter Old Password</label> <input type= "text"
name= "oldpassword" class= "form-control" required>
</div>
<input type= "hidden" value= ${docobj.id } name= "uid">
<button class= "btn btn-success col-md-12">Change Password</button>

</form>
</div>
</div>
</div>

<div class= "col-md-5 offset-md-2">
<div class= "card paint-card">
<p class= "text-center fs-3"> Edit Profile</p>

<c:if test="${not empty succMsgd}">
                        <p class="text-center text-success fs-3">${succMsgd}</p>
                        <c:remove var="succMsgd" scope= "session" />
                    </c:if>
                    
                    <c:if test="${not empty errorMsgd}">
                        <p class="text-center text-danger fs-3">${errorMsgd}</p>
                        <c:remove var="errorMsgd" scope= "session" />
                    </c:if>

<div class= "card-body">

 <form action= "../doctorupdateprofile" method= "post">
            
            <div class= "mb-3">
            <label class= "form-label">Full Name</label> <input type= "text"
                   required name= "fullname" class= "form-control" value= "${docobj.fullName }">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">DOB</label> <input type= "date"
                   required name= "dob" class= "form-control"  value= "${docobj.dob }">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">QUALIFICATION</label> <input type= "text"
                   required name= "qualification" class= "form-control" value= "${docobj.qualification }">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">SPECIALIST</label> <select name= "spec"
              required class= "form-control"  >
              <option>${docobj.specialist }</option>
              
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
            <label class= "form-label">EMAIL</label> <input type= "email" readonly
                   required name= "email" class= "form-control" value= "${docobj.email }">
            </div>
            
              <div class= "mb-3">
            <label class= "form-label">MOB NO</label> <input type= "number"
                   required name= "mobno" class= "form-control" value= "${docobj.mobNo }">
            </div>
            
            <input type= "hidden" name= "id" value= "${docobj.id }">
             
            
            <button type= "submit" class= "btn btn-primary">UPDATE</button>
            
            
            </form>
            

</div>
</div>
</div>


</div>
</div>


</body>
</html>