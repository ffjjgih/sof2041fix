package Dao;

import java.util.List;

import Model.Store;

public interface Daostore extends Daobase<Store>{
	public Store getaddress(int idstore);
	public List<Store> getall();
}
