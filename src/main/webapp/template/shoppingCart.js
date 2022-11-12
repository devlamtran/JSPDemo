/**
 * 
 */

$(document).ready(function(e) {
	$(".add-cart").click(function(e) {

		e.preventDefault();
		var productId = $(this).attr("data-productId");

		$.ajax({
			url : "/JSPDemo/home/AddToCartController",
			type : "GET",
			data : {
				"productId" : productId

			},
			success : function(result) {
				$(".amountItem").html(result);

			}
		});

	});
	$(".quantityItem").change(function(e) {
				// alert("hi");
				var quantity = $(this).val();
				var price = $(this).closest("tr")
						.find(".price").text();
				var totalPrice = quantity * parseFloat(price, 10);
				var totalPriceFormat = totalPrice.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString() + ".000" + " đ";
				$(this).closest("tr").find(".totalPrice").html(totalPriceFormat);

				updatePriceOrder(true);

				var productId = $(this).closest("tr").find(".productCart").attr("data-productId");

				$.ajax({
					url : "/JSPDemo/home/UpdateCartController",
					type : "GET",
					data : {
						"productId" : productId,
						"quantity" : quantity
					},
					success : function() {

					}
				});

	});
	$(".remove-cart").click(function(e) {
				e.preventDefault();
				var self = $(this);
				var productId = $(this).closest("tr").find(".productCart").attr("data-productId");
				

				$.ajax({
					url : "/JSPDemo/home/RemoveCartController",
					type : "GET",
					data : {
						"productId" : productId

					},
					success : function(result) {
						self.closest("tr").remove();								
						updatePriceOrder(false);
						$(".amountItem").html(result);
						if (result=="0") {
							$(".totalOrder").html("0đ");
						}
					}
				});


	});
	function updatePriceOrder(isEventChange) {
		var totalPriceOrder = 0;

		$(".totalPrice").each(function() {

					var priceOrder = $(this).text();
					var format = parseFloat(priceOrder).toFixed(3).toString() + ".000";
					totalPriceOrder = totalPriceOrder + parseFloat(format, 10);

					if (isEventChange) {
						$(this).html(format);
					}

					var formatTotalPriceOrder = totalPriceOrder.toFixed(3).toString() + ".000" + " đ";
					$(".totalOrder").html(formatTotalPriceOrder);

		});
	}
	
			
});