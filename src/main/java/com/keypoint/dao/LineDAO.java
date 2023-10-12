package com.keypoint.dao;

import java.util.List;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.keypoint.dto.LineDTO;
import com.keypoint.dto.PageDTO;
import com.keypoint.dto.ReceiveDTO;


@Repository
public class LineDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.lineMapper";

	
	public List<LineDTO> getLineList(PageDTO pageDTO) {
		System.out.println("LineDAO getLineList()");
		return sqlSession.selectList(namespace+".getLineList" , pageDTO);
	}// 라인목록조회


	public int getLineCount() {
		System.out.println("LineDAO getLineCount()");

		return sqlSession.selectOne(namespace+".getLineCount");
	}
	
	public void lineInsert(LineDTO lineDTO) {
		System.out.println("LineDAO lineInsert()");
		sqlSession.insert(namespace+".lineInsert",lineDTO);
	}// 라인등록


	public LineDTO getLineDetails(String lineCode) {
		System.out.println("LineDAO getLineDetails()");
		return sqlSession.selectOne(namespace+".getLineDetails", lineCode);
	}// 라인상세


	public void lineUpdate(LineDTO lineDTO) {
		System.out.println("LineDAO lineUpdate()");
		System.out.println(lineDTO);
		sqlSession.update(namespace+".lineUpdate",lineDTO);
	}// 라인수정



	
	
	
	
	
	
}
