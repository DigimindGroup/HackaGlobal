package ir.hackaglobal.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ir.hackaglobal.DAO.ICityDAO;
import ir.hackaglobal.DAO.IEventDAO;
import ir.hackaglobal.Model.City;
import ir.hackaglobal.Model.Event;
import ir.hackaglobal.Model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@Autowired
	public ICityDAO cityDao;
	@Autowired
	public IEventDAO eventDao;
	
	@RequestMapping(method = RequestMethod.GET, value = "/main.do")
	public ModelAndView getCity(
			HttpServletRequest request, HttpServletResponse response,HttpSession session)
			{
		ModelAndView model = new ModelAndView("Main.jsp");
		if(session.getAttribute("user")!=null){
			model.addObject("authenticated", true);
			model.addObject("user", (User)session.getAttribute("user"));
		}
		
		try {
			List<City> cityList = cityDao.getAllCity(0, 50);
		
			model.addObject("cityList", cityList);
		} catch (Exception e) {
			model.addObject("msg", e.getMessage());
		}
		
		try {
			List<Event> eventList = eventDao.getAllEvents(0, 3);
			model.addObject("eventList", eventList);
		} catch (Exception e) {
			model.addObject("msg", e.getMessage());
		}
		return model;
	}
}
