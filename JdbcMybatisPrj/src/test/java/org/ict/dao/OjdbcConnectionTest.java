package org.ict.dao;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

// @Log4j�� �α� ����� �� �� �ֵ��� �����ݴϴ�.
// System.out.println(); ���� ���� �α븸�� ��������
// ���� ����� �ƴϱ� ������ �޸𸮸� ���� ��ƸԽ��ϴ�.
// ���� �α׸� ������ System.out.println();�� ���°� ������� �ʽ��ϴ�.
// �α븸 �� �� �ֵ��� Log4j�� ����մϴ�.
// ����� Log4j2�� spring-boot ���� ����, Log4�� spring���� ���ϴ�.
@Log4j
public class OjdbcConnectionTest {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// �� Ŭ���������� ����������, @Test�� ���� �޼��常 �����մϴ�.
	@Test
	public void testConnection() {
		try(Connection con =
				DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1522/XEPDB1", // �����ּ�
						"mytest", // ���� ���̵�
						"mytest" // ���� ��й�ȣ
						)) {
			log.info(con);
			log.info("���������� ����Ǿ����ϴ�.");
		}catch (Exception e) {
			fail(e.getMessage());
		}
	}
	
	public void testConnection2() {
		log.info("�� �ڵ�� ���� �ȵ˴ϴ�.");
	}
}

