package controller.unit;

import model.Category;
import model.ResponseMessage;
import model.Unit;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by FALOOK on 1/31/2015.
 */
@WebServlet(name = "controller-unit-list",urlPatterns = "/unit/list")
public class list extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        ResponseMessage rs = new ResponseMessage();
        PrintWriter out = response.getWriter();

        try {
            if (request.getParameter("id") != null) {
                Unit unit = Unit.findById(Integer.parseInt(request.getParameter("id")));
                rs.setMsg(unit);
            }else{
                List<Unit> units = Unit.getUnitList();
                rs.setMsg(units);
            }
            rs.setResult(ResponseMessage.MessageType.SUCCESS);
        } catch (SQLException e) {
            rs.setResult(ResponseMessage.MessageType.ERROR);
            rs.setMsg(e.getMessage());
        } catch (NamingException e) {
            rs.setResult(ResponseMessage.MessageType.ERROR);
            rs.setMsg(e.getMessage());
        }

        out.print(rs.toJSON());
    }
}
