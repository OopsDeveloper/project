package com.study.project.adminp.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.study.project.adminp.domain.StudyVO;

@Repository
public interface AdminDAO {
	List<StudyVO> getStudy() throws Exception;
}
