package com.giang;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/survey")
public class SurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String url = "/surveyInfo.jsp";
		String action = request.getParameter("action");
		
		if(action == null) {
			action = "join";
		}
		if(action.equals("join")) {
			url = "/survey.jsp";
		}
		else if(action.equals("add")) {
			// get parameters from the request
			String firstname = request.getParameter("firstName");
			String lastname = request.getParameter("lastName");
			String email = request.getParameter("email");
			String heardFrom = request.getParameter("heardFrom");
			String wantsUpdates = request.getParameter("wantsUpdates");
			String contactVia = request.getParameter("contactVia");
			
			if(heardFrom == null) {
				heardFrom = "NA";
			}
			if(wantsUpdates == null) {
				wantsUpdates = "No";
			}
			else {
				wantsUpdates = "Yes";
			}
			
			// store data in User object
			User user = new User(firstname, lastname, email, heardFrom, wantsUpdates, contactVia);
			
			UserDB.insert(user);
			request.setAttribute("user", user);
		}		
		
		// forward request to surveyInfo.jsp		
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	
	@Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }   
}
