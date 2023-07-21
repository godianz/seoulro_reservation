package com.study.springboot.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class order_status {

	private int order_idx;
	private String order_name;
	private String order_email;
	private String order_phone;
	private Date order_start;
	private Date order_end;
	private Date order_date;
	private String order_price;
	
}
	
