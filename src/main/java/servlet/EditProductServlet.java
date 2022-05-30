package servlet;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import beans.Product;
import beans.UserAccount;
import utils.DBUtils;
import utils.MyUtils;

@WebServlet(urlPatterns = { "/editProduct" })
public class EditProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private final String UPLOAD_DIRECTORY = "resources/img";

	public EditProductServlet() {
		super();
	}

	// Hiá»ƒn thá»‹ trang sá»­a sáº£n pháº©m.
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		HttpSession session = request.getSession();
		UserAccount user = MyUtils.getLoginedUser(session);
		String id = (String) request.getParameter("id");

		Product product = null;

		String errorString = null;

		try {
			product = DBUtils.findProduct(conn, id);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// KhÃ´ng cÃ³ lá»—i.
		// Sáº£n pháº©m khÃ´ng tá»“n táº¡i Ä‘á»ƒ edit.
		// Redirect sang trang danh sÃ¡ch sáº£n pháº©m.
		if (errorString != null && product == null) {
			response.sendRedirect(request.getServletPath() + "/productList");
			return;
		}

		// LÆ°u thÃ´ng tin vÃ o request attribute trÆ°á»›c khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("product", product);
		request.setAttribute("user", user);

		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/editProductView.jsp");
		dispatcher.forward(request, response);

	}

	// Sau khi ngÆ°á»�i dÃ¹ng sá»­a Ä‘á»•i thÃ´ng tin sáº£n pháº©m, vÃ  nháº¥n Submit.
	// PhÆ°Æ¡ng thá»©c nÃ y sáº½ Ä‘Æ°á»£c thá»±c thi.
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);

		String idProduct = request.getParameter("idProduct");
		System.out.println("idProduct: "+ idProduct);
		String nameProduct = "";
		String priceStr = "";
		String fileName = request.getParameter("imageProduct");		
		float price = 50;
		Product product;
		
		if (ServletFileUpload.isMultipartContent(request)) {

		    DiskFileItemFactory factory = new DiskFileItemFactory();
		    factory.setSizeThreshold(1024 * 1024 * 3);
		    factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		    ServletFileUpload upload = new ServletFileUpload(factory);
		    upload.setFileSizeMax(1024 * 1024 * 40);
		    upload.setSizeMax(1024 * 1024 * 50);
		    String uploadPath = getServletContext().getRealPath("") 
		      + File.separator + UPLOAD_DIRECTORY;
		    File uploadDir = new File(uploadPath);
		    if (!uploadDir.exists()) {
		        uploadDir.mkdir();
	    }
	    try {
            List<FileItem> formItems = upload.parseRequest(request);
			// Process the uploaded items
	        Iterator<FileItem> iter = formItems.iterator();
	        HashMap<String, String> fields = new HashMap<>();
	        while (iter.hasNext()) {
	             FileItem item = iter.next();

	             if (item.isFormField()) {
	            	 fields.put(item.getFieldName(), item.getString());
	            	 String name = item.getFieldName();
	            	 String value = item.getString();
	            	 if(name.equals("idProduct")) {
	            		 idProduct = value;
	            	 }
	            	 if(name.equals("nameProduct")) {
	            		 nameProduct = value;
	            	 }
	            	 if(name.equals("price")) {
	            		 price = Float.parseFloat(value);
	            	 }
	             }
	         }
            if (formItems != null && formItems.size() > 0) {
                for (FileItem item : formItems) {
                    if (!item.isFormField()) {
                        fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);
                        item.write(storeFile);
                        request.setAttribute("message", "File " + fileName + " has uploaded successfully!");
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message", "There was an error: " + ex.getMessage());
            System.out.println("Loi");
        }
		  
	    System.out.println(idProduct + nameProduct + price + fileName);
		product = new Product(idProduct, nameProduct, price, fileName);

		try {
	    	 DBUtils.updateProduct(conn, product);
	    } catch (SQLException e2) {
	    	 // TODO Auto-generated catch block
	    	System.out.println("Khong update duoc");
	    	e2.printStackTrace();
	    }
		request.setAttribute("product", product);

		response.sendRedirect(request.getContextPath() + "/productList");
	}
	}
}
