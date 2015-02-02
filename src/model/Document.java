package model;

import helper.database.DBConnection;

import javax.naming.NamingException;
import javax.print.Doc;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by FALOOK on 12/21/2014.
 */
public class Document {
    private int id;
    private String name;
    private String path;
    private String detail;
    private DocumentType type;

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

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public DocumentType getType() {
        return type;
    }

    public void setType(DocumentType type) {
        this.type = type;
    }

    private static void orm(ResultSet rs,Document doc) throws SQLException, NamingException {
        doc.setId(rs.getInt("docID"));
        doc.setDetail(rs.getString("docDetail"));
        doc.setName(rs.getString("docName"));
        doc.setPath(rs.getString("docPath"));
        doc.setType(DocumentType.findById(rs.getInt("DTID")));
    }

    public static Document findById(int id) throws SQLException, NamingException {
        Document doc = null;
        String sql = "SELECT * FROM documents WHERE docID = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1,id);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            doc = new Document();
            orm(rs,doc);
        }
        conn.close();
        return doc;
    }

    public static List<Document> getDocuments() throws SQLException, NamingException {
        List<Document> docs = new ArrayList<Document>();
        String sql = "SELECT * FROM documents ORDER BY docID DESC";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Document doc = new Document();
            orm(rs,doc);
            docs.add(doc);
        }
        conn.close();
        return docs;
    }

    public static Document addDocument(Document doc) throws SQLException, NamingException {
        String sql = "INSERT INTO documents (docName,docDetail,docPath,DTID) VALUES(?,?,?,?)";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1,doc.name);
        prep.setString(2,doc.detail);
        prep.setString(3,doc.path);
        prep.setInt(4,doc.type.getDTID());
        prep.executeUpdate();
        sql = "SELECT LAST_INSERT_ID() \"id\"";
        prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        if(rs.next())
            doc.setId(rs.getInt("id"));
        else {
            conn.close();
            return null;
        }
        conn.close();
        return doc;
    }
}
