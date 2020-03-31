package com.bit.exam03;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;

public class HelloApp {

	public static void main(String[] args) {
		// xml 파일을 읽어오기 위해서~
		Resource resource = new FileSystemResource("Beans.xml");
		//객체 제공자의 역할
		BeanFactory factory = new XmlBeanFactory(resource);
		
		MessageBean mb = (MessageBean)factory.getBean("mb");
		mb.sayHello("홍길동");
	}

}
