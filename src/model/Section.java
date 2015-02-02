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
public class Section {
    private int id;
    private String name;

    private static final String TABLE_NAME = "sections";
    private static final String COLUMN_ID = "sec_id";
    private static final String COLUMN_NAME = "sec_name";

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

    private static void orm(ResultSet rs, Section rm) throws SQLException {
        rm.setId(rs.getInt(COLUMN_ID));
        rm.setName(rs.getString(COLUMN_NAME));
    }

    public static Section findById(int id) throws SQLException, NamingException {
        Section sec = null;
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_ID+" = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1, id);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            sec = new Section();
            orm(rs,sec);
        }
        conn.close();
        return sec;
    }

    public static List<Section> getSectionList() throws SQLException, NamingException {
        List<Section> secs = new ArrayList<Section>();
        String sql = "SELECT * FROM "+TABLE_NAME;
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Section sec = new Section();
            orm(rs, sec);
            secs.add(sec);
        }
        conn.close();
        return secs;
    }
}
