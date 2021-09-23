package Dao;

import java.util.ArrayList;

import Model.Home;

public interface Daohome extends Daobase<Home>{
	public ArrayList<Home> getall() throws Exception;
}
