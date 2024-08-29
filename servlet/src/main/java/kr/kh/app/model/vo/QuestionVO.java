package kr.kh.app.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class QuestionVO {
	private int qu_num; 
	private String qu_content; 
	private String qu_type;
}