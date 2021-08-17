package com.study.project.mypage.service;

import com.study.project.commons.attachimage.AttachImageVO;
import com.study.project.mypage.persistence.MypageDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MypageServiceImpl implements MypageService {

    @Autowired
    private MypageDAO mypageDAO;

    @Override
    public void register(AttachImageVO attachImageVO) throws Exception {
        mypageDAO.img_insert(attachImageVO);
    }
}
