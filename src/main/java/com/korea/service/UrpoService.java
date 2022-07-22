package com.korea.service;

import com.korea.dao.UrpoDAO;
import com.korea.dto.UrpoDTO;

public class UrpoService {
	UrpoDAO dao = new UrpoDAO();
	private static UrpoService instance = null;
	public static UrpoService getInstance() {
		if(instance==null) {
			instance = new UrpoService();
		}
		return instance;
	}
	
	public boolean ProduceUrcon(UrpoDTO dto){
		return dao.insert(dto);
	}
}
