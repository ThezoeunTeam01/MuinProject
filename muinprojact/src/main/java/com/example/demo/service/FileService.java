package com.example.demo.service;

import java.io.File;

import org.springframework.stereotype.Service;

@Service
public interface FileService {
	public boolean imageCheck(File file);
}
