package org.ict.controller.di.classfile;

import org.springframework.stereotype.Component;

// 컴포넌트 스캔방식
// 어노테이션 @Component, @controller, @Repository
@Component

public class Singer {
	public void sing() {
		System.out.println("가수가 노래를 합니다.");
		// 1. 가수 객체를 main에서 생성해 기능을 호출해 주세요
		
	}
}