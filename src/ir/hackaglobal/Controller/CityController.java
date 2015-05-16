package ir.hackaglobal.Controller;

import ir.hackaglobal.DAO.ICityDAO;
import ir.hackaglobal.DAO.IEventDAO;
import ir.hackaglobal.DAO.IUserDAO;
import ir.hackaglobal.Model.City;
import ir.hackaglobal.Model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CityController {
	@Autowired
	public IEventDAO eventDao;
	@Autowired
	public ICityDAO cityDao;
	
	@RequestMapping(method = RequestMethod.GET, value = "/hacka{cityName}.do")
	public ModelAndView getCity(
			@PathVariable String cityName,
			HttpServletRequest request, HttpServletResponse response,HttpSession session)
			{
		ModelAndView model = new ModelAndView("City.jsp");
		if(session.getAttribute("user")!=null){
			model.addObject("authenticated", true);
			model.addObject("user", (User)session.getAttribute("user"));
		}
		
		try {
			City tmpCity = cityDao.getCityByName(cityName);
			model.addObject("city", tmpCity);
		} catch (Exception e) {
			model.addObject("msg", e.getMessage());
		}
		return model;
	}
}
