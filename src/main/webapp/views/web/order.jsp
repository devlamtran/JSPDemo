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
                            <th>Id</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>City</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Day order</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle" id="bodyOrder">
                        <c:forEach items="${listOrdersRequest.getListOrders()}" var="order">
                        <tr>
                            <td data-orderId ="${order.getId()}" class="align-middle">${order.getId()}</td>
                            <td class="align-middle">${order.getFirstName()}</td>
                            <td class="align-middle">${order.getLastName()} </td>
                            <td class="align-middle">${order.getEmail()} </td>
                            <td class="align-middle">${order.getMobile()} </td>
                            <td class="align-middle">${order.getCity()} </td>
                            <td class="align-middle">${order.toStringPrice()} đ</td>
                            <td class="align-middle">${order.getStatus()}</td>
                            <td class="align-middle">${order.getCreatedAt()}</td>
                            <td class="align-middle"><a class="" href="<c:url value ='/home/DetailOrderController?orderId=${order.getId()}'/>" class="btn btn-sm btn-primary">Detail</a>
                            </td>
                        </tr>
                       </c:forEach>
                    </tbody>
                </table>
                     <div class="col-12 pb-1 pagingOrder">
                        <nav aria-label="Page navigation">
                          <ul class="pagination justify-content-center mb-3">
                            <li class="page-item paging-order prev" data-page="${currentPage - 1}">
                            <c:if test="${currentPage != 1}">
								<a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                              </a>
							</c:if>
                              
                            </li>
                            <c:forEach begin="1" end="${totalPages}" var="i">
										<c:choose>
											<c:when test="${currentPage eq i}">
												<li class="page-item paging-order active" data-page="${i}"><a class="page-link" href="#">${i}</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item paging-order" data-page="${i}"><a class="page-link" href="#">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
                            
                            <li class="page-item paging-order next" data-page="${currentPage + 1}">
                            <c:if test="${currentPage lt totalPages}">
								<a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                              </a>
							</c:if>
                              
                            </li>
                          </ul>
                        </nav>
                    </div>
                </div>
               
            </div>
            
        </div>
    </div>
    <!-- Checkout End -->


   <%@ include file="/common/web/footer.jsp" %>
</body>

</html>