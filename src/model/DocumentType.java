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
 * Created by FALOOK on 12/21/2014.
 */
public class DocumentType {
    private int id;
    private String name;

    public int getDTID() {
        return id;
    }

    public void setDTID(int DTID) {
        this.id = DTID;
    }

    public String getDTName() {
        return name;
    }

    public void setDTName(String DTName) {
        this.name = DTName;
    }

    private static void orm(ResultSet rs,DocumentType dt) throws SQLException {
        dt.setDTID(rs.getInt("DTID"));
        dt.setDTName(rs.getString("DTName"));
    }

    public static DocumentType findById(int id) throws SQLException, NamingException {
        DocumentType dt = null;
        String sql = "SELECT * FROM document_types WHERE DTID = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1,id);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            dt = new DocumentType();
            orm(rs, dt);
        }
        conn.close();
        return dt;
    }

    public static List<DocumentType> getDocumentTypes() throws SQLException, NamingException {
        List<DocumentType> dts = new ArrayList<DocumentType>();
        String sql = "SELECT * FROM document_types";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            DocumentType dt = new DocumentType();
            orm(rs,dt);
            dts.add(dt);
        }
        return dts;
    }
}
