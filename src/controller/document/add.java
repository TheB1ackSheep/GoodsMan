package controller.document;

import model.Document;
import model.DocumentType;
import model.ResponseMessage;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Created by FALOOK on 12/23/2014.
 */
@WebServlet(name = "controller-doc-add",urlPatterns = "/document/add")
public class add extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        ResponseMessage rs = new ResponseMessage();

        String docName = request.getParameter("name");
        String docDetail = request.getParameter("detail");
        String docPath = request.getParameter("path");
        String DTID = request.getParameter("type_id");

        if(docName == null)
        {
            rs.setResult(ResponseMessage.MessageType.INVALID);
            rs.setMsg("กรุณากรอกชื่อไฟล์");
        }else if(docDetail == null){
            rs.setResult(ResponseMessage.MessageType.INVALID);
            rs.setMsg("กรุณากรอกรายละเอียดของไฟล์");
        }else if(docPath == null){
            rs.setResult(ResponseMessage.MessageType.INVALID);
            rs.setMsg("กรุณากรอกพาธของไฟล์");
        }else if(DTID == null){
            rs.setResult(ResponseMessage.MessageType.INVALID);
            rs.setMsg("กรุณาระบุชนิดของไฟล์");
        }else{
            try {
                DocumentType dt = DocumentType.findById(Integer.parseInt(DTID));
                if(dt != null){
                    Document doc = new Document();
                    doc.setName(docName);
                    doc.setDetail(docDetail);
                    doc.setPath(docPath);
                    doc.setType(dt);
                    doc = Document.addDocument(doc);
                    rs.setResult(ResponseMessage.MessageType.SUCCESS);
                    rs.setMsg(doc);
                }else{
                    rs.setResult(ResponseMessage.MessageType.INVALID);
                    rs.setMsg("ชนิดของไฟล์ไม่ถูกต้อง");
                }
            } catch (SQLException e) {
                rs.setResult(ResponseMessage.MessageType.ERROR);
                rs.setMsg(e.getMessage());
            } catch (NamingException e) {
                rs.setResult(ResponseMessage.MessageType.ERROR);
                rs.setMsg(e.getMessage());
            }

        }

        out.print(rs);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
