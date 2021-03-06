package kr.or.ddit.emp.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.emp.service.EmpService;
import kr.or.ddit.emp.vo.EmpVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/emp")
@RequiredArgsConstructor
public class EmpController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);
	private final EmpService empService;

	@GetMapping("/list")
	public String list(Model model) throws Exception {
		List<EmpVO> findAll = empService.findAll();
		model.addAttribute("list", findAll);
		return "emp/list";
	}
	
	@GetMapping("/register")
	public String register(Model model) {
		logger.info("register View");
		EmpVO emp = new EmpVO();
		
		String autoEmpNo = empService.autoEmpNo();
		emp.setEmpNo(autoEmpNo);
		
		model.addAttribute("emp", emp);
		return "emp/register";
	}
	
	@PostMapping("/register")
	public String registerPro(@ModelAttribute("emp") @Validated EmpVO emp,
							BindingResult result) {
		logger.info("register Pro");
		
		if(result.hasErrors()) {
//			List<ObjectError> allErrors = result.getAllErrors();
//			List<ObjectError> globalErrors = result.getGlobalErrors();
//			List<FieldError> fieldErrors = result.getFieldErrors();
			return "emp/register";
		}
		
		int insertResult = empService.save(emp);
		
		
		return "redirect:/emp/list";
	}
	
	@GetMapping("/detail")
	public String detail(String empNo, Model model) {
		EmpVO findEmp = empService.findByNo(empNo);
		model.addAttribute("emp", findEmp);
		return "emp/detail";
	}
	
	@PostMapping("/detail")
	public String detailPro(@ModelAttribute("emp") @Validated EmpVO emp,
			BindingResult result, Model model) {
		logger.info("register Pro");
		
		if(result.hasErrors()) {
//			List<ObjectError> allErrors = result.getAllErrors();
//			List<ObjectError> globalErrors = result.getGlobalErrors();
//			List<FieldError> fieldErrors = result.getFieldErrors();
			model.addAttribute("emp", emp);
			return "emp/detail";
		}
		
		int insertResult = empService.save(emp);
		  
		
		return "redirect:/emp/list";
	}
	
}
