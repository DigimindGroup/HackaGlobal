package ir.hackaglobal.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ir.hackaglobal.DAO.IUserDAO;
import ir.hackaglobal.Model.User;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	@Autowired
	public IUserDAO userDao;

	@RequestMapping(method = RequestMethod.GET, value = "/login.do")
	public ModelAndView loginUser(
			@RequestParam(required = true, value = "username") String username,
			@RequestParam(required = true, value = "password") String password,
			HttpServletRequest request, HttpServletResponse response,HttpSession session)
			{
		ModelAndView model = new ModelAndView("Login.jsp");
		if(session.getAttribute("user")!=null){
			model.addObject("authenticated", true);
			model.addObject("user", (User)session.getAttribute("user"));
		}else{
			try {
				int userid = userDao.isUserPassCorrect(username, DigestUtils.md5Hex(password));
				
				User tmpUser = userDao.getUserById(userid);
				System.out.println(userid);
				tmpUser.setPassword("");
				
				session.setAttribute("user", tmpUser);
				model.addObject("user", tmpUser);
			} catch (Exception e) {
				model.addObject("msg", e.getMessage());
			}
		}
		return model;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/signup.do")
	public ModelAndView signupUser(
			@RequestParam(required = true, value = "username") String username,
			@RequestParam(required = true, value = "password") String password,
			@RequestParam(required = true, value = "firstName") String firstName,
			@RequestParam(required = true, value = "lastName") String lastName,
			@RequestParam(required = true, value = "email") String email,
			@RequestParam(required = false, value = "mobile") String mobile,
			HttpServletRequest request, HttpServletResponse response,HttpSession session)
			{
		
		ModelAndView model = new ModelAndView("Login.jsp");
		
		if(session.getAttribute("user")!=null){
			model.addObject("authenticated", true);
			model.addObject("user", (User)session.getAttribute("user"));
		}else{
			try {
				User tmpUser = new User();
				tmpUser.setUsername(username);
				tmpUser.setPassword(DigestUtils.md5Hex(password));
				tmpUser.setFirstName(firstName);
				tmpUser.setLastName(lastName);
				tmpUser.setEmail(email);
				tmpUser.setMobile(mobile);
				tmpUser.setRole("NORMAL");
				userDao.addUser(tmpUser);
				model.addObject("msg", "User has registerd Successfully");
			} catch (Exception e) {
				model.addObject("msg", e.getMessage());
			}
		}
		return model;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/registerInEvent.do")
	public ModelAndView registerUserInEvent(
			@RequestParam(required = true, value = "eventId") int eventId,
			HttpServletRequest request, HttpServletResponse response,HttpSession session)
			{
		ModelAndView model = new ModelAndView("EventRegistration.jsp");
		if(session.getAttribute("user")!=null){
			model.addObject("authenticated", true);
			model.addObject("user", (User)session.getAttribute("user"));
			User tmpUser=(User)session.getAttribute("user");
			try {
				userDao.registerUserInEvent(tmpUser.getId(), eventId);
			} catch (Exception e) {
				model.addObject("msg", e.getMessage());
			}
		}else{
			model.addObject("msg", "Please login!");
		}
		return model;
	}
	

}
