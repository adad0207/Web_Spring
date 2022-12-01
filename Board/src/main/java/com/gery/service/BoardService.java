package com.gery.service;


import java.util.List;

import com.gery.domain.BoardVO;
import com.gery.domain.Criteria;

public interface BoardService {
	
	public void register(BoardVO board);
	
	public BoardVO get(long bno);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(long bno);
	
//	public List<BoardVO> getlist();
	
	public List<BoardVO> getlist(Criteria cri);
	
	public int getTotal(Criteria cri);
}
