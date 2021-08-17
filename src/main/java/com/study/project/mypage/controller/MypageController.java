package com.study.project.mypage.controller;

import java.nio.file.Files;
import java.util.List;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.study.project.commons.attachimage.AttachImageVO;
import net.coobird.thumbnailator.Thumbnails;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.project.user.domain.UserVO;
import com.study.project.user.service.UserService;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private UserService userService;

	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);

	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public String mypageGET(Model model, UserVO userVO, HttpServletRequest request) throws Exception{

		HttpSession httpSession = request.getSession();
		model.addAttribute("user" , httpSession.getAttribute("login"));

		return "/mypage/mypage";
	}

	/* 첨부 파일 업로드 */
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		logger.info("uploadAjaxActionPOST..........");

		/* 이미지 파일 체크 */
		for(MultipartFile multipartFile: uploadFile) {
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;

			try {
				type = Files.probeContentType(checkfile.toPath());
				logger.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			if(!type.startsWith("image")) {
				List<AttachImageVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}
		}
//		String uploadFolder = "C:\\files";
		String uploadFolder = "/Users/goyongsu/Downloads/files";

		/* 폴더 생성 */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);

		File uploadPath = new File(uploadFolder, datePath);
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		/* 이미저 정보 담는 객체 */
		List<AttachImageVO> list = new ArrayList();

		for (MultipartFile multipartFile : uploadFile) {
			/* 이미지 정보 객체 */
			AttachImageVO vo = new AttachImageVO();

			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);

			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);

			uploadFileName = uuid + "_" + uploadFileName;

			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);

			logger.info("파일 이름 : " + multipartFile.getOriginalFilename());
			logger.info("파일 타입 : " + multipartFile.getContentType());
			logger.info("파일 크기 : " + multipartFile.getSize());
			logger.info("폴더 위치 : " + uploadPath);

			try {
				multipartFile.transferTo(saveFile);
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);

				//비율
				double ratio = 3;
				//넓이 높이
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);
				Thumbnails.of(saveFile)
						.size(width, height)
						.toFile(thumbnailFile);

			} catch (Exception e) {
				e.printStackTrace();
			}
			list.add(vo);
		}
		ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<>(list, HttpStatus.OK);
		return result;
	}

	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		File file = new File("/Users/goyongsu/Downloads/files/" + fileName);

		ResponseEntity<byte[]> result = null;
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		}catch (IOException e) {
			e.printStackTrace();
		}

		return result;
	}

}