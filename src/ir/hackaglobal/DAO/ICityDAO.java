package ir.hackaglobal.DAO;

import java.util.List;

import ir.hackaglobal.Model.City;

public interface ICityDAO {
	public City getCityByName(String cityName)throws Exception;
	public City getCityByid(int cityId)throws Exception;
	public List<City> getAllCity(int from, int size)throws Exception;
}
