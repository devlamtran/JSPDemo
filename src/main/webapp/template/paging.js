/**
 * 
 */
$(document).ready(function(e) {

	$(".paging-itemProductAdmin.next").click(function(e) {

				$(this).removeClass("active");
				$(".pagingProductAdmin").find(".paging-itemProductAdmin.active").next()
						.addClass("active");
				$(".pagingProductAdmin").find(".paging-itemProductAdmin.active").prev()
						.removeClass("active");

	})

	$(".paging-itemProductAdmin.previous").click(function(e) {
				$(this).removeClass("active");
				$(".pagingProductAdmin").find(".paging-itemProductAdmin.active").prev()
						.addClass("active");
				$(".pagingProductAdmin").find(".paging-itemProductAdmin.active").next()
						.removeClass("active");
    });
			
	$('.paging-itemProductAdmin').click(function(e) {
		e.preventDefault();
		$(".pagingProductAdmin").find(".paging-itemProductAdmin.active").removeClass("active");
		$(this).addClass("active");
		var pageNumber = $(this).data('page');
		//alert(pageNumber);
		$.ajax({
			type : 'GET',
			url : '/JSPDemo/admin/PagingProductAdminController',
			data : {
				"pageNumber" : pageNumber

			},
			success : function(result) {

				$('#bodyTable').html(result);
			}

		});
	});
	
	$('.paging-itemUserAdmin').click(function(e) {
		e.preventDefault();
		$(".pagingUserAdmin").find(".paging-itemUserAdmin.active").removeClass("active");
		$(this).addClass("active");
		var pageNumber = $(this).data('page');
		//alert(pageNumber);
		$.ajax({
			type : 'GET',
			url : '/JSPDemo/admin/PagingCustomerController',
			data : {
				"pageNumber" : pageNumber

			},
			success : function(result) {

				$('#bodyTableCustomer').html(result);
			}

		});
	});
	
	$('.paging-itemOrderAdmin').click(function(e) {
		e.preventDefault();
		$(".pagingOrderAdmin").find(".paging-itemOrderAdmin.active").removeClass("active");
		$(this).addClass("active");
		var pageNumber = $(this).data('page');
		//alert(pageNumber);
		$.ajax({
			type : 'GET',
			url : '/JSPDemo/admin/PagingOrderController',
			data : {
				"pageNumber" : pageNumber

			},
			success : function(result) {

				$('#bodyTable').html(result);
			}

		});
	});
	
	$('.paging-itemContactAdmin').click(function(e) {
		e.preventDefault();
		$(".pagingContactAdmin").find(".paging-itemContactAdmin.active").removeClass("active");
		$(this).addClass("active");
		var pageNumber = $(this).data('page');
		//alert(pageNumber);
		$.ajax({
			type : 'GET',
			url : '/JSPDemo/admin/PagingContactController',
			data : {
				"pageNumber" : pageNumber

			},
			success : function(result) {

				$('#bodyTable').html(result);
			}

		});
	});
	

});