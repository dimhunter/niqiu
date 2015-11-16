package com.shen.web.controller;

import com.shen.model.UploadFile;
import com.shen.service.FileService;
import com.shen.utils.SysConfigPropertyUtil;
import org.apache.tools.ant.util.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;

@Controller
public class FileController {
	
	@Autowired
	private FileService fileService;

	@RequestMapping("/upload")
	public String upload(HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {
		//创建一个通用的多部分解析器
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
		//判断 request 是否有文件上传,即多部分请求
		if(multipartResolver.isMultipart(request)){
			//转换成多部分request
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
			//取得request中的所有文件名
			Iterator<String> iter = multiRequest.getFileNames();
			while(iter.hasNext()){
				//记录上传过程起始时的时间，用来计算上传时间
				int pre = (int) System.currentTimeMillis();
				//取得上传文件
				MultipartFile file = multiRequest.getFile(iter.next());
				if(file != null){
					//取得当前上传文件的文件名称
					String fileName = file.getOriginalFilename();
//					file.get
					//如果名称不为“”,说明该文件存在，否则说明该文件不存在
					if(fileName.trim() !=""){
						System.out.println(fileName);
						//后缀
						String type = fileName.substring(fileName.lastIndexOf(".")+1);
						//重命名上传后的文件名
						String myFileName = "demoUpload" + fileName;
						//定义上传路径
//						String path = "f:/" + fileName;
						String path = SysConfigPropertyUtil.getInstance().getPropertyValue("filepath") + myFileName;

						UploadFile uf = new UploadFile();
						uf.setFile_name(fileName);
						uf.setName(myFileName);
						uf.setType(type);

						fileService.saveFile(uf);

						File localFile = new File(path);
						file.transferTo(localFile);
					}
				}
				//记录上传该文件后的时间
				int finaltime = (int) System.currentTimeMillis();
				System.out.println(finaltime - pre);
			}

		}
		return "/success";
	}

	@RequestMapping("/toUpload"	)
	public String toUpload() {
		return "/upload";
	}

	
}

