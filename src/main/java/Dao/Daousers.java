package Dao;

import java.util.List;

import Model.User;

public interface Daousers extends Daobase<User>{
	public List<User> xuatlstuser() throws Exception;
	public User findid(int id);
	public void deleteuser(int id) throws Exception;
	public User login(String tk,String mk);
	public User finduser(String email,String username);
}
