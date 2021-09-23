package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import Model.Store;
import Utils.Connectjpa;

public class Daostoreimplement implements Daostore{

	private Store st;
	private List<Store> lststore;
	private Connectjpa conn;
	private EntityManager entity;
	public Daostoreimplement() {
		this.st=new Store();
		this.lststore=new ArrayList<Store>();
		this.conn=new Connectjpa();
		entity=conn.getEntityManager();
	}
	@Override
	public Store getaddress(int idstore) {
		//String hql="SELECT s Store s WHERE idstore =: id_store";
		//TypedQuery<Store> query= this.entity.createQuery(hql,Store.class);
		//query.setParameter("id_store", idstore);
		this.st=entity.find(Store.class, idstore);
		//this.st=query.getSingleResult();
		return this.st;
	}

	@Override
	public List<Store> getall() {
		TypedQuery<Store> query= this.entity.createQuery("Store.findAll",Store.class);
		this.lststore=query.getResultList();
		return this.lststore;
	}

}
