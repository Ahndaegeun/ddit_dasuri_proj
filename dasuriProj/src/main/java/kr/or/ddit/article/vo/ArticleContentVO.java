package kr.or.ddit.article.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ArticleContentVO {
	private int articleNo;
	private String content;
}
