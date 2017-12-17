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

public class AttackDAO {

	public static void saveOrUpdate(Attack a){

		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		session.saveOrUpdate(a);
		session.getTransaction().commit();
		session.close();

	}

	public static Attack retrieve(String id){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		Attack a = session.get(Attack.class, id);
		session.getTransaction().commit();
		session.close();

		return a;
	}

	public static void delete(Attack a){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		session.remove(a);
		session.getTransaction().commit();
		session.close();
	}
	
	public static List<Attack> getEverything(){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		List<Attack> returnList = new ArrayList<Attack>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM Attack");
			
			List list = query.list();
			for (Iterator iterator = list.iterator(); iterator.hasNext();){
				Attack a = (Attack) iterator.next();
				returnList.add(a);
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
		
		String csv = "src/PokemonDB/pokemonMoves.csv";
		BufferedReader br = null;
		String line = "";
		String splitBy = ",";
		
		try{
			br = new BufferedReader(new FileReader(csv));
			while((line = br.readLine())!=null){
				//comma is the seperator
				String []attackSplit = line.split(splitBy);
				
				
				//check if blank
				for(int i = 0; i < attackSplit.length;++i){
					if(attackSplit[i].isEmpty())
						attackSplit[i] = "0";
						
					
				}
				
				//make temp attack to store
				Attack temp = new Attack(Integer.parseInt(attackSplit[0]),attackSplit[1],Integer.parseInt(attackSplit[2]),Integer.parseInt(attackSplit[3])
						,Integer.parseInt(attackSplit[4]),Integer.parseInt(attackSplit[5]),Integer.parseInt(attackSplit[6]),Integer.parseInt(attackSplit[7]),Integer.parseInt(attackSplit[8])
						,Integer.parseInt(attackSplit[9]),Integer.parseInt(attackSplit[10]),Integer.parseInt(attackSplit[11]),Integer.parseInt(attackSplit[12]),
						Integer.parseInt(attackSplit[13]),Integer.parseInt(attackSplit[14]));
				
				//update/save to the DATABASE
				AttackDAO.saveOrUpdate(temp);
				
				
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
		
	}
		
}