package com.final05.HelloWorks.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;
import org.springframework.web.servlet.ModelAndView;

@Service
@Aspect
public class AroundLog {
	private static final Logger logger = LoggerFactory.getLogger(AroundLog.class);

	//@Around("LogPointcut.controllerPointCut()")
	public Object controllerAroundLogs(ProceedingJoinPoint pp) throws Throwable {
		System.out.println("[Ctrl :"+pp.getThis()+"] [method:"+ pp.getSignature().getName() +"]");
		Object[] args = pp.getArgs();
		for(int i=0; i<args.length; i++) {
			if(!(args[i] instanceof ModelAndView))
				System.out.print("args["+i+"]: "+ args[i] + "\n");
		}
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		Object obj = pp.proceed();
		stopWatch.stop();
		if(obj!=null) {
			System.out.print("[Ctrl :return: "+ obj + "] \n");
		}
		System.out.println("[Ctrl: "+stopWatch.getTotalTimeMillis() + "(ms)초]");
		return obj;
	}
	@Around("LogPointcut.serviceImplPointcut()")
	public Object serviceAroundLogs(ProceedingJoinPoint pp) throws Throwable {
		System.out.println("[Srv :"+pp.getThis()+"] [method:"+ pp.getSignature().getName() +"]");
		Object[] args = pp.getArgs();
		for(int i=0; i<args.length; i++) {
			System.out.print("args["+i+"]: "+ args[i] + "\n");
		}
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		Object obj = pp.proceed();
		stopWatch.stop();
		if(obj!=null) {
			System.out.print("[Srv :return: "+ obj + "] \n");
		}
		System.out.println("[Srv :"+stopWatch.getTotalTimeMillis() + "(ms)초]");

		return obj;
	}
}
