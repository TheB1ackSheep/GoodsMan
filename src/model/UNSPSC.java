package model;

import helper.database.DBConnection;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by FALOOK on 1/26/2015.
 */
public class UNSPSC {

    private String SegmentId;
    private String SegmentName;
    private String FamilyId;
    private String FamilyName;
    private String ClassId;
    private String ClassName;
    private String CommodityId;
    private String CommodityName;


    private static final String COLUMN_SEG_ID = "seg_id";
    private static final String COLUMN_SEG_NAME = "seg_name_th";
    private static final String COLUMN_FAM_ID = "fam_id";
    private static final String COLUMN_FAM_NAME = "fam_name_th";
    private static final String COLUMN_CLASS_ID = "class_id";
    private static final String COLUMN_CLASS_NAME = "class_name_th";
    private static final String COLUMN_COMM_ID = "comm_id";
    private static final String COLUMN_COMM_NAME = "comm_name_th";

    public String getSegmentId() {
        return SegmentId;
    }

    public void setSegmentId(String segmentId) {
        SegmentId = segmentId;
    }

    public String getSegmentName() {
        return SegmentName;
    }

    public void setSegmentName(String segmentName) {
        SegmentName = segmentName;
    }

    public String getFamilyId() {
        return FamilyId;
    }

    public void setFamilyId(String familyId) {
        FamilyId = familyId;
    }

    public String getFamilyName() {
        return FamilyName;
    }

    public void setFamilyName(String familyName) {
        FamilyName = familyName;
    }

    public String getClassId() {
        return ClassId;
    }

    public void setClassId(String classId) {
        ClassId = classId;
    }

    public String getClassName() {
        return ClassName;
    }

    public void setClassName(String className) {
        ClassName = className;
    }

    public String getCommodityId() {
        return CommodityId;
    }

    public void setCommodityId(String commodityId) {
        CommodityId = commodityId;
    }

    public String getCommodityName() {
        return CommodityName;
    }

    public void setCommodityName(String commodityName) {
        CommodityName = commodityName;
    }

    private static void orm(ResultSet rs,UNSPSC o) throws SQLException {
        o.setClassId(rs.getString(COLUMN_CLASS_ID));
        o.setClassName(rs.getString(COLUMN_CLASS_NAME));
        o.setCommodityId(rs.getString(COLUMN_COMM_ID));
        o.setCommodityName(rs.getString(COLUMN_COMM_NAME));
        o.setFamilyId(rs.getString(COLUMN_FAM_ID));
        o.setFamilyName(rs.getString(COLUMN_FAM_NAME));
        o.setSegmentId(rs.getString(COLUMN_SEG_ID));
        o.setSegmentName(rs.getString(COLUMN_SEG_NAME));
    }

    public static UNSPSC getById(String segmentId,String familyId,String classId, String commodityId) throws SQLException, NamingException {
        UNSPSC u = null;
        String sql = "SELECT * FROM unspsc_segments WHERE "+COLUMN_SEG_ID+" = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1, segmentId);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            u = new UNSPSC();
            u.setSegmentId(rs.getString("seg_id"));
            u.setSegmentName(rs.getString("seg_name_th"));
        }

        sql = "SELECT * FROM unspsc_family WHERE "+COLUMN_FAM_ID+" = ?";
        prep = conn.prepareStatement(sql);
        prep.setString(1, familyId);
        rs = prep.executeQuery();
        if(rs.next()){
            u.setFamilyId(rs.getString("fam_id"));
            u.setFamilyName(rs.getString("fam_name_th"));
        }

        sql = "SELECT * FROM unspsc_classes WHERE "+COLUMN_CLASS_ID+" = ?";
        prep = conn.prepareStatement(sql);
        prep.setString(1, classId);
        rs = prep.executeQuery();
        if(rs.next()){
            u.setFamilyId(rs.getString("class_id"));
            u.setFamilyName(rs.getString("class_name_th"));
        }

        sql = "SELECT * FROM unspsc_commodities WHERE "+COLUMN_COMM_ID+" = ?";
        prep = conn.prepareStatement(sql);
        prep.setString(1, commodityId);
        rs = prep.executeQuery();
        if(rs.next()){
            u.setCommodityId(rs.getString("comm_id"));
            u.setCommodityName(rs.getString("comm_name_th"));
        }

        conn.close();
        return u;
    }
}
