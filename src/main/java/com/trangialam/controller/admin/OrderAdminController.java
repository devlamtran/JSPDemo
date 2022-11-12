package com.trangialam.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trangialam.dto.GetAllOrderCustomerRequest;
import com.trangialam.dto.GetAllOrderRequest;
import com.trangialam.dto.PagingRequest;
import com.trangialam.model.User;
import com.trangialam.service.IServiceAdmin;
import com.trangialam.service.ServiceAdminImpl;

@WebServlet("/admin/OrderAdminController")
public class OrderAdminController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IServiceAdmin serviceAdmin = new ServiceAdminImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pageNumber = 1;
		

		if (req.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(req.getParameter("pageNumber"));
		}
		PagingRequest pagingRequest = new PagingRequest();
		pagingRequest.setPageNumber(pageNumber);
		pagingRequest.setRecordsPerPage(6);
		
		GetAllOrderRequest allOrderRequest = new GetAllOrderRequest();
		allOrderRequest.setListOrders(serviceAdmin.getAllOrdersPaging(pagingRequest));
		req.setAttribute("listOrdersRequest", allOrderRequest);
		
		int totalPages = serviceAdmin.getTotalPagesOrder(pagingRequest);
		req.setAttribute("totalPages", totalPages);
		req.setAttribute("currentPage", pagingRequest.getPageNumber());
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/orderIndex.jsp");
		rd.forward(req, resp);
	}

}
