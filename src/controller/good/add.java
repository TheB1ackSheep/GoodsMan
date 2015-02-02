package controller.good;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

/**
 * Created by FALOOK on 2/1/2015.
 */
@WebServlet(name = "controller-good-add",urlPatterns = "/goods/add")
public class add extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*cat: "1"
        detail: "คอมำิวเตอร์ราคาถูก ๆ"
        doc: Array[3]0: "60"1: "59"2: "58"length: 3
        exp_date: "14/02/2015"
        exp_warn_date: "06/02/2015"
        gpsc_code: "01013728000000"
        gpsc_type: "on"
        name: "คอมพิวเตอร์"
        owner: "1"
        place: "2"
        price: "3200"
        quantity: "1"
        recv_medthod: "20"
        rev_date: "14/02/2015"
        sub_cat: "35"
        unit: "52"*/
        String catId = request.getParameter("cat");
        String remark = request.getParameter("detail");
        String[] docsId = request.getParameterValues("doc");
        String endDate = request.getParameter("exp_date");
        String expireWarnDate = request.getParameter("exp_warn_date");
        String gpscCode = request.getParameter("gpsc_code");
        String gpscType = request.getParameter("gpsc_type");
        String name = request.getParameter("name");
        String ownerId = request.getParameter("owner");
        String placeOd = request.getParameter("place");
        String price = request.getParameter("price");
        String qty = request.getParameter("quantity");
        String recvMethodId = request.getParameter("recv_method");
        String recvDate = request.getParameter("recv_date");
        String subCatId = request.getParameter("sub_cat");
        String unitId = request.getParameter("unit");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
