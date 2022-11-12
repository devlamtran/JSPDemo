/**
 * 
 */
$(document).ready(function(e) {

	
	
	$("#category").change(function() {
		var categoryId = $(this).children("option:selected").val();
		$.ajax({
			type : 'GET',
			url : '/JSPDemo/admin/PagingProductCategoryAdminController',
			data : {
				"categoryId" : categoryId

			},
			success : function(result) {

				$('#bodyTable').html(result);
			}

		});
		$.ajax({
			type : 'GET',
			url : '/JSPDemo/admin/PagingTableProductCategoryController',
			data : {
				"categoryId" : categoryId

			},
			success : function(result) {

				$('#tablePagination').html(result);
			}

		});
	});
	$('.paginationProductCategory').click(function(e) {
		e.preventDefault();

		var pageNumber = $(this).attr("data-page");
		alert(pageNumber);
//		$.ajax({
//			type : 'GET',
//			url : '/JSPDemo/home/PagingProductAdminController',
//			data : {
//				"pageNumber" : pageNumber
//
//			},
//			success : function(result) {
//
//				$('#bodyTable').html(result);
//			}
//
//		});
	});

});