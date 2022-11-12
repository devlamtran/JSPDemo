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
            <!-- Shop Sidebar Start -->
            <div class="col-lg-3 col-md-12">
                <!-- Price Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">Filter by price</h5>
                    <form id="myFormPrice">
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonPrice" value="0" name="priceRange" checked id="price-all">
                            <label class="custom-control-label" for="price-all">All Price</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonPrice" value="10000000" name="priceRange" id="price-1">
                            <label class="custom-control-label" for="price-1">$0 - $100</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonPrice" value="20000000" name="priceRange" id="price-2">
                            <label class="custom-control-label" for="price-2">$100 - $200</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonPrice" value="30000000" name="priceRange" id="price-3">
                            <label class="custom-control-label" for="price-3">$200 - $300</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonPrice" value="40000000" name="priceRange" id="price-4">
                            <label class="custom-control-label" for="price-4">$300 - $400</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="radio" class="custom-control-input buttonPrice" value="50000000" name="priceRange" id="price-5">
                            <label class="custom-control-label" for="price-5">$400 - $500</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Price End -->
                
                <!-- Color Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">Filter Brand</h5>
                    <form id="myFormBrand">
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonBrand" value="all" name="brandRange" checked id="color-1">
                            <label class="custom-control-label" for="color-1">All</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonBrand" value="Sam Sung" name="brandRange" id="color-1">
                            <label class="custom-control-label" for="color-1">Sam Sung</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonBrand" value="HP" name="brandRange" id="color-2">
                            <label class="custom-control-label" for="color-2">HP</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonBrand" value="Apple" name="brandRange" id="color-3">
                            <label class="custom-control-label" for="color-3">Apple</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="radio" class="custom-control-input buttonBrand" value="Oppo" name="brandRange" id="color-4">
                            <label class="custom-control-label" for="color-4">Oppo</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="radio" class="custom-control-input buttonBrand" value="Asus" name="brandRange" id="color-5">
                            <label class="custom-control-label" for="color-5">Asus</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Color End -->

                
            </div>
            <!-- Shop Sidebar End -->


            <h3 class="mb-4">Forgot Password</h3>

<br/>
   <form  name="myForm" action="ForgotPasswordController" method="post" onsubmit="return(validate());">
    <div class="row">
        
        <div class="col-md-6">
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email"  class="form-control">
                
            </div>
        </div>
    </div>
   
    <div>
        <input type="submit" value="Send pass" class="btn btn-primary" />
        <button class="btn btn-light">Cancel</button>
    </div>
</form>
<script type="text/javascript">
    // Form validation code will come here.
    function validate() {
        if (document.myForm.email.value == "") {
            alert("Please provide your email !");
            document.myForm.oldPassword.focus();
            return false;
        }
        
        return true;
    }
   //-->
</script>
        </div>
    </div>
    <!-- Shop End -->


   <%@ include file="/common/web/footer.jsp" %>
</body>

</html>