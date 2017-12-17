package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import PokemonDB.AttackDAO;
import PokemonDB.PokemonDAO;

public class buildTeamCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		

		//i think this is a really dumb way to do this. Should be a way to call this only if doesnt already exist in session
		request.getSession().setAttribute("allPokemon", PokemonDAO.getEverything());
		request.getSession().setAttribute("allAttacks", AttackDAO.getEverything());
		
		return "pokemonTable.jsp";
	}

}
