package Dao;

import java.util.List;

import Model.Food;

public interface Daofood extends Daobase<Food>{
	public Food findfood(int id);
	public List<Food> getall()throws Exception;
}
