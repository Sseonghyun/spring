package org.ict.domain;

import lombok.Data;

// lombok�� �̿��ϸ� �ڵ����� getter, setter, toString�� ���� �� �ֽ��ϴ�.
// @Data ������̼��� Ŭ���� ���� ���̸� �ڵ� �����Ǹ�
// Ȯ���� ���� Packge Explorer���� �� �� �ֽ��ϴ�.
@Data
public class TestVO {

	private String name;
	private int age;
	private String job;

}
