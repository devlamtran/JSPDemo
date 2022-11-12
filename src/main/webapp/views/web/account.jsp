<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>EShopper - Bootstrap Shop Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="<c:url value ='/template/web/img/favicon.ico'/>" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="<c:url value ='/template/web/lib/owlcarousel/assets/owl.carousel.min.css'/>" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<c:url value ='/template/web/css/style.css'/>" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-latest.js"></script>


     <script src="<c:url value ='/template/web.js'/>"></script>
      <script src="<c:url value ='/template/filter.js'/>"></script>
     <script src="<c:url value ='/template/shoppingCart.js'/>"></script>
    
</head>

<body>
   
<%@ include file="/common/web/header.jsp" %>
     <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
           


           <h3 class="mb-4">Account Settings</h3>

<div class="p-4">
    <div class="img-circle text-center mb-3">
        <img id="image" src="<c:url value ='/users/${user.getLinkImage()}'/>" alt="Image" class="shadow">
    </div>
    <h4 class="text-center">Kiran Acharya</h4>
</div>
<form  enctype="multipart/form-data" method="post" id="myForm">
    <div class="row">
        
        <div class="col-md-6">
            <div class="form-group">
                <label>First Name</label>
                <input type="text" name="firstName" value="${user.getFirstName()}" class="form-control">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Last Name</label>
                <input type="text" name="lastName" value="${user.getLastName()}" class="form-control">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Middle Name</label>
                <input type="text" name="middleName" value="${user.getMiddleName()}" class="form-control">
            </div>
        </div>
         <div class="col-md-6">
            <div class="form-group">
                <label>User Name</label>
                <input type="text" name="userName" value="${user.getUserName()}" class="form-control">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Email</label>
                <input type="text" name="email" value="${user.getEmail()}" class="form-control">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>Phone Number</label>
                <input type="text" name="phoneNumber" value="${user.getMobile()}" class="form-control">
            </div>
        </div>    

        <div class="col-md-6">
            <div class="form-group">
                <label>Picture Profile</label>
                <input type="file" name="photoProfile" class="form-control">
            </div>
        </div>


    </div>
    <div>
        <input type="submit" value="Save" id="submitButton" class="btn btn-primary" />
        <input class="btn btn-light" value="Cancel"/>
    </div>
</form>


        </div>
    </div>
    <!-- Shop End -->


   <%@ include file="/common/web/footer.jsp" %>
</body>

</html>