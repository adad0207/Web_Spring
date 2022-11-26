package com.gery.persist;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.gery.domain.ReplyVO;
import com.gery.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
 @ContextConfiguration(classes = {com.gery.config.RootConfig.class })
@Log4j
public class ReplyMapperTests {

	private Long[] bnoArr = { 43L, 44L, 45L, 46L, 47L };

	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;

//	@Test
//	public void testCreate() {
//
//		IntStream.rangeClosed(1, 10).forEach(i -> {
//
//			ReplyVO vo = new ReplyVO();
//
//			vo.setBno(bnoArr[i % 5]);
//			vo.setReply("Good" + i);
//			vo.setReplyer("replyer" + i);
//
//			mapper.insert(vo);
//		});
//
//	}
//
//	@Test
//	public void testRead() {
//
//		Long targetRno = 5L;
//
//		ReplyVO vo = mapper.read(targetRno);
//
//		log.info(vo);
//
//	}
//
//	@Test
//	public void testMapper() {
//
//		log.info(mapper);
//	}
//
//	@Test
//	public void testDelete() {
//
//		Long targetRno = 1L;
//
//		mapper.delete(targetRno);
//	}
//
//	@Test
//	public void testUpdate() {
//
//		Long targetRno = 10L;
//
//		ReplyVO vo = mapper.read(targetRno);
//
//		vo.setReply("Update Reply ");
//
//		int count = mapper.update(vo);
//
//		log.info("UPDATE COUNT: " + count);
//	}
//
//	@Test
//	public void testList() {
//
//		Criteria cri = new Criteria();
//
//		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
//
//		replies.forEach(reply -> log.info(reply));
//
//	}
//	
//	@Test
//	public void testList2() {
//
//		Criteria cri = new Criteria(2, 10);
//
//		List<ReplyVO> replies = mapper.getListWithPaging(cri, 3145745L);
//
//		replies.forEach(reply -> log.info(reply));
//
//	}

	
	


}
