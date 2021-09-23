package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import Model.User;
import Utils.Connectjpa;

public class Daouserimplement implements Daousers{

	private Connectjpa conn;
	private List<User> lst;
	public Daouserimplement() {
		this.conn=new Connectjpa();
		lst=new ArrayList<User>();
	}
	@Override
	public List<User> xuatlstuser() throws Exception {
		TypedQuery<User> query=conn.getEntityManager().createNamedQuery("User.findAll",User.class);
		lst = query.getResultList();
		return lst;
	}
	@Override
	public User findid(int id){
		EntityManager em=conn.getEntityManager();
		User entity = em.find(User.class, id);
		return entity;
	}
	@Override
	public void deleteuser(int id) throws Exception{
		Connectjpa conn=new Connectjpa();	
		EntityManager manager=conn.getEntityManager();
		String hql="DELETE FROM User WHERE userid=:user_id";
		TypedQuery<User> query=manager.createQuery(hql,User.class);
		query.setParameter("user_id", id);
		query.executeUpdate();
		/*try {
			System.out.println(id);
			User entity  = this.findid(id);
			manager.getTransaction().begin();
			manager.remove(entity);
			manager.getTransaction().commit();
			System.out.println("hello");
		} catch (Exception e) {
			manager.getTransaction().rollback();
			throw new RuntimeException(e);
		}*/
	}
	@Override
	public User login(String tk, String mk){
		User u=new User();
		EntityManager em=conn.getEntityManager();
		List<User> lst=new ArrayList<User>();
			String hql = "SELECT u FROM User u WHERE u.username = :user_name";
		TypedQuery<User> query = em.createQuery(hql,User.class);
		query.setParameter("user_name", tk);
		u =  query.getSingleResult();
			return u;
		}
	
	@Override
	public User finduser(String email, String username){
		User u=new User();
		
		try {
			SessionFactory factory=new Configuration().configure().buildSessionFactory();
			Session session=factory.openSession();
			String hql = "SELECT * FROM users WHERE username = :user_name AND email=:email_id";
		javax.persistence.Query query = session.createQuery(hql);
		query.setParameter("user_name", username);
		query.setParameter("pass_word", email);
		lst = query.getResultList();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

}
