package com.gery.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.gery.domain.BoardVO;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.gery.config.RootConfig.class})
@Log4j
public class BoardServiceTests {
	
	@Setter(onMethod_ = {@Autowired })
	private BoardService service;
	
	
//	@Test
//	public void testExist() {
//		
//		log.info(service);
//		assertNotNull(service);
//		
//	}
	
//	@Test
//	public void testRegister() {
//		
//		BoardVO board = new BoardVO();
//		board.setTitle("�� �� Using Service");
//		board.setContent("�� ���� Using Service");
//		board.setWriter("�� ����� Using Service");
//		
//		service.register(board);
//		
//		log.info("������ �Խù��� ��ȣ : " + board.getBno());
//	}
	
//	@Test
//	public void testGetList() {
//		
//		service.getlist().forEach(board -> log.info(board));
//	}
	
//	@Test
//	public void testGet() {
//		
//		log.info(service.get(1L));
//	}
	
//	@Test
//	public void testDelete() {
//		
//		log.info("Remove : " + service.remove(6L));
//	}
	
	@Test
	public void testUpdate() {
		BoardVO board = service.get(1L);
		
		// ������
		if(board == null) {
			return;
		}
		
		board.setTitle("���� ���� Service");
		board.setContent("���� ���� Service");
		
		log.info("Update : " + service.modify(board));
	}
}
