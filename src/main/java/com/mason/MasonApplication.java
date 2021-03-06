package com.mason;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;


@SpringBootApplication
//扫描 mybatis mapper 包路径
@MapperScan(basePackages = "com.mason.**.mapper")
//扫描 所有需要的包, 包含一些自用的工具类包 所在的路径
@ComponentScan(basePackages= {"com.mason", "org.n3r.idworker"})
//开启异步调用方法
@EnableAsync
public class MasonApplication {

	public static void main(String[] args) {
		SpringApplication.run(MasonApplication.class, args);
	}
}
