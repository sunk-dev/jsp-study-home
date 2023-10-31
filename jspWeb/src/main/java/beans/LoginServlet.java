package beans;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginPro")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
				
		response.setContentType("text/html; charset=utf-8"); // request 데이터 받아와 response 데이터 보내
		
		PrintWriter out = response.getWriter(); //객체생성
		
		//데이터 받아오라고 요청하기
		String id=request.getParameter("id");
		String pass=request.getParameter("passwd");
		String name=request.getParameter("name");
		
		//이런 형식으로 데이터를 보내기
		out.print("이름은 " + name + "<br>");
		out.print("아이디는 " + id + "<br>");
		out.print("비밀번호는 " + pass + "<br>");

		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/myweb";
		String driver = "com.mysql.cj.jdbc.Driver";
		String sql = null;
		PreparedStatement ps = null;



		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, "root", "1234");

		} catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
