package org.ict.controller.di.classfile;

public class Broadcast {

	private Stage stage;
	
	public Broadcast(Stage stage) {
		this.stage=stage;
	}
	
	public void broadcast() {
		System.out.print("��� ����� ");
		stage.perform();
	}
	
}