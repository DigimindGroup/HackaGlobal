package ir.hackaglobal.DAO;

import ir.hackaglobal.Model.Event;

import java.util.List;

public interface IEventDAO {

	public List<Event> getEventsByCityId(int cityId,int from, int size)throws Exception;
	public List<Event> getAllEvents(int from, int size)throws Exception;
	public List<Event> getEventsByUserId(int userId,int from, int size)throws Exception;
}
