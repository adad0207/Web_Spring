package com.gery.service;

import java.util.List;

import com.gery.domain.ReplyVO;

public interface ReplyService {

	void CommentRegist(ReplyVO vo); // 댓글 등록

	List<ReplyVO> getList(int com_bno); // 목록 요청

	int getTotal(int com_bno); // 댓글 개수

	List<ReplyVO> myRecord(String writer);

	void commentDelete(ReplyVO vo);

	List<ReplyVO> getComList(String com_wrtier); // 어드민용 회원 댓글 불러오기

}