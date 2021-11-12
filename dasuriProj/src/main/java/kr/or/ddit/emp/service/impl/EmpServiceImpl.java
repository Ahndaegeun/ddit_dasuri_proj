package kr.or.ddit.emp.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.emp.mapper.EmpMapper;
import kr.or.ddit.emp.service.EmpService;
import kr.or.ddit.emp.vo.EmpVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class EmpServiceImpl implements EmpService {
	
	private final EmpMapper empMapper;
	
	@Override
	public List<EmpVO> findAll() throws Exception{
		return empMapper.findAll();
	}
	
	@Override
	public int save(EmpVO emp) {
		return empMapper.save(emp);
	}
	
	@Override
	public String autoEmpNo() {
		return empMapper.autoEmpNo();
	}
	
	@Override
	public EmpVO findByNo(String empNo) {
		return empMapper.findByNo(empNo);
	}
}
