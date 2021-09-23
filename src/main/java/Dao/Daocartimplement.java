package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Model.Cart;
import Utils.Connectjpa;

public class Daocartimplement implements DaoCart{

	private Cart c;
	private Connectjpa conn;
	private EntityManager entity;
	private List<Cart> lst;
	public Daocartimplement() {
		this.c=new Cart();
		this.conn=new Connectjpa();
		this.entity=conn.getEntityManager();
		this.lst=new ArrayList<Cart>();
	}
	@Override
	public List<Cart> showcartbyid(int userid) {
		String hql="SELECT c FROM Cart c WHERE userid=: user_id";
		TypedQuery<Cart> query=entity.createQuery(hql,Cart.class);
		query.setParameter("user_id",userid);
		this.lst=query.getResultList();
		return this.lst;
	}

	@Override
	public Double getallpricebyid(int userid) {
		Double gia;
		String hql="SELECT SUM(gia) FROM Cart c WHERE userid=:user_id";
		TypedQuery<Cart> query=entity.createQuery(hql,Cart.class);
		query.setParameter("user_id",userid);
		this.c=query.getSingleResult();
		return c.getGia();
				
	}

}
