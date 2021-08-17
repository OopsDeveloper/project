package com.study.project.mypage.persistence;

import com.study.project.commons.attachimage.AttachImageVO;

public interface MypageDAO {
    void img_insert(AttachImageVO attachImageVO) throws Exception;
}
