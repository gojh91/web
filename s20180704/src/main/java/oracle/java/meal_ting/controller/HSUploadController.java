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
public class HSUploadController {
	private static final Logger logger = LoggerFactory.getLogger(HSUploadController.class);
	
	@Autowired
	ReviewFeedService rfs;
	
//	@Resource(name = "uploadPath")
//	private String uploadPath;

	// upLoadForm 시작 화면
	@RequestMapping(value = "memberUploadImgForm")
	public String memberUploadImgForm(Model model) {
		System.out.println("memberUploadImgForm Start");
		return "memberUpLoadFormStart";
	}

	@RequestMapping(value = "memberUploadForm", method = RequestMethod.POST)
	public String uploadForm(HttpServletRequest request, MultipartFile file, Model model) throws Exception {
		System.out.println("memberUploadForm POST Start");

		String uploadPath = request.getSession().getServletContext().getRealPath("/upload/");
		logger.info("originalName: " + file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contentType: " + file.getContentType());

		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes(), uploadPath);
		System.out.println("savedName->"+savedName);
		model.addAttribute("savedName", savedName);

		/*
		// 현재 접속한 서버의 IP 주소 확인
		InetAddress local;
		try {
		    local = InetAddress.getLocalHost();
		    String ip = local.getHostAddress();
		    System.out.println("local ip : "+ip);      ex) local ip : 211.183.8.71
		} catch (UnknownHostException e1) {
		    e1.printStackTrace();
		}
		*/

		return "memberUploadResult";
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
	
	

/*	@RequestMapping(value = "/getPic", method = RequestMethod.GET)
	public String getPic(String pic_no, HttpServletRequest request) {
		picVO picVO = new PicVO();
		picVO = picdao.getImage(pic_no);          // 이미지 정보 가져오기
	    String path = baseinfoVO.getPic_path();   // 이미지 경로
	    request.setAttribute("path", path);
	    return "/image";
	}*/
	
	
}
