package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.DBUtils;
import utils.MyUtils;


@WebServlet(urlPatterns = { "/deleteProduct" })
public class DeleteProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

	public DeleteProductServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);

		String id = (String) request.getParameter("id");

		String errorString = null;

		try {
			DBUtils.deleteProduct(conn, id);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		} 
		
		// Náº¿u cÃ³ lá»—i, forward (chuyá»ƒn tiáº¿p) sang trang thÃ´ng bÃ¡o lá»—i.
		if (errorString != null) {
			// LÆ°u thÃ´ng tin vÃ o request attribute trÆ°á»›c khi forward sang views.
			request.setAttribute("errorString", errorString);
			// 
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/deleteProductErrorView.jsp");
			dispatcher.forward(request, response);
		}
		// Náº¿u má»�i thá»© tá»‘t Ä‘áº¹p.
		// Redirect (chuyá»ƒn hÆ°á»›ng) sang trang danh sÃ¡ch sáº£n pháº©m.
		else {
			response.sendRedirect(request.getContextPath() + "/productList");
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
