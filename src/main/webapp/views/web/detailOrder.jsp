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


    <script src="<c:url value ='/template/productWeb.js'/>"></script>
    <script src="<c:url value ='/template/cart.js'/>"></script>
    <script>
        var cartController = new CartController();
        cartController.initialize();
    </script>
  
</head>

<body>
   
<%@ include file="/common/web/header.jsp" %>
     <!-- Checkout Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div class="mb-4">
                    <h4 class="font-weight-semi-bold mb-4">My Order</h4>
                    <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Product Id</th>
                            <th>Photo</th>
                            <th>Title</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>TotalPrice</th>
                            
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        <c:forEach items="${detailOrderRequest.getOrder().getItems()}" var="item">
                        <tr>
                            <td class="align-middle">${item.getProduct().getId()}</td>
                            <td class="align-middle"><img src="<c:url value ='/products/${item.getProduct().getLinkImage()}'/>" alt="" style="width: 50px;"></td>
                            <td class="align-middle">${item.getProduct().getTitle()}</td>
                            <td class="align-middle">${item.toStringPrice()} </td>
                            <td class="align-middle">${item.getQuantity()} </td>
                            <td class="align-middle">${item.toStringTotalPrice()} </td>
                            
                            
                        </tr>
                       </c:forEach>
                    </tbody>
                </table>
                    
                </div>
               
            </div>
            <div class="col-lg-4">
                <form class="mb-5" action="">
                    <div class="input-group">
                        <input type="text" class="form-control p-4" placeholder="Coupon Code">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Apply Coupon</button>
                        </div>
                    </div>
                </form>
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Order Summary</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Subtotal</h6>
                            <h6 class="font-weight-medium totalOrder">${detailOrderRequest.getOrder().toStringPrice()} đ</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">$10</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            <h5 class="font-weight-bold">$160</h5>
                        </div>
                        <button class="btn btn-block btn-primary my-3 py-3 payOrder" data-orderId="${detailOrderRequest.getOrder().getId()}">Proceed To Checkout</button>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Checkout End -->


   <%@ include file="/common/web/footer.jsp" %>
</body>

</html>