package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Product;
import beans.UserAccount;

public class DBUtils {
	public static UserAccount findUser(Connection conn, //
			String userName, String password) throws SQLException {

		String sql = "Select a.username, a.pass, a.gender, a.email, a.fullName, a.id from account a " //
				+ " where a.username = ? and a.pass= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String gender = rs.getString("Gender");
			Integer id = rs.getInt("id");
			String email = rs.getString("email");
			String fullName = rs.getString("fullName");
			UserAccount user = new UserAccount();
			user.setId(id);
			user.setUserName(userName);
			user.setPass(password);
			user.setGender(gender);
			user.setFullName(fullName);
			user.setEmail(email);
			return user;
		}
		return null;
	}
	
	public static UserAccount findUser(Connection conn, String userName) throws SQLException {

		String sql = "Select a.username, a.pass, a.gender, a.email, a.fullName, a.id from account a "//
				+ " where a.username = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String password = rs.getString("Password");
			String gender = rs.getString("Gender");
			Integer id = rs.getInt("id");
			String email = rs.getString("email");
			String fullName = rs.getString("fullName");
			UserAccount user = new UserAccount();
			user.setId(id);
			user.setUserName(userName);
			user.setPass(password);
			user.setGender(gender);
			user.setFullName(fullName);
			user.setEmail(email);
			return user;
		}
		return null;
	}
	
	public static List<Product> queryProduct(Connection conn) throws SQLException {
		String sql = "Select a.id, a.nameProduct, a.price, a.imageProduct from Product a ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			String id = rs.getString("id");
			String nameProduct = rs.getString("nameProduct");
			float price = rs.getFloat("price");
			String imageProduct = rs.getString("imageProduct");
			Product product = new Product();
			product.setId(id);
			product.setNameProduct(nameProduct);
			product.setPrice(price);
			product.setImageProduct(imageProduct);
			list.add(product);
		}
		return list;
	}
	
	public static Product findProduct(Connection conn, String id) throws SQLException {
		String sql = "Select a.id, a.nameProduct, a.price, a.imageProduct from Product a where a.id=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, id);

		ResultSet rs = pstm.executeQuery();

		while (rs.next()) {
			String idProduct = rs.getString("id");
			String nameProduct = rs.getString("nameProduct");
			String imageProduct = rs.getString("imageProduct");
			float price = rs.getFloat("price");
			Product product = new Product(idProduct, nameProduct, price, imageProduct);
			return product;
		}
		return null;
	}
	
	public static void updateProduct(Connection conn, Product product) throws SQLException {
		String sql = "Update product set nameProduct =?, price=?, imageProduct=? where id=? ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, product.getNameProduct());
		pstm.setFloat(2, product.getPrice());
		pstm.setString(3, product.getImageProduct());
		pstm.setString(4, product.getId());
		pstm.executeUpdate();
	}
	
	public static void insertProduct(Connection conn, Product product) throws SQLException {
		String sql = "Insert into Product(nameProduct, price, imageProduct) values (?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, product.getNameProduct());
		pstm.setFloat(2, product.getPrice());
		pstm.setString(3, product.getImageProduct());

		pstm.executeUpdate();
	}
	
	public static void deleteProduct(Connection conn, String id) throws SQLException {
		String sql = "Delete From Product where id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, id);

		pstm.executeUpdate();
	}
	
}
