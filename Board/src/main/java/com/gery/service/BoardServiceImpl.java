package com.gery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gery.domain.BoardVO;
import com.gery.domain.Criteria;
import com.gery.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	public void register(BoardVO board) {
		log.info("register....." + board);

		mapper.insertSelectKey(board);

	}

	@Override
	public BoardVO get(long bno) {
		log.info("get()....");
		
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("modify()...");
		
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(long bno) {
		log.info("delete()...");
		
		return mapper.delete(bno) == 1;
	}

//	@Override
//	public List<BoardVO> getlist() {
//		log.info("GetList()...");
//
//		return mapper.getList();
//
//	}
	
	
	@Override
	public List<BoardVO> getlist(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

}
