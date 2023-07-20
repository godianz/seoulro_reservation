package com.study.springboot.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class resdto {
	
	private int res_idx;
	private String res_name;
	private String res_phone;
	private String res_email;
	private Date res_start;
	private Date res_end;
	private Date res_date;
	
}
