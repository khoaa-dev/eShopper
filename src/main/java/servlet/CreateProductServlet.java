package servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import beans.Product;
import beans.UserAccount;
import utils.DBUtils;
import utils.MyUtils;

@WebServlet(urlPatterns = { "/createProduct" })

public class CreateProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private final String UPLOAD_DIRECTORY = "resources/img";

	public CreateProductServlet() {
		super();
	}

	// Hiá»ƒn thá»‹ trang táº¡o sáº£n pháº©m.
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserAccount user = MyUtils.getLoginedUser(session);

		request.setAttribute("user", user);

		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/createProduct.jsp");
		dispatcher.forward(request, response);
	}

	// Khi ngÆ°á»�i dÃ¹ng nháº­p cÃ¡c thÃ´ng tin sáº£n pháº©m, vÃ  nháº¥n Submit.
	// PhÆ°Æ¡ng thá»©c nÃ y sáº½ Ä‘Æ°á»£c gá»�i.
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);

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
        }
		  
        
	    System.out.println(nameProduct + priceStr + fileName);
	    product = new Product(nameProduct, price, fileName);
	
	    try {
	    	 DBUtils.insertProduct(conn, product);
	    } catch (SQLException e2) {
	    	 // TODO Auto-generated catch block
	    	 e2.printStackTrace();
	    }
		

	    
		request.setAttribute("product", product);

		response.sendRedirect(request.getContextPath() + "/productList");
		
		
	} 
	}
	
}
