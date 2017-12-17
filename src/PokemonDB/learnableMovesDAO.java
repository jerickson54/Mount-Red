package PokemonDB;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class learnableMovesDAO {
	
	public static void saveOrUpdate(learnableMoves p){

		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		session.saveOrUpdate(p);
		session.getTransaction().commit();
		session.close();

	}

	public static learnableMoves retrieve(int id){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		learnableMoves p = session.get(learnableMoves.class, id);
		session.getTransaction().commit();
		session.close();

		return p;
	}

	public static void delete(learnableMoves p){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		session.remove(p);
		session.getTransaction().commit();
		session.close();
	}
	
	public static List<Attack> getLearnableMoves(int pokeId){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		List<Attack> returnList = new ArrayList<Attack>();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM learnableMoves WHERE"
					+ " pokeId = :pokeId");
			query.setParameter("pokeId", pokeId);
			
			
			List list = query.list();
			for (Iterator iterator = list.iterator(); iterator.hasNext();){
				learnableMoves movesList = (learnableMoves) iterator.next();
				
				Query q2 = session.createQuery("FROM Attack WHERE"
						+ " id = :id");
				q2.setParameter("id", movesList.getMoveid());
				List list2 = q2.list();
				for (Iterator iterator2 = list2.iterator(); iterator2.hasNext();){
					Attack a = (Attack) iterator2.next();
					
					returnList.add(a);
				}
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
		
		String csvLearnableMoves = "src/PokemonDB/learnableMoves.csv";
		int previous;
		
		
		Set <learnableMoves> noDuplicatesPlease = new HashSet<learnableMoves>();
		//make sure you override equals and hashcode. otherwise comparison for set does not work
	
		
		BufferedReader br = null;
		String line = "";
		String splitBy = ",";
		
		//parse learnable moves
		//OHHHHHH BOY

		
				
				try{
					br = new BufferedReader(new FileReader(csvLearnableMoves));
					while((line = br.readLine())!=null){
						
						//pokemon_id,version id, move id,pokemon move method id, level, order
						String [] lm = line.split(splitBy);
						
						//also need proper version id
						//18 represents ultra sun and moon
						//16 is oras. for some reason move tutor attacks dont carry through -_-
						//now i have to throw everything into a set....
						if(Integer.parseInt(lm[1]) == 18 || Integer.parseInt(lm[1]) == 16)
							noDuplicatesPlease.add(new learnableMoves(Integer.parseInt(lm[0]),Integer.parseInt(lm[2])));
						
							
							
						
														
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
				
				for(learnableMoves l: noDuplicatesPlease)
					learnableMovesDAO.saveOrUpdate(l);
					
		
		/*
		learnableMoves pp = new learnableMoves(4,44);
		learnableMoves stupid = new learnableMoves(4,44);
		if(pp.equals(stupid))
			System.out.println("Equal");
			*/
		
	}
}
