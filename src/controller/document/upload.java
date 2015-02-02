package controller.document;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import model.DocumentUpload;
import model.ResponseMessage;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;

/**
 * Created by FALOOK on 12/21/2014.
 */
@WebServlet(name = "controller-doc-upload",urlPatterns = "/document/upload")
public class upload extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        ResponseMessage rs = new ResponseMessage();

        ServletContext context = request.getServletContext();
        String filePath = context.getInitParameter("file-upload");
        //String tmpPath = context.getInitParameter"file-upload-tmp");//process only if its multipart content
        List<DocumentUpload> docs = new ArrayList<DocumentUpload>();

        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for(FileItem item : multiparts){
                    String name = new File(item.getName()).getName();
                    File f = new File(filePath + name);
                    DocumentUpload d = new DocumentUpload();
                    d.setName(name);
                    d.setPath("docs/"+name);
                    d.setId(System.currentTimeMillis());
                    if(name.lastIndexOf(".")>0)
                        d.setType(name.substring(name.lastIndexOf(".")+1));
                    if(!f.exists() && !item.isFormField()){
                        item.write( new File(filePath + name));
                        d.setResult(ResponseMessage.MessageType.SUCCESS);
                    }else{
                        d.setResult(ResponseMessage.MessageType.FAILED);
                        d.setMsg("ไฟล์นี้มีอยู่ในระบบแล้ว กรุณาเลือกจากคลังเอกสาร");
                    }
                    docs.add(d);
                }

                rs.setResult(ResponseMessage.MessageType.SUCCESS);
                rs.setMsg(docs);
            } catch (Exception ex) {
                rs.setResult(ResponseMessage.MessageType.ERROR);
                rs.setMsg(ex.getMessage());
            }

        }else{
            rs.setResult(ResponseMessage.MessageType.ERROR);
            rs.setMsg("Sorry this Servlet only handles file upload request");
        }

        out.print(rs);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
