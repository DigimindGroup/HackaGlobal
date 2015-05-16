package ir.hackaglobal.DAO;

import java.util.Date;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import ir.hackaglobal.Model.City;
import ir.hackaglobal.Model.Event;

public class CityDAOHibImpl implements ICityDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public City getCityByName(String cityName) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(
				"FROM City c where c.name=:city_name");
		query.setParameter("city_name", cityName);
		City tmpCity =(City) query.uniqueResult();
		if (tmpCity==null) {
			throw new Exception("There is no City with this name!");
		}
		Hibernate.initialize(tmpCity.getEvents());
		Hibernate.initialize(tmpCity.getOrganizers());
		
		session.close();
		return tmpCity;
	}

	@Override
	public City getCityByid(int cityId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<City> getAllCity(int from, int size) throws Exception {
		if(from <0 || size<=0){
			throw new Exception("Wrong Argument");
		}
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(
				"FROM City c");
		query.setFirstResult(from);
		query.setMaxResults(size);
		List<City> list = query.list();
		if (list.size() < 1) {
			throw new Exception("There is no City!");
		}
		session.close();
		return list;
	}

}
