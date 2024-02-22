package com.smhrd3.resultmodel;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd3.database.SqlSessionManager;

public class resultDAO {

	SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	
	// 전체 결과조회
	
	public List<resultDTO> selectResult() {
		
		SqlSession sqlsession = factory.openSession();
		List<resultDTO> resultList = sqlsession.selectList("selectResult");
		sqlsession.close();
		return resultList;
		
	}

	// 최신 결과 조회	
	public resultDTO selectR(resultDTO dto) {
		
		SqlSession sqlsession = factory.openSession();
		resultDTO selectR = sqlsession.selectOne("selectR", dto);
		sqlsession.close();
		return selectR;
	}

	
}
