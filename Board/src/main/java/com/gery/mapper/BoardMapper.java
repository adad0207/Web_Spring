package com.gery.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.gery.domain.BoardVO;
import com.gery.domain.Criteria;

public interface BoardMapper {

	public List<BoardVO> getList();

	public void insert(BoardVO vo);

	public void insertSelectKey(BoardVO vo);

	public BoardVO read(Long bno);
	
	public int delete(Long bno);

	public int update(BoardVO vo);
	
	public List<BoardVO> getListWithPaging(Criteria cri);
}
