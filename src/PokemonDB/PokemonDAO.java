package PokemonDB;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PokemonDAO {

	public static void saveOrUpdate(Pokemon p){

		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		session.saveOrUpdate(p);
		session.getTransaction().commit();
		session.close();

	}

	public static Pokemon retrieve(int id){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		Pokemon p = session.get(Pokemon.class, id);
		session.getTransaction().commit();
		session.close();

		return p;
	}

	public static void delete(Pokemon p){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		session.remove(p);
		session.getTransaction().commit();
		session.close();
	}
	
	
	public static List<Pokemon> getEverything(){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		List<Pokemon> returnList = new ArrayList<Pokemon>();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM Pokemon");
			
			List list = query.list();
			for (Iterator iterator = list.iterator(); iterator.hasNext();){
				
				Pokemon p = (Pokemon) iterator.next();
				if(p.getIdentifier().equals("Deoxys-attack"))
					break;
				returnList.add(p);
			}
			
			tx.commit();
		}catch(HibernateException e) {
			if (tx!=null) tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		
		return returnList;
	}



	public static void main(String args[]){
		

		String csvNames = "src/PokemonDB/pokemonNameHeightWeight.csv";
		String csvStats = "src/PokemonDB/pokemonStats.csv";
		ArrayList<pokemonStats> stats = new ArrayList<pokemonStats>();
		String csvAbilities = "src/PokemonDB/pokemonAbilities.csv";
		ArrayList<pokemonAbility> abilities = new ArrayList<pokemonAbility>();
		String csvAbilityMap = "src/PokemonDB/abilities.csv";
		ArrayList<ability> abilitiesMapping = new ArrayList<ability>();
		String csvTypes = "src/PokemonDB/pokemonTypes.csv";
		ArrayList<type>pokeTypes = new ArrayList<type>();
		
		
		
		
		
		
		
		BufferedReader br = null;
		String line = "";
		String splitBy = ",";
		
		int previous = 0;
		
		//parsing abilities
		//could use join, but dont want duplicate data to store in table. plus this is not done on each computation
		try{
			br = new BufferedReader(new FileReader(csvAbilities));
			while((line = br.readLine())!=null){
				//System.out.println(previous);
				//comma is the seperator
				String []a = line.split(splitBy);
				if(Integer.parseInt(a[0]) != previous){
					previous++;
					abilities.add(new pokemonAbility(previous,Integer.parseInt(a[1]),0,0));
					
				}
				else{
					if(Integer.parseInt(a[2]) == 1)
						abilities.get(previous-1).setHiddenability(Integer.parseInt(a[1]));
					else if(abilities.get(previous-1).getAbility2() == 0)
						abilities.get(previous-1).setAbility2(Integer.parseInt(a[1]));
				}
				
			
				
				
				
				
				
			}
		}catch(FileNotFoundException e){
			e.printStackTrace();
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			if(br!=null){
				try{
					br.close();
					
				}catch(IOException e){
					e.printStackTrace();
				}
			}
		}
		
		
		//parse stats
		//6 stats so always done six times
		previous = 0;
		try{
			br = new BufferedReader(new FileReader(csvStats));
			while((line = br.readLine())!=null){
				
				
				String []a = line.split(splitBy);
				if(Integer.parseInt(a[1]) == 1) //set hp
				stats.add(new pokemonStats(Integer.parseInt(a[0]),Integer.parseInt(a[2]),0,0,0,0,0));
				if(Integer.parseInt(a[1]) == 2) //set attack
					stats.get(previous).setAttack(Integer.parseInt(a[2]));
				if(Integer.parseInt(a[1]) == 3) //set defense
					stats.get(previous).setDefense(Integer.parseInt(a[2]));
				if(Integer.parseInt(a[1]) == 4) //set sp attack
					stats.get(previous).setSpecialAttack(Integer.parseInt(a[2]));
				if(Integer.parseInt(a[1]) == 5) //set sp def
					stats.get(previous).setSpecialDefense(Integer.parseInt(a[2]));
				if(Integer.parseInt(a[1]) == 6){ //set speed
					stats.get(previous).setSpeed(Integer.parseInt(a[2]));
					previous++;
				}
				
				
			
				
				
				
				
				
			}
		}catch(FileNotFoundException e){
			e.printStackTrace();
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			if(br!=null){
				try{
					br.close();
					
				}catch(IOException e){
					e.printStackTrace();
				}
			}
		}
		
		/*for(pokemonAbility a: abilities)
			System.out.println(a);
			*/
		
		/*
		for(pokemonStats s : stats)
			System.out.println(s);
			*/
		
		//parse ability index
		try{
			br = new BufferedReader(new FileReader(csvAbilityMap));
			while((line = br.readLine())!=null){
				
				
				String []ab = line.split(splitBy);
				abilitiesMapping.add(new ability(Integer.parseInt(ab[0]),ab[1],Integer.parseInt(ab[2])));
				
				
				
			
				
				
				
				
				
			}
		}catch(FileNotFoundException e){
			e.printStackTrace();
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			if(br!=null){
				try{
					br.close();
					
				}catch(IOException e){
					e.printStackTrace();
				}
			}
		}
		
		/*
		for(ability x: abilitiesMapping)
			System.out.println(x);
		*/
		
		//parse types
		previous = 0;
		try{
			br = new BufferedReader(new FileReader(csvTypes));
			while((line = br.readLine())!=null){
				
				
				String [] t = line.split(splitBy);
				if(Integer.parseInt(t[0]) == previous)
					pokeTypes.get(previous -1).setType2(type.determineType(Integer.parseInt(t[1])));
				
				else{
					//first type
				pokeTypes.add(new type(Integer.parseInt(t[0]),type.determineType(Integer.parseInt(t[1])),null));
				previous++;
				}
				
				
				
			
				
				
				
				
				
			}
		}catch(FileNotFoundException e){
			e.printStackTrace();
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			if(br!=null){
				try{
					br.close();
					
				}catch(IOException e){
					e.printStackTrace();
				}
			}
		}
		
		/*
		for(type t: pokeTypes)
			System.out.println(t);
			*/
		
		
	
		
		
		//parse names
				
				int c = 0;
				try{
					br = new BufferedReader(new FileReader(csvNames));
					while((line = br.readLine())!=null){
						
						//comma is the seperator
						String []p = line.split(splitBy);
						
						String ab1;
						String ab2;
						String hiddenAb;
						
						//null handling
						if(abilities.get(c).getAbility1() == 0)
							ab1 = "null";
						else
							ab1 = abilitiesMapping.get(abilities.get(c).getAbility1()-1).getName();
						
						if(abilities.get(c).getAbility2() == 0)
							ab2 = "null";
						else
							ab2 = abilitiesMapping.get(abilities.get(c).getAbility2()-1).getName();
						
						if(abilities.get(c).getHiddenability() == 0)
							hiddenAb = "null";
						else
							hiddenAb = abilitiesMapping.get(abilities.get(c).getHiddenability()-1).getName();
				
						//oh gosh
						Pokemon t = new Pokemon(Integer.parseInt(p[0]),p[1].substring(0,1).toUpperCase() + p[1].substring(1),Integer.parseInt(p[2]),Integer.parseInt(p[3]),Integer.parseInt(p[4]),
								stats.get(c).getHp(),stats.get(c).getAttack(),stats.get(c).getDefense(),stats.get(c).getSpecialAttack(),stats.get(c).getSpecialDefense(),stats.get(c).getSpeed(),
								pokeTypes.get(c).getType1(),pokeTypes.get(c).getType2(),
								ab1,ab2,hiddenAb);
								
						PokemonDAO.saveOrUpdate(t);
						c++;
	
					}
				}catch(FileNotFoundException e){
					e.printStackTrace();
				}catch(IOException e){
					e.printStackTrace();
				}finally{
					if(br!=null){
						try{
							br.close();
							
						}catch(IOException e){
							e.printStackTrace();
						}
					}
				}
		
		
		
		
	}//end of main
		
	
		
}