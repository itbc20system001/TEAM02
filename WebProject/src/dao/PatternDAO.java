package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Pattern;

public class PatternDAO {
/*public static void main(String[] args) {
		GetPatternListLogic log=new GetPatternListLogic();
		List<String> pattern_imgList=new ArrayList<>();
		Pattern p=new Pattern();
		p=log.getPattern(3);
		System.out.println(p.getPattern_img());
	}
*/
	//　データベース接続に使用する情報
	private final String JDBC_URL = "jdbc:mariadb://localhost/rideau";
	private final String DB_USER = "root";
	private final String DB_PASS = "insource.2015it";

	//　指定色のデータを探す
	public List<Pattern> findPattern(String color) {
		//　かえす文字列を入れるArrayList
		List<Pattern> pattern_imgList = new ArrayList<>();

		//　データベースへ接続
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}

		try (Connection conn = DriverManager.getConnection(
				JDBC_URL, DB_USER, DB_PASS)) {

			//SELECT文の準備
			String sql = "select * from pattern where pattern_detail = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setString(1, color);

			//SELECTを実行
			ResultSet rs = pStmt.executeQuery();

			//　とってきたデータをArraylistに入れる
			while (rs.next()) {
				int pattern_cd = rs.getInt("pattern_cd");
				String pattern_nm = rs.getString("pattern_nm");
				String pattern_detail = rs.getString("pattern_detail");
				String pattern_img = rs.getString("pattern_img");
				Pattern p = new Pattern(pattern_cd, pattern_nm, pattern_detail, pattern_img);
				pattern_imgList.add(p);
			}

		} catch (Exception e) {
			e.getStackTrace();
			return null;
		}
		return pattern_imgList;
	}

	public Pattern findPettern_Bycd(int pattern_cd) {

		Pattern p = new Pattern();
		//　データベースへ接続
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}

		try (Connection conn = DriverManager.getConnection(
				JDBC_URL, DB_USER, DB_PASS)) {

			//SELECT文の準備
			String sql = "select * from pattern where pattern_cd = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setInt(1, pattern_cd);

			//SELECTを実行
			ResultSet rs = pStmt.executeQuery();

			//　とってきたデータをArraylistに入れる
			if (rs.next()) {
				int cd = rs.getInt("pattern_cd");
				String pattern_nm = rs.getString("pattern_nm");
				String pattern_detail = rs.getString("pattern_detail");
				String pattern_img = rs.getString("pattern_img");
				p = new Pattern(cd, pattern_nm, pattern_detail, pattern_img);
			}

		} catch (Exception e) {
			e.getStackTrace();
			return null;
		}
		return p;
	}
}
