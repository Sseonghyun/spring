package org.ict.dao;

import static org.junit.Assert.fail;

import java.sql.Connection;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

// ������ �������� ������ Connection pool ���� ������ �������� ���ؼ�
// root-context.xml�� ��ġ�� �������ݴϴ�.
@RunWith(SpringJUnit4ClassRunner.class)
// Beans Graph ���ο� �����Ǿ��ִ� dataSource�� ���� ���� ��ġ ����
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OjdbcConnectionPoolTest {

	
	@Autowired
	private DataSource dataSource;
	
	// �޼��� ���ο��� DB���ӿ� �ʿ��� �ּ����� ������ �����س���
	// ���� ���θ� Ȯ���ϱ� ������ ������ �Ѱ� �� �ʿ䰡 �����ϴ�.
	// @Test ( �׽�Ʈ�� �ּ��� �ϴ°͸����ε� ������ ��������. )
	public void testConnection() {
		try(Connection con = dataSource.getConnection()) {
			log.info(con);
			log.info("hikariCP connection");
		} catch(Exception e) {
			fail(e.getMessage());
		}
	}
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testMyBatis() {
		try(SqlSession session = sqlSessionFactory.openSession();
				Connection con = session.getConnection();) {
			log.info(session);
			log.info(con);
		} catch (Exception e) {
		fail(e.getMessage());
	}
}
}
