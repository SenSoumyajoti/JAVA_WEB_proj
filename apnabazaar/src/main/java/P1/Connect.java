package P1;
import java.sql.*;
import java.util.ArrayList;
public class Connect{
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public Connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projects","root","root@1"); 
			Statement st=con.createStatement();
				
			
			System.out.println("Connected");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public ArrayList<String> getcategory(){
		
		ArrayList<String>arr=new ArrayList<String>();
		try {
		String sql="select Distinct(category) from products";
		ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()) {
			arr.add(rs.getString(1));
			}
		}catch(Exception e) {
		e.printStackTrace();
		}
	return arr;
	
}
	public ArrayList<Products> getAllrecords(String category)
	{
		ArrayList<Products> arr=new ArrayList<Products>();
		try {
			String sql="";
			if(category ==null)
				category= "all";
			if(category.equals("all")) {
				sql="select id, title,Category,description,image,price from products";
			}
			else
			{
				sql="select id, title,Category,description,image,price from products where category=?";
				ps=con.prepareStatement(sql);
				ps.setString(1,category);
			}
			rs=ps.executeQuery();
			while(rs.next())
			{
				Products p1=new Products();
				p1.setId(rs.getInt(1));
				p1.setTitle(rs.getString(2));
				p1.setCategory(rs.getString(3));
				p1.setDescription(rs.getString(4));
				p1.setImage(rs.getString(5));
				p1.setPrice(rs.getDouble(6));
				arr.add(p1);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return arr;

		}
	public ArrayList<Products> getAllproducts(String pname)
	{
		ArrayList<Products> arr=new ArrayList<Products>();
		try {
			String sql="";
				
				sql="select id, title,Category,description,image,price from products where title like?";
				ps=con.prepareStatement(sql);
				ps.setString(1,pname+"%");
				rs=ps.executeQuery();
			while(rs.next())
			{
				Products p1=new Products();
				p1.setId(rs.getInt(1));
				p1.setTitle(rs.getString(2));
				p1.setCategory(rs.getString(3));
				p1.setDescription(rs.getString(4));
				p1.setImage(rs.getString(5));
				p1.setPrice(rs.getDouble(6));
				arr.add(p1);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return arr;

		}
	}



