package kr.kh.app.model.vo;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberVO {
	private String me_id; 
	private String me_pw; 
	private int me_fail; 
	private Date me_stopdate; 
	private String me_authority; 
	private String me_ms_name;

	public MemberVO(String id, String pw) {
		this.me_id = id;
		this.me_pw = pw;
	}
}