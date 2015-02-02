package model;

import helper.database.DBConnection;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by FALOOK on 12/27/2014.
 */
public class ReceiveMethod {
    private int id;
    private String name;

    private static final String TABLE_NAME = "receive_methods";
    private static final String COLUMN_ID = "recv_id" ;
    private static final String COLUMN_NAME = "recv_name" ;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private static void orm(ResultSet rs, ReceiveMethod rm) throws SQLException {
        rm.setId(rs.getInt(COLUMN_ID));
        rm.setName(rs.getString(COLUMN_NAME));
    }

    public static ReceiveMethod findById(int id) throws SQLException, NamingException {
        ReceiveMethod rm = null;
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_ID+" = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1, id);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            rm = new ReceiveMethod();
            orm(rs,rm);
        }
        conn.close();
        return rm;
    }

    public static List<ReceiveMethod> getReceiveMethodList() throws SQLException, NamingException {
        List<ReceiveMethod> rms = new ArrayList<ReceiveMethod>();
        String sql = "SELECT * FROM "+TABLE_NAME;
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            ReceiveMethod rm = new ReceiveMethod();
            orm(rs, rm);
            rms.add(rm);
        }
        conn.close();
        return rms;
    }
}
