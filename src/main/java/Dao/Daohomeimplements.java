package Dao;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import Model.Home;
import Utils.Connectjpa;

public class Daohomeimplements implements Daohome{

	private ArrayList<Home> lsthome;
	private Connectjpa conn;
	private EntityManager manager;
	public Daohomeimplements() {
		this.lsthome=new ArrayList<Home>();
	}
	@Override
	public ArrayList<Home> getall() throws Exception {
		TypedQuery<Home> query=conn.getEntityManager().createNamedQuery("Home.findAll",Home.class);
		lsthome = (ArrayList<Home>) query.getResultList();
		return lsthome;
	}

}
