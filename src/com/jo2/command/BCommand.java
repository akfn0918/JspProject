package com.jo2.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BCommand {
	
	void execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException;	
	
}

