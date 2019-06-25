package oracle.java.meal_ting.controller;

import java.io.File;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import oracle.java.meal_ting.service.ReviewFeedService;

@Controller
public class JKUploadController {
	private static final Logger logger = LoggerFactory.getLogger(JKUploadController.class);
	
	@Autowired
	ReviewFeedService rfs;

	// upLoadForm 시작 화면
	@RequestMapping(value = "uploadImgForm")
	public String upLoadFormStart(Model model) {
		System.out.println("upLoadFormStart Start");
		return "upLoadFormStart";
	}

	@RequestMapping(value = "uploadForm", method = RequestMethod.POST)
	public String uploadForm(HttpServletRequest request, MultipartFile file, Model model) throws Exception {
		System.out.println("UploadForm POST Start");

		String uploadPath = request.getSession().getServletContext().getRealPath("/upload/");
		logger.info("originalName: " + file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contentType: " + file.getContentType());

		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(), uploadPath);
		System.out.println("savedName->"+savedName);
		model.addAttribute("savedName", savedName);

		return "uploadResult";
	}

	private String uploadFile(String originalName, byte[] fileData , String uploadPath) throws Exception {
		
		UUID uid = UUID.randomUUID();

	    System.out.println("uploadPath->"+uploadPath);
	    // Directory 생성 
		File fileDirectory = new File(uploadPath);
		if (!fileDirectory.exists()) {
			fileDirectory.mkdirs();
			System.out.println("업로드용 폴더 생성 : " + uploadPath);
		}

	    String savedName = uid.toString() + "_" + originalName;

		File target = new File(uploadPath, savedName);

		FileCopyUtils.copy(fileData, target);
		
		return savedName;
	}
}
