package org.ict.controller.di;

import org.ict.controller.di.classfile.Broadcast;
import org.ict.controller.di.classfile.Singer;
import org.ict.controller.di.classfile.Stage;

public class DiMainJavaVer {

	public static void main(String[] args) {
		// 1. ���� ��ü�� main���� ������ ����� ȣ���� �ּ���
		
		Singer singer = new Singer();
		singer.sing();
		
		// 2. ���� ��ü�� ���� �����ϰ� ����� ȣ��
		// ���밴ü�� ������ �ݵ�� singer�� ���� �־���ϹǷ�
		// ����� singer�� ������
		Stage stage=new Stage(singer);
		stage.perform();
		
		
		// 3. ��ۼ����(Broadcast)
		Broadcast broadcast =new Broadcast(stage);
		broadcast.broadcast();	
		
		
		
	}

}