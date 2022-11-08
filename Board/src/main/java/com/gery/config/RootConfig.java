package com.gery.config;


import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@MapperScan(basePackages = {"org.gery.mapper"})
public class RootConfig {
	
	
	//HikariCP를 사용한 Datasource
	@Bean
	public DataSource datasource() {
		
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		hikariConfig.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:XE");
		hikariConfig.setUsername("c##scott");
		hikariConfig.setPassword("tiger");
		
		HikariDataSource datasource = new HikariDataSource(hikariConfig);
		
		return datasource;
	}
	
	//Mybatis SqlSessionFactory Bean만들기
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactory = 
				new SqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(datasource());
		return (SqlSessionFactory) sqlSessionFactory.getObject();
	}
	
}
