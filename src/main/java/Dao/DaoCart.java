package Dao;

import java.util.List;

import Model.Cart;

public interface DaoCart extends Daobase<Cart>{
	public List<Cart> showcartbyid(int userid);
	public Double getallpricebyid(int userid);
}
