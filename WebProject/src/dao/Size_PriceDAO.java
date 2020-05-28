package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.SizePrice;

public class Size_PriceDAO implements DBConfig{
	public SizePrice findAll(int size_price_cd) {
		SizePrice s=new SizePrice();
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			String sql="SELECT * FROM size_price WHERE size_price_cd=?";

			PreparedStatement pSmt=conn.prepareStatement(sql);
			pSmt.setInt(1, size_price_cd);


			ResultSet rs=pSmt.executeQuery();
			s.setSize_price_cd(size_price_cd);
			s.setHeight(rs.getInt("height"));
			s.setWidth(rs.getInt("width"));
			s.setPrice(rs.getInt("price"));
		}catch (SQLException e) {
			e.getStackTrace();
			return null;
		}
		return  s;
	}
}
