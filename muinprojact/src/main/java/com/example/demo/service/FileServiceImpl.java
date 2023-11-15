package com.example.demo.service;

import java.io.File;
import java.nio.file.Files;

import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service("FileService")
public class FileServiceImpl implements FileService {

	@Override
	public boolean imageCheck(File file) {
		 
		try {
			String contentType = Files.probeContentType(file.toPath());
			log.info("현재 파일 타입 : "+contentType);
			return contentType.startsWith("image");
		} catch (Exception e) {			
			e.printStackTrace();
		}		
		return false;
	}

}
