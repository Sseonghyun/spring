package org.ict.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {

	@Select("SELECT SYSDATE FROM DUAL")
	public String getTime();
	
	// �⺻������ ������ ������ �ۼ��� �Ϸ��� xml���ϰ� �������̽��� �����մϴ�.
	// ����, �������̽����� �Ʒ��� ���� �޼��带 ���� �� �ݴϴ�.
	// �׸��� ���� ��Ű�� ���ο� xml������ �����س��� �ű⿡ ������ getTime2�� ȣ��ɶ�
	// ������ ���๮�� �ۼ��մϴ�.
	public String getTime2();
	
	// getTime3�� ���� �׽�Ʈ�ڵ忡�� ������� ���ּ���.
	public String getTime3();
}
