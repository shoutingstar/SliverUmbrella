package com.silver.resident;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ResidentDAO {

	ArrayList<ResidentDTO> resident();

}