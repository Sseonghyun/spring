package org.ict.dao;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.log4j.Log4j;

@Log4j
public class MySQLConnectionTest {

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// �׽�Ʈ �ڵ带 �����ϸ� @Test�� ���� �޼��常 �����մϴ�.
	@Test
	public void testConnection() {
		try(Connection con =
				DriverManager.getConnection(
						"jdbc:mysql://127.0.0.1:3306/mysql?useSSL=false&serverTimezone=UTC", // ���� �ּ�
						"root", // ���� ���̵�
						"mysql" // ���� ��й�ȣ
						)) {
			log.info(con);
			log.info("MySQL ���� �Ϸ�");
		} catch(Exception e) {
			fail(e.getMessage());
		}
	}
	@Test
	public void testConnection2() {
		log.info("@Test�� ������ ������ �ȵ˴ϴ�.");
	}
}
