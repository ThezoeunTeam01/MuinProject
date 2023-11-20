package com.example.demo.service;

import java.io.File;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.command.MemberFileVO;

@Service
public interface FileService {
	public boolean imageCheck(File file);
	public List<MemberFileVO> fileList(String id);
}
