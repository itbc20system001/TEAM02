package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.SizePrice;

public class Size_PriceDAO implements DBConfig {
		/*public static void main(String[] args) {
			Size_PriceDAO dao=new Size_PriceDAO();
			SizePrice s=dao.find_Bycd(1);


			System.out.println(s.getPrice());
		}*/

	public SizePrice find_Bycd(int size_price_cd) {
		SizePrice s = new SizePrice();
		Connection conn = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			String sql = "SELECT * FROM size_price WHERE size_price_cd=?";

			PreparedStatement pSmt = conn.prepareStatement(sql);
			pSmt.setInt(1, size_price_cd);

			ResultSet rs = pSmt.executeQuery();

			if (rs.next()) {
				s.setSize_price_cd(size_price_cd);
				s.setHeight(rs.getInt("height"));
				s.setWidth(rs.getInt("width"));
				s.setPrice(rs.getInt("price"));
			}

			rs.close();
			pSmt.close(); // Close Statement

		} catch (SQLException e) {
			e.getStackTrace();
			return null;
		}finally {
			if (conn != null) {
				try {
					conn.close();

				} catch (SQLException e) {
					e.printStackTrace();
					return s;
				}
			}

		}
		return s;
	}
}
