package com.final05.HelloWorks.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class LogPointcut {
	@Pointcut("execution(* com.final05.HelloWorks..*Impl.*(..))")
	public void allPointcut() {
	}

	@Pointcut("execution(* com.final05.HelloWorks..*Impl.get*(..))")
	public void getPointcut() {
	}

}
