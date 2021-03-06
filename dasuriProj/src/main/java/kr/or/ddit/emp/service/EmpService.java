package kr.or.ddit.emp.service;

import java.util.List;

import kr.or.ddit.emp.vo.EmpVO;

public interface EmpService {
	List<EmpVO> findAll() throws Exception;
	int save(EmpVO emp);
	String autoEmpNo();
	EmpVO findByNo(String empNo);
}
