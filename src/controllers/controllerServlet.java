package controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import PokemonDB.AttackDAO;
import PokemonDB.PokemonDAO;


/**
 * Servlet implementation class controllerServlet
 */
@WebServlet("/controllerServlet")
public class controllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String, Command> commands;
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		commands = new HashMap<String, Command>();
		commands.put("buildTeam", new buildTeamCommand());
		commands.put("pokemonDisplay", new displayPokemonCommand());
		commands.put("addToTeam", new addToTeamCommand());
		

	}
       
	/** 
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	 * @param request servlet request
	 * @param response servlet response
	 */
	protected void resolveCommand(
		HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	
		//HUGE TIPS
		//IF CONVERTED FROM DYNAMIC WEB TO MAVEN YOU STILL HAVE TO MAKE web.xml
		//if you dont you cant find the controller
		//make sure the mapping is correct
		
		
		
		//FOLLOW THIS PATTERN
		//action is the parameter in the corresponding jsp file
		//do the request dispatcher in the event it is null
		
		Command cmd = (Command) commands.get(request.getParameter("action"));
		if (cmd == null) {
	        RequestDispatcher rd = request.getRequestDispatcher("default.jsp");
			rd.forward(request, response);
		}
		
		//dont just do cmd.execute
		//Need to do this forward with request dispatcher
		
		String nextPage = cmd.execute(request, response);
		
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
        rd.forward(request, response);

				
				
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/** 
	 * Handles the HTTP <code>GET</code> method.
	 * @param request servlet request
	 * @param response servlet response
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
	    resolveCommand(request, response);
	}
	
	/** 
	 * Handles the HTTP <code>POST</code> method.
	 * @param request servlet request
	 * @param response servlet response
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
	    resolveCommand(request, response);
	}

}
