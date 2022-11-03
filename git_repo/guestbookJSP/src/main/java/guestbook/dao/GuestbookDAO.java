package guestbook.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import guestbook.bean.GuestbookDTO;


public class GuestbookDAO {
	private SqlSessionFactory sqlSessionFactory;
	private static GuestbookDAO guestbookDAO = new GuestbookDAO();
	
	public static GuestbookDAO getInstance() {
		return guestbookDAO;
	}
	public GuestbookDAO() {
		try {
			
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);//생성 (인터페이스)
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public int guestbookWrite(Map<String, String>map) {
		int su = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		su = sqlSession.insert("guestbookSQL.write",map);
		sqlSession.commit();
		sqlSession.close();
		return su;
	}
	public List<GuestbookDTO> guestbooklist(Map<String,Integer> map) {
		List<GuestbookDTO> list = new ArrayList<>();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		list = sqlSession.selectList("guestbookSQL.list",map);
		sqlSession.close();
		return list;
	}
	public int getTotalA() {
		int totalA=0;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		String sql ="select count(*)from guestbook";
		totalA = sqlSession.selectOne("guestbookSQL.gettotala");
		sqlSession.close();
		return totalA;
		
	}
}
