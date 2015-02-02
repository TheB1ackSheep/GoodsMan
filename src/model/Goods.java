package model;

import helper.database.DBConnection;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by FALOOK on 2/1/2015.
 */
public class Goods {

    private int id;
    private String name;
    private int price;
    private Unit unit;
    private ReceiveMethod receiveMethod;
    private Date receiveDate;
    private Person owner;
    private Date goodEndDate;
    private Date goodWarantyExpireDate;
    private Place place;
    private GPSC gpsc;
    private int no;
    private String remark;
    private Person submitPerson;
    private Date submitDate;
    private transient char isDelete;

    private static final String TABLE_NAME = "goods";
    private static final String COLUMN_ID = "good_id";
    private static final String COLUMN_NAME = "good_name";
    private static final String COLUMN_PRICE = "good_price";
    private static final String COLUMN_UNIT = "unit_id";
    private static final String COLUMN_RECEIVEMETHOD = "recv_id";
    private static final String COLUMN_RECEIVEDATE = "good_recv_date";
    private static final String COLUMN_OWNER = "person_id";
    private static final String COLUMN_GOODENDDATE = "good_end_date";
    private static final String COLUMN_GOODWARRANTYEXPIREDATE = "good_warranty_expire_date";
    private static final String COLUMN_PLACE = "place_id";
    private static final String COLUMN_GPSC = "gpsc_code";
    private static final String COLUMN_NO = "good_no";
    private static final String COLUMN_REMARK = "good_remark";
    private static final String COLUMN_SUBMITPERSON = "submit_person_id";
    private static final String COLUMN_SUBMITDATE = "submit_date";
    private static final String COLUMN_ISDELETE = "is_delete";

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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Unit getUnit() {
        return unit;
    }

    public void setUnit(Unit unit) {
        this.unit = unit;
    }

    public ReceiveMethod getReceiveMethod() {
        return receiveMethod;
    }

    public void setReceiveMethod(ReceiveMethod receiveMethod) {
        this.receiveMethod = receiveMethod;
    }

    public Date getReceiveDate() {
        return receiveDate;
    }

    public void setReceiveDate(Date receiveDate) {
        this.receiveDate = receiveDate;
    }

    public Person getOwner() {
        return owner;
    }

    public void setOwner(Person owner) {
        this.owner = owner;
    }

    public Date getGoodEndDate() {
        return goodEndDate;
    }

    public void setGoodEndDate(Date goodEndDate) {
        this.goodEndDate = goodEndDate;
    }

    public Date getGoodWarantyExpireDate() {
        return goodWarantyExpireDate;
    }

    public void setGoodWarantyExpireDate(Date goodWarantyExpireDate) {
        this.goodWarantyExpireDate = goodWarantyExpireDate;
    }

    public Place getPlace() {
        return place;
    }

    public void setPlace(Place place) {
        this.place = place;
    }

    public GPSC getGpsc() {
        return gpsc;
    }

    public void setGpsc(GPSC gpsc) {
        this.gpsc = gpsc;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getRematk() {
        return remark;
    }

    public void setRematk(String remark) {
        this.remark = remark;
    }

    public Person getSubmitPerson() {
        return submitPerson;
    }

    public void setSubmitPerson(Person submitPerson) {
        this.submitPerson = submitPerson;
    }

    public Date getSubmitDate() {
        return submitDate;
    }

    public void setSubmitDate(Date submitDate) {
        this.submitDate = submitDate;
    }

    public char getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(char isDelete) {
        this.isDelete = isDelete;
    }

    private static void orm (ResultSet rs,Goods o) throws SQLException, NamingException {
        o.setId(rs.getInt(COLUMN_ID));
        o.setName(rs.getString(COLUMN_NAME));
        o.setUnit(Unit.findById(Integer.parseInt(COLUMN_UNIT)));
        o.setGoodEndDate(rs.getDate(COLUMN_GOODENDDATE));
        o.setGoodWarantyExpireDate(rs.getDate(COLUMN_GOODWARRANTYEXPIREDATE));
        o.setGpsc(GPSC.findById(COLUMN_GPSC));
        o.setIsDelete(rs.getString(COLUMN_ISDELETE).charAt(0));
        o.setNo(rs.getInt(COLUMN_NO));
        o.setOwner(Person.findById(Integer.parseInt(COLUMN_OWNER)));
        o.setPlace(Place.findById(Integer.parseInt(COLUMN_PLACE)));
        o.setReceiveDate(rs.getDate(COLUMN_RECEIVEDATE));
        o.setReceiveMethod(ReceiveMethod.findById(Integer.parseInt(COLUMN_RECEIVEMETHOD)));
        o.setPrice(rs.getInt(COLUMN_PRICE));
        o.setRematk(rs.getString(COLUMN_REMARK));
        o.setSubmitDate(rs.getDate(COLUMN_SUBMITDATE));
        o.setSubmitPerson(Person.findById(Integer.parseInt(COLUMN_SUBMITPERSON)));
    }

    public static List<Goods> getGoodsList() throws SQLException, NamingException {
        List<Goods> goods = new ArrayList<Goods>();
        String sql = "SELECT * FROM "+TABLE_NAME;
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        ResultSet rs = prep.executeQuery();
        while(rs.next()){
            Goods g = new Goods();
            orm(rs,g);
            goods.add(g);
        }
        conn.close();
        return goods;
    }

    public static boolean save(Goods o) throws SQLException, NamingException {
        String sql = "INSERT INTO "+TABLE_NAME+" ("+COLUMN_NAME+", "+COLUMN_PRICE+", "+COLUMN_UNIT+", "+COLUMN_RECEIVEMETHOD+"," +
                ""+COLUMN_RECEIVEDATE+", "+COLUMN_OWNER+", "+COLUMN_GOODENDDATE+", "+COLUMN_GOODWARRANTYEXPIREDATE+", "+COLUMN_PLACE+"," +
                ""+COLUMN_GPSC+", "+COLUMN_NO+", "+COLUMN_REMARK+", "+COLUMN_SUBMITPERSON+", "+COLUMN_SUBMITDATE+", "+COLUMN_ISDELETE+") " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        Connection conn = DBConnection.getConnection();
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1,o.getName());
        prep.setInt(2, o.price);
        prep.setInt(3,o.getUnit().getId());
        prep.setInt(4,o.getReceiveMethod().getId());
        prep.setDate(5,new java.sql.Date(o.getReceiveDate().getTime()));
        prep.setInt(6,o.getOwner().getId());
        prep.setDate(7,new java.sql.Date(o.getGoodEndDate().getTime()));
        prep.setDate(8,new java.sql.Date(o.getGoodWarantyExpireDate().getTime()));
        prep.setInt(9,o.getPlace().getId());
        prep.setString(10,o.getGpsc().getGpscCode());
        prep.setInt(11,o.getNo());
        prep.setString(12,o.getRematk());
        prep.setInt(13,o.getSubmitPerson().getId());
        prep.setDate(14,new java.sql.Date(System.currentTimeMillis()));
        prep.setString(15,"N");
        int c = prep.executeUpdate();
        conn.close();
        return c>0;
    }
}
