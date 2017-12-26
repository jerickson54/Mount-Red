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

public class itemDAO {

	public static void saveOrUpdate(item i){

		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		session.saveOrUpdate(i);
		session.getTransaction().commit();
		session.close();

	}

	public static item retrieve(int id){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		item i = session.get(item.class, id);
		session.getTransaction().commit();
		session.close();

		return i;
	}

	public static void delete(item i){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		session.beginTransaction();

		session.remove(i);
		session.getTransaction().commit();
		session.close();
	}
	
	public static List<item> getEverything(){
		Session session = HibernateUtil.SESSION_FACTORY.openSession();
		List<item> returnList = new ArrayList<item>();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("FROM item");
			
			List list = query.list();
			for (Iterator iterator = list.iterator(); iterator.hasNext();){
				item i = (item) iterator.next();
				returnList.add(i);
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
		
		String csv = "src/PokemonDB/items.csv";
		BufferedReader br = null;
		String line = "";
		String splitBy = ",";
		
		try{
			br = new BufferedReader(new FileReader(csv));
			while((line = br.readLine())!=null){
				//comma is the seperator
				String []itemSplit = line.split(splitBy);

				//12 13 17 46 44 15 42
				//may be some items i am missing
				//just obnoxious to have them all
				//update/save to the DATABASE
				if(Integer.parseInt(itemSplit[2]) == 12 || Integer.parseInt(itemSplit[2]) == 13 ||Integer.parseInt(itemSplit[2]) == 17 ||
						Integer.parseInt(itemSplit[2]) == 46 || Integer.parseInt(itemSplit[2]) == 44 || Integer.parseInt(itemSplit[2]) == 15 ||
						Integer.parseInt(itemSplit[2]) == 42)
				itemDAO.saveOrUpdate(new item(Integer.parseInt(itemSplit[0]),itemSplit[1].replace("-"," "),Integer.parseInt(itemSplit[2])));
				
				
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