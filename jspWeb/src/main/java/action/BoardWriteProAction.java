
package action;


import action.Action;
import beans.Board;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import db.BoardDAO;
import static db.JdbcUtil.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;

public class BoardWriteProAction implements Action {



    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String realfolder="";
        String saveFolder="/boardUpload";
        ServletContext context= request.getServletContext();
        realfolder=context.getRealPath(saveFolder);
//        realfolder;

        int fileSize=1024*1024*10;

        MultipartRequest multipartRequest;
        multipartRequest = new MultipartRequest(request, realfolder, fileSize, new DefaultFileRenamePolicy());
        //
//        MultipartRequest multipartRequest=new MultipartRequest(request,realfolder,fileSize,new DefaultFileRenamePolicy());

        Board bdBeans=new Board();
        bdBeans.setBoard_name(multipartRequest.getParameter("BOARD_NAME"));
        bdBeans.setBoard_pass(multipartRequest.getParameter("BOARD_PASS"));
        bdBeans.setBoard_subject(multipartRequest.getParameter("BOARD_SUBJECT"));
        bdBeans.setBoard_content(multipartRequest.getParameter("BOARD_CONTENT"));
        bdBeans.setBoard_file(multipartRequest.getOriginalFileName((String) multipartRequest.getFileNames().nextElement()));

        boolean isWriteSuccess=false;
        Connection con = getConnection();
        BoardDAO dao=BoardDAO.getInstance();
        int re=dao.insertArticle(bdBeans,con);

        if(re!=1) {
            rollback(con);
            response.setContentType("text/hteml;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("<script>");
            out.print("alert('등록실패')");
            out.print("history.back()");
            out.print("</script>");

        }else{

            commit(con);
            close(con);

            response.sendRedirect("index.jsp");


        }




    }
}
