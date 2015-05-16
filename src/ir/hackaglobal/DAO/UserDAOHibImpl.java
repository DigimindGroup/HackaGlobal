package ir.hackaglobal.DAO;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import ir.hackaglobal.Model.User;

public class UserDAOHibImpl implements IUserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public void addUser(User user) throws Exception {
		if (!checkUsernameAvalibility(user.getUsername())) {
			throw new Exception("Username is already exist");
		}
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(user);
		tx.commit();
		session.close();
	}

	@Override
	@Transactional
	public int isUserPassCorrect(String username, String password)
			throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(
				"select id FROM User u WHERE (u.username=:user_name and u.password=:user_pass)");
		query.setParameter("user_name", username);
		query.setParameter("user_pass", password);

		int userId= (int) query.uniqueResult();
		
		if (userId <1) {
			throw new Exception("Username and password is incorrect!");
		}
		session.close();
		return userId;

	}

	@Override
	public User getUserById(int id) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(
				"FROM User u WHERE u.id=:id");
		query.setParameter("id", id);
		List<User> list = query.list();

		if (list.size() < 1) {
			throw new Exception("User not found!");
		}
		User user = list.get(0);
		session.close();
		return user;
	}

	@Override
	@Transactional
	public User getUserByUsername(String username) throws UsernameNotFoundException {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(
				"FROM User u WHERE u.username=:user_name");
		query.setParameter("user_name", username);
		List<User> list = query.list();
		if (list.size() < 1) {
			throw new UsernameNotFoundException("Username Not found");
		}
		User user = list.get(0);
		session.close();
		return user;

	}
	
	@Override
	@Transactional
	public boolean checkUsernameAvalibility(String username) {
		try{
			getUserByUsername(username);
		}catch(UsernameNotFoundException e){
			return true;
		}
		
		return false;
	}

	@Override
	public void registerUserInEvent(int userid, int eventId) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
