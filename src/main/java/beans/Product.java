package beans;

public class Product {
	private String id;
	private String nameProduct;
	private float price;
	private String imageProduct;
	
	public Product() {

	}

	public Product(String nameProduct, float price, String imageProduct) {
		this.nameProduct = nameProduct;
		this.price = price;
		this.imageProduct = imageProduct;
	}

	public Product(String id, String nameProduct, float price, String imageProduct) {
		this.id = id;
		this.nameProduct = nameProduct;
		this.price = price;
		this.imageProduct = imageProduct;
	}	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNameProduct() {
		return nameProduct;
	}

	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

	public String getImageProduct() {
		return imageProduct;
	}

	public void setImageProduct(String imageProduct) {
		this.imageProduct = imageProduct;
	}

	 public float getPrice() {
		 return price;
	   }

	 public void setPrice(float price) {
		 this.price = price;
	 }
	
}
