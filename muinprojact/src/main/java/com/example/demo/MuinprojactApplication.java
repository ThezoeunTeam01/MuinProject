package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@EnableAspectJAutoProxy
@MapperScan(basePackages = "com.example.demo.mapper")
public class MuinprojactApplication {

	public static void main(String[] args) {
		SpringApplication.run(MuinprojactApplication.class, args);
	}

}
