package com.shen.internal;

import com.shen.mapper.BlogMapper;
import com.shen.model.UploadFile;
import com.shen.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by shenge on 2015/11/8.
 */
@Service("fileService")
public class FileServiceImpl implements FileService {


    @Autowired
    private BlogMapper blogMapper;

    @Override
    public void saveFile(UploadFile uf) {
        blogMapper.saveFile(uf);
    }
}
