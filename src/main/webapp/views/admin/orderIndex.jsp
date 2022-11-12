<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Dashboard</title>

<!-- Custom fonts for this template-->
<link
	href="<c:url value ='/template/admin/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="<c:url value ='/template/admin/css/sb-admin-2.min.css'/>"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-latest.js"></script>


<script src="<c:url value ='/template/paging.js'/>"></script>



</head>

<body id="page-top">

	<!--	<input type='hidden' id='listProduct'
		value="${listProductRequest.getListProduct()}" /> -->
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/common/admin/sideBar.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@ include file="/common/admin/header.jsp"%>
				<!-- End of Topbar -->
				<div id="titan"></div>
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">Danh sách order</h1>
					<p class="mb-4"></p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							
							<form
								class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"
								method="get">
								<div class="input-group">
									<input name="keyword" type="text"
										class="form-control bg-light border-0 small"
										placeholder="Search for..." aria-label="Search"
										aria-describedby="basic-addon2"> 
									<div class="input-group-append">
										<button class="btn btn-primary" type="button">
											<i class="fas fa-search fa-sm"></i>
										</button>
									</div>
								</div>

							</form>
						</div>

						<div class="card-body">
							<div class="table-responsive">
								<table id="myTable" class="table table-bordered" id="dataTable"
									width="100%" cellspacing="0">
									<thead>
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
									<tfoot>
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
									</tfoot>
									<tbody id="bodyTable">

										<c:forEach var="order"
											items="${listOrdersRequest.getListOrders()}">
											<tr>
												<th>${order.getId()}</th>
												<th>${order.getFirstName()}</th>
												<th>${order.getLastName()}</th>
												<th>${order.getEmail()}</th>
												<th>${order.getMobile()}</th>
												<th>${order.getCity()}</th>
												<th>${order.toStringPrice()} đ</th>
												<th>${order.getStatus()}</th>
												<th>${order.getCreatedAt()}</th>
												<th><table>
														<tr>
															
															<td>
																<form class="btn-toolbar"
																	action="<c:url value ='DetailOrderAdminController'/>">
																	<input type='hidden' name="orderId"
																		value="${order.getId()}" /><input type="submit"
																		class="btn btn-primary mr-1" id="buttonEdit"
																		value="Detail" />
																</form>
															</td>
															<td><form class="btn-toolbar"
																	action="<c:url value ='DeleteOrderController'/>">
																	<input type='hidden' name="orderId"
																		value="${order.getId()}" /><input type="submit"
																		class="btn btn-warning" id="buttonEdit" value="Delete" />
																</form></td>
														</tr>
													</table></th>

											</tr>
										</c:forEach>

									</tbody>

								</table>
							</div>
							<!-- pagelink -->
							<%--For displaying Previous link except for the 1st page --%>
							<ul class="pagination pagingOrderAdmin">
                            <c:if test="${currentPage != 1}">
									<li class="paginate_button page-item paging-itemOrderAdmin previous disabled" data-page="${currentPage-1}" id="dataTable_previous"><a href="" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
												
											</c:if>
                                      <c:forEach begin="1" end="${totalPages}" var="i">
										<c:choose>
											
											<c:when test="${currentPage eq i}">
											 <li class="paginate_button page-item paging-itemOrderAdmin active" data-page="${i}"><a href="" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">${i}</a></li>
											
											</c:when>
											<c:otherwise>
											 <li class="paginate_button page-item paging-itemOrderAdmin" data-page="${i}"><a href="" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">${i}</a></li>
											
											</c:otherwise>
											
										</c:choose>
									</c:forEach>
									<c:if test="${currentPage lt totalPages}">
												  <li class="paginate_button page-item paging-itemOrderAdmin" data-page="${currentPage+1}"><a href="" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">Next</a></li>
												
											</c:if>
                                 </ul>
						</div>
					</div>

				</div>
				<!-- Footer -->
				<%@ include file="/common/admin/footer.jsp"%>
				<!-- End of Footer -->

			</div>

			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="<c:url value ='/vendor/jquery/jquery.min.js'/>"></script>
		<script
			src="<c:url value ='vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

		<!-- Core plugin JavaScript-->
		<script
			src="<c:url value ='/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

		<!-- Custom scripts for all pages-->
		<script src="<c:url value ='/js/sb-admin-2.min.js'/>"></script>

		<!-- Page level plugins -->
		<script src="<c:url value ='/vendor/chart.js/Chart.min.js'/>"></script>

		<!-- Page level custom scripts -->
		<script src="<c:url value ='/js/demo/chart-area-demo.js'/>"></script>
		<script src="<c:url value ='/js/demo/chart-pie-demo.js'/>"></script>
</body>

</html>