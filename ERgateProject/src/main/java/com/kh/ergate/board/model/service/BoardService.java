package com.kh.ergate.board.model.service;

import java.util.ArrayList;

import com.kh.ergate.board.model.vo.Board;
import com.kh.ergate.common.model.vo.PageInfo;

public interface BoardService {
	
	// 1. 게시판 리스트 조회용 서비스
	// 1_1. 게시판 총갯수 조회용 서비스
	int selectListCount();
	// 1_2. 요청한 페이지에 보여질 게시글 리스트 조회용 서비스
	ArrayList<Board> selectList(PageInfo pi);
	
	// 2. 게시판 작성용 서비스
	int insertBoard(Board b);
	
	// 3. 게시판 상세조회용 서비스
	// 3_1. 해당 게시글 조회수 증가용 서비스
	int increaseCount(int bno);
	// 3_2. 해당 게시글 조회용 서비스
	Board selectBoard(int bno);
	
	// 4. 게시글 삭제용 서비스
	int deleteBoard(int bno);
	
	// 5. 게시글 수정용 서비스
	int updateBoard(Board b);
	
	
	// ----- ajax 후 ----
	// 6. 해당 게시글에 딸려있는 댓글 리스트 조회용 서비스
	
	
	// 7. 댓글 작성용 서비스

}








