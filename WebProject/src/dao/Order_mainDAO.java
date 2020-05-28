package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.OrderMain;
import model.User;

public class Order_mainDAO implements DBConfig {

	/*public static void main(String[] args) {
		Order_mainDAO dao = new Order_mainDAO();
		User u = new User();
		u.setUser_id(1234);
		List<OrderMain> res = dao.findByUserId(u);
		for(OrderMain o:res) {
			System.out.println(o.getUser_id());
		}
	}*/
	/*dao.create(new OrderMain(

			1234,
			1,
			"2020-05-25"
			));*/

	public OrderMain create(OrderMain orderMain) {
		Connection conn = null;


		//データベースに接続
		try {
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			//INSERT文を準備
			String sql = "INSERT INTO order_main(user_id,total,order_date) VALUES (?,?,CURRENT_DATE);";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setInt(1, orderMain.getUser_id());
			pStmt.setInt(2, orderMain.getTotal());
			/*pStmt.setString(3, orderMain.getOrder_date());*/

			//実行
			System.out.println(pStmt.executeUpdate());
			pStmt.close(); // Close Statement
			return orderMain;
		} catch (SQLException e) {
			e.printStackTrace();
			return orderMain;
		} finally {
			if (conn != null) {
				try {
					conn.close();

				} catch (SQLException e) {
					e.printStackTrace();
					return orderMain;
				}
			}

		}

	}

	public List<OrderMain> findByUserId(User user) {
		Connection conn = null;
		List<OrderMain> orderMainList = new ArrayList<OrderMain>();

		//データベースに接続
		try {
			Class.forName(DRIVER_NAME);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			//SELECT文を準備
			String sql = "SELECT * FROM order_main WHERE user_id=? ORDER BY order_date DESC;";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, user.getUser_id());

			//SELECTを実行し、結果表（ResultSet）を取得
			ResultSet rs = pStmt.executeQuery();

			System.out.println(rs);

			while (rs.next()) {

				Integer order_id = rs.getInt("order_id");
				Integer user_id = rs.getInt("user_id");
				Integer total = rs.getInt("total");
				String order_date = rs.getString("order_date");



				OrderMain orderMainResult = new OrderMain(
						order_id,
						user_id,
						total,
						order_date);

				orderMainList.add(orderMainResult);

			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;

		} finally {
			if (conn != null) {
				try {
					conn.close();

				} catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}

		return orderMainList;

	}
}
