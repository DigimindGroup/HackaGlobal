package ir.hackaglobal.DAO;

import org.springframework.security.core.userdetails.UsernameNotFoundException;

import ir.hackaglobal.Model.User;

public interface IUserDAO {
	
	public void addUser(User user)throws Exception;
	public void registerUserInEvent(int userid, int eventId)throws Exception;
	public int isUserPassCorrect(String username,String password)throws Exception;
	public User getUserById(int id)throws Exception;
	User getUserByUsername(String username) throws UsernameNotFoundException;
	boolean checkUsernameAvalibility(String username);
	
	
}
