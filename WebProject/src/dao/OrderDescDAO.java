package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.OrderDesc;

public class OrderDescDAO implements DBConfig{

//	public static void main(String[] args) {
//		OrderDescDAO dao = new OrderDescDAO();
//		dao.create(new OrderDesc(
//        		1,
//        		1,
//                1,
//                1,
//                1,
//                1,
//                true,
//                true
//                ));
//	}

	public OrderDesc create(OrderDesc orderDesc) {
        Connection conn = null;

        try {
            conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS);

            String sql = "INSERT INTO order_desc (order_id,quantity,pattern_cd,size_price_cd,price,liner_flg,hook_flg) VALUES (?,?,?,?,?,?,?);";


            PreparedStatement pStmt=conn.prepareStatement(sql);


            pStmt.setInt(1,orderDesc.getOrder_id());
            pStmt.setInt(2,orderDesc.getQuantity());
            pStmt.setInt(3,orderDesc.getPattern_cd());
            pStmt.setInt(4,orderDesc.getSize_price_cd());
            pStmt.setInt(5,orderDesc.getPrice());
            pStmt.setBoolean(6,orderDesc.isLiner_flg());
            pStmt.setBoolean(7,orderDesc.isHook_flg());

//            実行
            System.out.println(pStmt.executeUpdate());
            pStmt.close();                         // Close Statement
            return orderDesc;

        }catch(SQLException e){
            e.printStackTrace();
                    return orderDesc;
        }finally {
            if(conn !=null) {
                try {
                    conn.close();

                }catch(SQLException e) {
                    e.printStackTrace();
                    return orderDesc;
                }
            }


        }

      }



    public List<OrderDesc> findByOrder_id(int id ) {
        Connection conn = null;
        List<OrderDesc> orderDescList= new ArrayList<OrderDesc>();

        try {
            conn = DriverManager.getConnection(JDBC_URL,DB_USER,DB_PASS);

            String sql = "SELECT * FROM order_desc WHERE order_id=?";


            PreparedStatement pStmt=conn.prepareStatement(sql);

			pStmt.setInt(1, id);

            //実行
            ResultSet rs=pStmt.executeQuery();

            System.out.println(rs);

                while(rs.next()) {


                	Integer order_desc_id = rs.getInt("order_desc_id");
                    Integer order_id = rs.getInt("order_id");
                    Integer quantity = rs.getInt("quantity");
                    Integer pattern_cd = rs.getInt("pattern_cd");
                    Integer size_price_cd = rs.getInt("size_price_cd");
                    Integer price = rs.getInt("price");
                    Boolean liner_flg = rs.getBoolean("liner_flg");
                    Boolean hook_flg = rs.getBoolean("hook_flg");

                    //System.out.println(p_id+";"+p_name+";"+price+";");

                    OrderDesc orderDescResult = new OrderDesc(
                    		order_desc_id,
                    		order_id,
                            quantity,
                            pattern_cd,
                            size_price_cd,
                            price,
                            liner_flg,
                            hook_flg
                            );

                    orderDescList.add(orderDescResult);

                }
            }catch(SQLException e){
                e.printStackTrace();
                return null;
            }finally {
                if(conn !=null) {
                    try {
                        conn.close();

                    }catch(SQLException e) {
                        e.printStackTrace();
                        return null;
                    }
                }


            }

                return orderDescList;

            }





}


