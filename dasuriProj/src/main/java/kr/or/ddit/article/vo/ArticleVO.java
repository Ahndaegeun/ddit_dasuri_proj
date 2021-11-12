package kr.or.ddit.article.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ArticleVO {
	private int articleNo;
	private WriterVO writerVo; 
	private String title;
	private Date regdate;
	private Date moddate;
	private int readCnt;
}
