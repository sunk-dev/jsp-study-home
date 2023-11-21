package controller;

import action.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request,response);

    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String path=null;
        Action action=null;


        request.setCharacterEncoding("utf-8");
        String requestURI=request.getRequestURI();

        String contextPath=request.getContextPath();
        int lastIndexOf=requestURI.lastIndexOf("/");
        String command=requestURI.substring(lastIndexOf);

        String DEFAULT_PATH=requestURI.substring(0,lastIndexOf);

        System.out.println("requestURI = " + requestURI);
        System.out.println("contextPath = " + contextPath);
        System.out.println("command = " + command);

        if(command.equals("/boardWriteForm.bo")){
            path=DEFAULT_PATH+"/board/qna_board_write.jsp";

        }

        else if(command.equals("/boardWritePro.bo")){
            action=new BoardWriteProAction();

            try {
                action.execute(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }


        }
        System.out.println("path = " + path);
        response.sendRedirect(path);

    }
}
