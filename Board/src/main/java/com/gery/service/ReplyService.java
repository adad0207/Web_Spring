package com.gery.service;

import java.util.List;

import com.gery.domain.ReplyVO;

public interface ReplyService {

	void CommentRegist(ReplyVO vo); // ��� ���

	List<ReplyVO> getList(int com_bno); // ��� ��û

	int getTotal(int com_bno); // ��� ����

	List<ReplyVO> myRecord(String writer);

	void commentDelete(ReplyVO vo);

	List<ReplyVO> getComList(String com_wrtier); // ���ο� ȸ�� ��� �ҷ�����

}