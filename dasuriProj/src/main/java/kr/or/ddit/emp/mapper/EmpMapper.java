package kr.or.ddit.emp.mapper;

import java.util.List;

import kr.or.ddit.emp.vo.EmpVO;

public interface EmpMapper {
	List<EmpVO> findAll();
	int save(EmpVO emp);
	String autoEmpNo();
	EmpVO findByNo(String empNo);
}
