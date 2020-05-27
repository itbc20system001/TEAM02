package dao;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MyPageDao {
	//データベース接続に使用する情報
	private final String JDBC_URL = "jdbc:mariadb://localhost/docotsubu";
	private final String DB_USER = "root";
	private final String DB_PASS = "insource.2015it";


	// データベースに接続
	try(Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {


		//SELECT文を準備
		String sql_user = "SELECT USER_ID, EMAIL, USER_NM, ADDRESS FROM USER";
		PreparedStatement pStmt_user = conn.prepareStatement(sql_user);
		String sql_order_main = "SELECT ORDER_DATE, ORDER_ID, TOTAL FROM ORDER_MAIN";
		PreparedStatement pStmt_order_main = conn.prepareStatement(sql_order_main);
		String sql_order_desc = "SELECT PATTERN_CD, SIZE_PRICE_CD, LINER_FLG, HOOK_FLG, QUANTITY, PRICE FROM ORDER_DESC";
		PreparedStatement pStmt_order_desc = conn.prepareStatement(sql_order_desc);
		//SELECTを実行し、結果表を取得
		ResultSet rs1 = pStmt_user.executeQuery();
		ResultSet rs2 = pStmt_order_main.executeQuery();
		ResultSet rs3 = pStmt_order_desc.executeQuery();
	}
}
}