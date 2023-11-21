package db;

import beans.Board;

import javax.sql.DataSource;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.*;
import java.util.Calendar;
import static db.JdbcUtil.*;

public class BoardDAO {

    DataSource ds;
    Connection con;

    private  static BoardDAO boardDAO;

    private BoardDAO() {}
    public static BoardDAO getInstance(){
        //싱글톤 객체
        if(boardDAO==null){
            boardDAO=new BoardDAO();
        }

        return boardDAO;
    }

    // 게시글 등록 메서드
    public int insertArticle(Board b,Connection con) {
        int result=0;
        PreparedStatement ps=null;
        ResultSet rs=null;
        String sql="";
        int num=0;
        sql="select max(BOARD_NUM) from board";


        try {
            ps=con.prepareStatement(sql);
            rs = ps.executeQuery();

            if(rs.next()){
                num=rs.getInt(1)+1;

            }else{
                num=1;
            }

            sql="insert into board(BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT,BOARD_CONTENT,BOARD_FILE,BOARD_RE_REF,BOARD_RE_LEV,BOARD_RE_SEQ,BOARD_DATE)"
                    +"value(?,?,?,?,?,?,?,?,?,?,now())";
            ps=con.prepareStatement(sql);
            ps.setInt(1, num);
            ps.setString(2, b.getBoard_name());
            ps.setString(3, b.getBoard_pass());
            ps.setString(4, b.getBoard_subject());
            ps.setString(5, b.getBoard_content());
            ps.setString(6, b.getBoard_file());
            ps.setInt(7, num);
            ps.setInt(8, 0);
            ps.setInt(9, 0);
            result=ps.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();

        }finally {

            close(rs);
            close(ps);

        }



        return result;
    }
}
