/**
 * 
 */
$(document).ready(function(e) {

	$('.buttonPrice').change(function(e) {
		e.preventDefault();
		var priceRange = $(this).val();
		var brandRange = $('input[name=brandRange]:checked', '#myFormBrand').val();
		
		 if (brandRange == undefined) {
		    	$.ajax({
					url : "/JSPDemo/home/FilterPriceController",
					type : "GET",
					data : {

						"priceRange" : priceRange
						

					},
					success : function(result) {
						$("#body").empty();
						$('#body').append(result);

					}
				});
			}else {
			$.ajax({
				url : "/JSPDemo/home/FilterPriceBrandController",
				type : "GET",
				data : {

					"priceRange" : priceRange,
					"brandRange" : brandRange	

				},
				success : function(result) {
					$("#body").empty();
					$('#body').append(result);

				}
			});
			}
	    
	});
	$('.buttonBrand').change(function(e) {
		e.preventDefault();
		var brandRange = $(this).val();
		var priceRange = $('input[name=priceRange]:checked', '#myFormPrice').val();
	
		if (priceRange == undefined) {
	    	$.ajax({
				url : "/JSPDemo/home/FilterBrandController",
				type : "GET",
				data : {

					"brandRange" : brandRange
					

				},
				success : function(result) {
					$("#body").empty();
					$('#body').append(result);

				}
			});
		}else {
			$.ajax({
				url : "/JSPDemo/home/FilterPriceBrandController",
				type : "GET",
				data : {

					"priceRange" : priceRange,
					"brandRange" : brandRange	

				},
				success : function(result) {
					$("#body").empty();
					$('#body').append(result);

				}
			});
	    
		}
	});
})