package com.shen.internal;

import com.shen.mapper.BlogMapper;
import com.shen.model.Category;
import com.shen.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by shenge on 2015/11/7.
 */
@Service("indexService")
public class IndexServiceImpl implements IndexService {

    @Autowired
    private BlogMapper blogMapper;

}
