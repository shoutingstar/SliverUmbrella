package com.silver.resident;

import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class RoomService {
	
	Logger logger=LoggerFactory.getLogger(this.getClass());
	
	@Autowired RoomDAO roomdao;

	public ModelAndView roomList() {
		
		
		ArrayList<RoomDTO> roomList = roomdao.roomList();
		ArrayList<RoomDTO> memList = roomdao.memList();
		ModelAndView mav = new ModelAndView("resident/roomList");
		logger.info("list size :"+roomList.size());
		mav.addObject("roomList",roomList);
		mav.addObject("memList",memList);
		
		for (RoomDTO mem : memList) {
			logger.info("이름 : "+mem.getMem_name());
		}
		
		return mav;
	}



}
