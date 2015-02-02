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
public class Person {
    private int id;
    private String title;
    private String firstName;
    private String lastName;
    private String phone;
    private Section section;

    private static final String TABLE_NAME = "persons";
    private static final String COLUMN_ID = "pers_id";
    private static final String COLUMN_TITLE = "pers_title";
    private static final String COLUMN_FIRSTNAME = "pers_fname";
    private static final String COLUMN_LASTNAME = "pers_lastname";
    private static final String COLUMN_PHONE = "pers_ext";
    private static final String COLUMN_SECTION = "sec_id";

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFistName() {
        return firstName;
    }

    public void setFistName(String fistName) {
        this.firstName = fistName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    private static void orm(ResultSet rs, Person pers) throws SQLException, NamingException {
        pers.setId(rs.getInt(COLUMN_ID));
        pers.setTitle(rs.getString(COLUMN_TITLE));
        pers.setFistName(rs.getString(COLUMN_FIRSTNAME));
        pers.setLastName(rs.getString(COLUMN_LASTNAME));
        pers.setPhone(rs.getString(COLUMN_PHONE));
        pers.setSection(Section.findById(rs.getInt(COLUMN_SECTION)));
    }

    public static Person findById(int id) throws SQLException, NamingException {
        Person pers = null;
        String sql = "SELECT * FROM "+TABLE_NAME+" WHERE "+COLUMN_ID+" = ?";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setInt(1, id);
        ResultSet rs = prep.executeQuery();
        if(rs.next()){
            pers = new Person();
            orm(rs,pers);
        }
        conn.close();
        return pers;
    }

    public static List<Person> getPersonList() throws SQLException, NamingException {
        List<Person> persons = new ArrayList<Person>();
        String sql = "SELECT * FROM "+TABLE_NAME;
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Person pers = new Person();
            orm(rs, pers);
            persons.add(pers);
        }
        conn.close();
        return persons;
    }

}
