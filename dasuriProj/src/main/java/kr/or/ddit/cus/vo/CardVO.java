package kr.or.ddit.cus.vo;

import java.util.Date;

import javax.validation.constraints.Future;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class CardVO {
	@NotBlank
	private String no;
	
	@Future
	@DateTimeFormat(pattern = "yyyy-MM")
	private Date validMonth;
}
