package com.study.springboot.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class roomdto {
	private int room_idx;
	private String room_name;
	private String room_img;
	private String room_info;
	private String room_price;
}
