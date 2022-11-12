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

</head>

<body id="page-top">

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

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">Tạo sản phẩm</h1>
					<p class="mb-4">
						DataTables is a third party plugin that is used to generate the
						demo table below. For more information about DataTables, please
						visit the <a target="_blank" href="https://datatables.net">official
							DataTables documentation</a>.
					</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<a class="m-0 font-weight-bold text-primary btn-success"> Gán
								quyền </a>
						</div>
						<div class="card-body">
							
							<div class="col-md-4">
								<form id="formSubmit" action="AssignRoleController"
									method="post">
									<div class="form-group">
									<label class="control-label"> Chọn Role </label>
									<br/>
									<c:if test="${listUserRole.getListRoleIDs().size() == 0}">
									<c:forEach var="role"
										items="${listRolesAdminRequest.getListRoles()}">
										
										      
										     
												<input type="checkbox" name="roleId" 
												value="${role.getId()}" /><label class="control-label"> ${role.getName()} </label>
											    <br/>
											 
										
									</c:forEach>
									</c:if>
									<c:forEach var="role"
										items="${listRolesAdminRequest.getListRoles()}">
										
										   <c:forEach var="roleId" items="${listUserRole.getListRoleIDs()}">
										      
										      <c:choose>
											    <c:when test="${role.getId() == roleId}">
												<input type="checkbox" name="roleId" checked = "checked" 
												value="${role.getId()}" /><label class="control-label"> ${role.getName()} </label>
											    <br/>
											    </c:when>
											  <c:otherwise>
												<input type="checkbox" name="roleId" 
												value="${role.getId()}" /><label class="control-label"> ${role.getName()} </label>
											    <br/>
											  </c:otherwise>
										     </c:choose>  
											   
										   </c:forEach>
										
									</c:forEach>
									</div>
									<div class="form-group">
										<label class="control-label">Tên user</label> <span
											class="text-danger">${userDetailRequest.getUser().getUserName()}</span>
									</div>
									<div class="form-group">
										<label class="control-label">Tên người dùng</label> <span
											class="text-danger">${userDetailRequest.getUser().getLastName()}</span>
									</div>
									<div class="form-group">
										<label class="control-label">Email</label> <span
											class="text-danger">${userDetailRequest.getUser().getEmail()}</span>
									</div>
									<div class="form-group">
										<label class="control-label">Sđt</label> <span
											class="text-danger">${userDetailRequest.getUser().getMobile()}</span>
									</div>

									<div class="form-group">
										<label class="control-label">Ngày đk</label> <span
											class="text-danger">${userDetailRequest.getUser().getRegisterDay()}</span>
									</div>
									

									<div class="form-group">
										<input type='hidden' name='userId'
											value="${userDetailRequest.getUser().getId()}" /> <input
											type="submit" class="btn btn-primary" id="upload-button"
											value="Xác nhận" />

									</div>
								</form>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

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
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>
	<script src="https://code.jquery.com/jquery-latest.js"></script>

</body>

</html>