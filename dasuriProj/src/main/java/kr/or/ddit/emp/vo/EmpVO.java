package kr.or.ddit.emp.vo;

import java.io.Serializable;

import org.hibernate.validator.constraints.NotBlank;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class EmpVO implements Serializable {
	private static final long serialVersionUID = 2083765061971985748L;

	@NotBlank
	private String empNo;

	@NotBlank
	private String nm;
	
	@NotBlank
	private String addr;
	
	@NotBlank
	private String hp;
	
	@NotBlank
	private String postNo;
	
	private String addr2;
	
	@NotBlank
	private String password;
}
