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
 * Created by FALOOK on 1/31/2015.
 */
public class Unit {
    private int id;
    private String name;

    private static final String TABLE_NAME = "units";
    private static final String COLUMN_ID = "unit_id";
    private static final String COLUMN_NAME = "unit_name";

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

    private static void orm(ResultSet rs,Unit o) throws SQLException {
        o.setId(rs.getInt(COLUMN_ID));
        o.setName(rs.getString(COLUMN_NAME));
    }

    public static List<Unit> getUnitList() throws SQLException, NamingException {
        List<Unit> units = new ArrayList<Unit>();
        String sql = "SELECT * FROM "+TABLE_NAME;
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Unit unit = new Unit();
            orm(rs, unit);
            units.add(unit);
        }
        conn.close();
        return units;
    }

    public static Unit findById(int id) throws SQLException, NamingException {
        Unit unit = null;
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_ID+"=?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1,id);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            unit = new Unit();
            orm(rs, unit);
        }
        conn.close();
        return unit;
    }
}
