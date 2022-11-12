/**
 * 
 */

$(document).ready(function(e) {
	
	$(".paging-item.next").click(
			function(e) {

				$(this).removeClass("active");
				$(".paging").find(".paging-item.active").next()
						.addClass("active");
				$(".paging").find(".paging-item.active").prev()
						.removeClass("active");

			})

	$(".paging-item.prev").click(
			function(e) {
				$(this).removeClass("active");
				$(".paging").find(".paging-item.active").prev()
						.addClass("active");
				$(".paging").find(".paging-item.active").next()
						.removeClass("active");
			})

	$('.paging-item')
			.click(
					function(e) {
						e.preventDefault();

						$(".pagingProduct").find(
								".paging-item.active")
								.removeClass("active");
						$(this).addClass("active");
						// $(".paging").find(".next").removeClass("active");
						// $(".paging").find(".prev").removeClass("active");
						var pageNumber = $(this).attr(
								"data-page");
						// alert(pageNumber);
						$
								.ajax({
									type : 'GET',
									url : '/JSPDemo/home/PagingProductController',
									data : {
										"pageNumber" : pageNumber

									},
									success : function(result) {
										// alert(pageNumber);
										$("#body").empty();
										$('#body').append(
												result);
									}

								});
					});
	$('.paging-itemCategory')
			.click(
					function(e) {
						e.preventDefault();

						$(".pagingProductCategory").find(
								".paging-itemCategory.active")
								.removeClass("active");
						$(this).addClass("active");
						
						var pageNumber = $(this).attr(
								"data-page");
						var categoryId = $(this).attr(
								"data-categoryId");
						
						$
								.ajax({
									type : 'GET',
									url : '/JSPDemo/home/PagingProductCategoryController',
									data : {
										"pageNumber" : pageNumber,
										"categoryId" : categoryId

									},
									success : function(result) {
										// alert(pageNumber);
										$("#body").empty();
										$('#body').append(
												result);
									}

								});
					});
	

	$('.paging-itemSearch')
			.click(function(e) {
						e.preventDefault();

						$(".pagingSearch").find(".paging-itemSearch.active")
								.removeClass("active");
						$(this).addClass("active");
						// $(".paging").find(".next").removeClass("active");
						// $(".paging").find(".prev").removeClass("active");
						var pageNumber = $(this).attr(
								"data-page");
						var keyword = $(this).attr("data-key");
						// alert(pageNumber);
						$
								.ajax({
									type : 'GET',
									url : '/JSPDemo/home/PagingProductSearchController',
									data : {
										"pageNumber" : pageNumber,
										"key" : keyword

									},
									success : function(result) {
										// alert(pageNumber);
										$("#body").empty();
										$('#body').append(result);
									}

								});
					});
	$('.paging-order').click(function(e) {
				e.preventDefault();

				$(".pagingOrder").find(".paging-order.active").removeClass("active");
				$(this).addClass("active");
				
				var pageNumber = $(this).attr("data-page");
				
				
				$.ajax({
							type : 'GET',
							url : '/JSPDemo/home/PagingOrderController',
							data : {
								"pageNumber" : pageNumber

							},
							success : function(result) {
								// alert(pageNumber);
								$('#bodyOrder').html(result);
							}

				});
			});
	$(".checkoutOrder").click(function(e) {
		e.preventDefault();
		var country = $("#country option:selected").text();
		var firstName = $("#firstName").val();
		var lastName = $("#lastName").val();
		var middleName = $("#middleName").val();
		var mobile = $("#mobile").val();
		var email = $("#email").val();
		var province = $("#province").val();
		var city = $("#city").val();
		var content = $("#content").val();

		$.ajax({
			url : "/JSPDemo/home/CheckoutController",
			type : "POST",
			data : {

				"firstName" : firstName,
				"lastName" : lastName,
				"middleName" : middleName,
				"mobile" : mobile,
				"email" : email,
				"city" : city,
				"province" : province,
				"country" : country,
				"content" : content

			},
			success : function() {
				alert("Dat thanh cong");

			}
		});

	});
	$(".payOrder").click(function(e) {
		e.preventDefault();
		var orderId = $(this).attr("data-orderId");
		

		$.ajax({
			url : "/JSPDemo/home/PaymentController",
			type : "POST",
			data : {

				"orderId" : orderId							

			},
			success : function() {
				//alert("Dat thanh cong");

			}
		});

	});
	
	$('.buttonPriceCategory').change(function(e) {
		e.preventDefault();
		var priceRange = $(this).val();
		var brandRange = $('input[name=brandRange]:checked', '#myFormBrand').val();
		var categoryId = $('input[name=categoryId]').val();
	
		
	    if (brandRange == undefined) {
	    	$.ajax({
				url : "/JSPDemo/home/FilterPriceCategoryController",
				type : "GET",
				data : {

					"priceRange" : priceRange,
					"categoryId" : categoryId

				},
				success : function(result) {
					$("#body").empty();
					$('#body').append(result);

				}
			});
		}else {
			$.ajax({
				url : "/JSPDemo/home/FilterPriceBrandCategoryController",
				type : "GET",
				data : {

					"priceRange" : priceRange,
					"brandRange" : brandRange,
					"categoryId" : categoryId

				},
				success : function(result) {
					$("#body").empty();
					$('#body').append(result);

				}
			});
			
		}
	    
	    
	    
	});
	$('.buttonBrandCategory').change(function(e) {
		e.preventDefault();
		var brandRange = $(this).val();
		var priceRange = $('input[name=priceRange]:checked', '#myFormPrice').val();
		var categoryId = $('input[name=categoryId]').val();
	
		
	    if (brandRange == undefined) {
	    	$.ajax({
				url : "/JSPDemo/home/FilterBrandCategoryController",
				type : "GET",
				data : {

					"brandRange" : brandRange,
					"categoryId" : categoryId

				},
				success : function(result) {
					$("#body").empty();
					$('#body').append(result);

				}
			});
		}else {
			$.ajax({
				url : "/JSPDemo/home/FilterPriceBrandCategoryController",
				type : "GET",
				data : {

					"priceRange" : priceRange,
					"brandRange" : brandRange,
					"categoryId" : categoryId

				},
				success : function(result) {
					$("#body").empty();
					$('#body').append(result);

				}
			});
			
		}
	    
	    
	    
	});
	
	$('input#submitButton').click(function () {
       
        var form = $('#myForm')[0];
        var data = new FormData(form);
        

        $.ajax({
            url: "/JSPDemo/home/AccountController",
            type: 'POST',
            enctype: 'multipart/form-data',
            data: data,
            processData: false,
            contentType: false,
            success: function () {
               
            }
        });

        $("#image").show("fast", function () {
            
            $.ajax({
                url: "/JSPDemo/home/ImageAccountController",
                type: 'GET',
                data: userName,
                success: function (data) {
                    $(this).attr('src', data);
                }
            });
        });
    });

			

});
