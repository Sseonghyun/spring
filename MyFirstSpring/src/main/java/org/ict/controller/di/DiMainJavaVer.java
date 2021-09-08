package org.ict.controller.di;

import org.ict.controller.di.classfile.Broadcast;
import org.ict.controller.di.classfile.Singer;
import org.ict.controller.di.classfile.Stage;

public class DiMainJavaVer {

	public static void main(String[] args) {
		// 1. 가수 객체를 main에서 생성해 기능을 호출해 주세요
		
		Singer singer = new Singer();
		singer.sing();
		
		// 2. 무대 객체를 먼저 생성하고 기능을 호출
		// 무대객체는 생성시 반드시 singer가 먼저 있어야하므로
		// 무대는 singer에 의존함
		Stage stage=new Stage(singer);
		stage.perform();
		
		
		// 3. 방송송출용(Broadcast)
		Broadcast broadcast =new Broadcast(stage);
		broadcast.broadcast();	
		
		
		
	}

}