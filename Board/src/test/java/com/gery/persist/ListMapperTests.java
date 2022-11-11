package com.gery.persist;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.gery.config.RootConfig;
import com.gery.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class})
@Log4j
public class ListMapperTests {	
	@Setter(onMethod_ = { @Autowired })
	private BoardMapper boardMapper;
	
	@Test
	public void testGetList() {
//		log.info(boardMapper.getClass().getName());
		boardMapper.getList().forEach(board -> log.info(board));
		
	}
}
