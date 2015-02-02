package controller.gpsc;

import model.GPSC;
import model.ReceiveMethod;
import model.ResponseMessage;

import javax.management.monitor.GaugeMonitor;
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
 * Created by FALOOK on 1/26/2015.
 */
@WebServlet(name = "controller-gpsc-search",urlPatterns = "/gpsc/search")
public class search extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        ResponseMessage rs = new ResponseMessage();
        PrintWriter out = response.getWriter();

        String q = request.getParameter("q");

        try {
            if(q != null){
                List<GPSC> gs = null;
                if(q.matches("[0-9]+")){
                    gs = GPSC.getByCode(q);
                }else{
                    gs = GPSC.getByName(q);
                }
                rs.setMsg(gs);
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
