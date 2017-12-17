package controllers;

import java.util.List;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import PokemonDB.Attack;
import PokemonDB.Pokemon;
import PokemonDB.PokemonDAO;
import PokemonDB.learnableMovesDAO;

public class displayPokemonCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		
		Pokemon currentPoke = PokemonDAO.retrieve(Integer.parseInt(id));
		request.getSession().setAttribute("currentPoke", currentPoke);
		//System.out.println(Integer.parseInt(id));
		List<Attack> currentAttacks = learnableMovesDAO.getLearnableMoves(Integer.parseInt(id));
		request.getSession().setAttribute("currentAttacks",currentAttacks);
		
		/*
		for(Attack a: currentAttacks)
			System.out.println(a.getIdentifier());
			*/
		
		return "pokemonDisplay.jsp";
	}

}
