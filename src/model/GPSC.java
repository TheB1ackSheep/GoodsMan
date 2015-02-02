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
 * Created by FALOOK on 1/26/2015.
 */
public class GPSC {

    private UNSPSC unspsc;
    private String code;
    private String name;
    private String keyword;
    private Unit unit;
    private Category category;

    private static final String TABLE_NAME = "gpsc_code";
    private static final String COLUMN_GPSC_CODE = "gpsc_code";
    private static final String COLUMN_GPSC_NAME = "gpsc_name_th";
    private static final String COLUMN_GPSC_KEYWORD = "gpsc_keyword";
    private static final String COLUMN_GPSC_UNIT = "unit_id";
    private static final String COLUMN_GPSC_CATEGORY = "cat_id";

    public UNSPSC getUnspsc() {
        return unspsc;
    }

    public void setUnspsc(UNSPSC unspsc) {
        this.unspsc = unspsc;
    }

    public String getGpscCode() {
        return code;
    }

    public void setGpscCode(String gpscCode) {
        this.code = gpscCode;
    }

    public String getGpscName() {
        return name;
    }

    public void setGpscName(String gpscName) {
        this.name = gpscName;
    }

    public String getGpscKeyword() {
        return keyword;
    }

    public void setGpscKeyword(String gpscKeyword) {
        this.keyword = gpscKeyword;
    }

    public Unit getUnit() {
        return unit;
    }

    public void setUnit(Unit unit) {
        this.unit = unit;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    private static void orm(ResultSet rs, GPSC o) throws SQLException, NamingException {
        o.setGpscCode(rs.getString(COLUMN_GPSC_CODE));
        o.setGpscKeyword(rs.getString(COLUMN_GPSC_KEYWORD));
        o.setGpscName(rs.getString(COLUMN_GPSC_NAME));
        o.setUnit(Unit.findById(rs.getInt(COLUMN_GPSC_UNIT)));
        o.setCategory(Category.findById(rs.getInt(COLUMN_GPSC_CATEGORY)));
        o.setUnspsc(UNSPSC.getById(rs.getString("seg_id"), rs.getString("fam_id"), rs.getString("class_id"), rs.getString("comm_id")));
    }

    public static GPSC findById(String code) throws SQLException, NamingException {
        GPSC gpsc = null;
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_GPSC_CODE+" = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1, code);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            gpsc = new GPSC();
            orm(rs, gpsc);
        }
        conn.close();
        return gpsc;
    }


    public static List<GPSC> getByName(String keyword) throws SQLException, NamingException {
        List<GPSC> gpscs = new ArrayList<GPSC>();
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_GPSC_NAME+" LIKE ? OR "+COLUMN_GPSC_KEYWORD+" LIKE ?  LIMIT 10";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1, "%"+keyword+"%");
        prep.setString(2, "%"+keyword+"%");
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            GPSC g = new GPSC();
            orm(rs,g);
            gpscs.add(g);
        }
        conn.close();
        return gpscs;
    }

    public static List<GPSC> getByCode(String code) throws SQLException, NamingException {
        List<GPSC> gpscs = new ArrayList<GPSC>();
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_GPSC_CODE+" LIKE ? LIMIT 10";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1, "%"+code+"%");
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            GPSC g = new GPSC();
            orm(rs,g);
            gpscs.add(g);
        }
        conn.close();
        return gpscs;
    }
}
