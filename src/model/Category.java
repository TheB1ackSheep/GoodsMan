package model;

import helper.database.DBConnection;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Category {
    private int id;
    private String name;
    private Category parent;

    private static final String TABLE_NAME = "categories";
    private static final String COLUMN_ID = "cat_id";
    private static final String COLUMN_NAME = "cat_name";
    private static final String COLUMN_PARENT_ID = "cat_parent_id";

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

    public Category getParent() {
        return parent;
    }

    public void setParent(Category parent) {
        this.parent = parent;
    }

    public static void orm(ResultSet rs,Category c) throws SQLException, NamingException {
        c.setId(rs.getInt(COLUMN_ID));
        c.setName(rs.getString(COLUMN_NAME));
        c.setParent(Category.findById(rs.getInt(COLUMN_PARENT_ID)));
    }

    public static Category findById(int id) throws SQLException, NamingException {
        Category c = null;
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_ID+" = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1, id);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            c = new Category();
            orm(rs,c);
        }
        conn.close();
        return c;
    }

    public static List<Category> getCategoryList() throws SQLException, NamingException {
        List<Category> categories = new ArrayList<Category>();
        String sql = "SELECT * FROM "+TABLE_NAME;
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Category c = new Category();
            orm(rs, c);
            categories.add(c);
        }
        conn.close();
        return categories;
    }

    public static List<Category> getParentCategoryList() throws SQLException, NamingException {
        List<Category> categories = new ArrayList<Category>();
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_PARENT_ID+" IS NULL";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Category c = new Category();
            orm(rs, c);
            categories.add(c);
        }
        conn.close();
        return categories;
    }

    public static List<Category> getSubCategoryList() throws SQLException, NamingException {
        List<Category> categories = new ArrayList<Category>();
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_PARENT_ID+" IS NOT NULL";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Category c = new Category();
            orm(rs, c);
            categories.add(c);
        }
        conn.close();
        return categories;
    }

    public static List<Category> getSubCategoryList(int parentId) throws SQLException, NamingException {
        List<Category> categories = new ArrayList<Category>();
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_PARENT_ID+" = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1,parentId);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Category c = new Category();
            orm(rs, c);
            categories.add(c);
        }
        conn.close();
        return categories;
    }
}
