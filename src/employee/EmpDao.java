package employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmpDao {
	public static Connection getConnection()
	{
		Connection con=null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrithik", "root", "");
		} 
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
		return con;
	}
	public static int save(Emp e)
	{
		Connection con = EmpDao.getConnection();
		String query = "insert into empp(firstname, surname, mobile, email, password1, gender)"
				+ "values(?,?,?,?,?,?,?)";
		int status = 0;
		try 
		{
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, e.getFirstname());
			ps.setString(2, e.getSurname());
			ps.setString(3, e.getMobile());
			ps.setString(5, e.getEmail());
			ps.setString(6, e.getPassword1());
			ps.setString(7, e.getGender());
			
			status=ps.executeUpdate();
			
		} 
		catch (SQLException e1) {
			System.out.println(e1);
		}
		
		return status;
	}
	public static List<Emp> getAllemployee()
	{
		List<Emp> list = new ArrayList<Emp>();
		String query = "select * from empp";
		
		try 
		{
			Connection con = EmpDao.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				Emp e = new Emp();
				e.setFirstname(rs.getString(1));
				e.setSurname(rs.getString(2));
				e.setMobile(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setPassword1(rs.getString(5));
				e.setGender(rs.getString(6));
				
				list.add(e);
			}
			con.close();
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	public static Emp getEmployee(String email) throws SQLException
	{
		String query = "select * from empp where email="+email;
				
		Connection con = EmpDao.getConnection();
		Emp e = new Emp();
		try
		{
			
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			rs.next();
			e.setFirstname(rs.getString(1));
			e.setSurname(rs.getString(2));
			e.setMobile(rs.getString(3));
			e.setEmail(rs.getString(4));
			e.setPassword1(rs.getString(5));
			e.setGender(rs.getString(6));
		} 
		catch (SQLException e1) {
			e1.printStackTrace();
		}
		con.close();
		return e;
		
	}
	public static int update(Emp e)
	{
		String query = "update empp set firstname=?, surname=?, mobile=?, email=?, password1=?, gender=? where email="+e.getEmail();
		int status = 0;
		
		try 
		{
			Connection con = EmpDao.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, e.getFirstname());
			ps.setString(2, e.getSurname());
			ps.setString(3, e.getMobile());
			ps.setString(5, e.getEmail());
			ps.setString(6, e.getPassword1());
			ps.setString(7, e.getGender());
			
			status=ps.executeUpdate();
		} 
		catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return status;
	}
	public static int delete(String email)
	{
		int status = 0;
		String query = "delete from empp where email="+email;
		try 
		{
			Connection con = EmpDao.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			status=ps.executeUpdate();
		} 
		catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		return status;
	}
}


