package com.smhrd3.postmodel;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd3.database.SqlSessionManager;

public class PostDAO {

	SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	// 게시물 업로드 메소드
		public int upLoad(PostDTO dto) {
			SqlSession sqlSession = factory.openSession(true);
			int row = sqlSession.insert("upload",dto);
			sqlSession.close();
			return row;
		}
		// 게시물 표시 메소드
		public List<PostDTO> selectAllPost() {
			SqlSession sqlsession = factory.openSession();
			List<PostDTO> postList = sqlsession.selectList("selectallpost");
			sqlsession.close();
			return postList;
		}
	
}
