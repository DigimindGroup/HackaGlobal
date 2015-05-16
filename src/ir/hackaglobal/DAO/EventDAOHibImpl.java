package ir.hackaglobal.DAO;

import ir.hackaglobal.Model.Event;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;


public class EventDAOHibImpl implements IEventDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Event> getEventsByCityId(int cityId, int from, int size)
			throws Exception {
		if(from <0 || size<=0){
			throw new Exception("Wrong Argument");
		}
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(
				"FROM Event e where (e.date >= :date and e.city.id=:city_id) ORDER BY e.date desc");
		query.setParameter("date", new Date());
		query.setParameter("city_id", cityId);
		query.setFirstResult(from);
		query.setMaxResults(size);
		List<Event> list = query.list();
		if (list.size() < 1) {
			throw new Exception("There is no Event!");
		}
		session.close();
		return list;
	}

	@Override
	public List<Event> getAllEvents(int from, int size) throws Exception {
		if(from <0 || size<=0){
			throw new Exception("Wrong Argument");
		}
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(
				"FROM Event e where (e.date >= :date) ORDER BY e.date desc");
		query.setParameter("date", new Date());
		query.setFirstResult(from);
		query.setMaxResults(size);
		List<Event> list = query.list();
		if (list.size() < 1) {
			throw new Exception("There is no Event!");
		}
		session.close();
		return list;
	}

	@Override
	public List<Event> getEventsByUserId(int userId, int from, int size)
			throws Exception {
		
		return null;
	}

}
