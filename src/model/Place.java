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
 * Created by FALOOK on 2/1/2015.
 */
public class Place {

    private int id;
    private String name;

    private static final String TABLE_NAME = "good_places";
    private static final String COLUMN_ID = "place_id";
    private static final String COLUMN_NAME = "place_name";

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

    private static void orm (ResultSet rs, Place o) throws SQLException {
        o.setId(rs.getInt(COLUMN_ID));
        o.setName(rs.getString(COLUMN_NAME));
    }

    public static Place findById(int id) throws SQLException, NamingException {
        Place place = null;
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_ID+" =?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1,id);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            place = new Place();
            orm(rs,place);
        }
        conn.close();
        return place;
    }

    public static List<Place> getPlaceList() throws SQLException, NamingException {
        List<Place> places = new ArrayList<Place>();
        String sql = "SELECT * FROM "+TABLE_NAME;
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Place place = new Place();
            orm(rs,place);
            places.add(place);
        }
        conn.close();
        return places;
    }

}
