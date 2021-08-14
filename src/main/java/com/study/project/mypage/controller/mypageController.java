package com.study.project.mypage.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.project.user.controller.UserRegisterController;
import com.study.project.user.domain.UserVO;
import com.study.project.user.service.UserService;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

@Controller
@RequestMapping("/mypage")
public class mypageController {
	
    @Autowired
    private UserService userService;
//    @Resource
//	private String uploadPath;
    
    private static final Logger logger = LoggerFactory.getLogger(mypageController.class);

	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public String mypageGET(Model model, UserVO userVO, HttpServletRequest request) throws Exception{
		
 		HttpSession httpSession = request.getSession();
		model.addAttribute("user" , httpSession.getAttribute("login"));
		
		return "/mypage/mypage";
	}

	/* 첨부 파일 업로드 */
	@RequestMapping(value = "/uploadAjaxAction", method = RequestMethod.POST)
	public void uploadAjaxActionPOST(MultipartFile uploadFile) {
		logger.info("uploadAjaxActionPOST..........");
//		String uploadFolder = "C:\\upload";
		String uploadFolder = "/Users/goyongsu/Downloads/files";

		/* 폴더 생성 */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);

		File uploadPath = new File(uploadFolder, datePath);
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		logger.info("파일 이름 : " + uploadFile.getOriginalFilename());
		logger.info("파일 타입 : " + uploadFile.getContentType());
		logger.info("파일 크기 : " + uploadFile.getSize());
		logger.info("폴더 위치 : " + uploadPath);
	}

//	@RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
//	public void uploadForm() throws Exception {}
//
//	@RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
//	public String uploadForm(MultipartFile file, Model model) throws Exception {
//
//		logger.info("originalName: " + file.getOriginalFilename());
//		logger.info("size: " + file.getSize());
//		logger.info("contentType: " + file.getContentType());
//
//		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
//
//		model.addAttribute("savedName", savedName);
//		return "uploadResult";
//	}
//
//	private String uploadFile(String originalName, byte[] fileData) throws Exception {
//		UUID uid = UUID.randomUUID();
//		String saveName = uid.toString() + "_" + originalName;
//		File target = new File(uploadPath, saveName);
//		FileCopyUtils.copy(fileData, target);
//		return saveName;
//	}

}
