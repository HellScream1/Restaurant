package com.zzu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.zzu.bean.Dish;
import com.zzu.bean.Msg;
import com.zzu.bean.Orders;
import com.zzu.bean.QueryHistoryOrder;
import com.zzu.bean.User;
import com.zzu.service.DishService;
import com.zzu.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService service;
	@Autowired
	private DishService dservice;

	@ResponseBody
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public Msg isUser(@RequestParam("username") String email, @RequestParam("password") String pwd,
			HttpSession session) {
		List<User> user = service.isUser(email, pwd);
		if (user.size() == 1) {
			session.setAttribute("loginInfo", user.get(0));
			return Msg.success().add("userInfo", user.get(0));
		} else
			return Msg.fail();
	}

	@RequestMapping("/invalidate")
	public String invalidate(HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		session.invalidate();
		System.out.println("注销成功");
		return "redirect:homePage.jsp";
	}

	@ResponseBody
	@RequestMapping("/validateEmail")
	public Msg validateEmail(@RequestParam("email") String email) {
		Boolean flag = service.CountEmail(email);
		if (flag)
			return Msg.success();
		return Msg.fail();
	}

	@RequestMapping("/register")
	public String register(HttpServletRequest request) {
		Map<String, String[]> parameterMap = request.getParameterMap();
		parameterMap.forEach((k, v) -> {
			System.out.println(k + Arrays.toString(v));
		});
		User user = new User();
		try {
			user.setGender(parameterMap.get("gender")[0]);
			user.setName(parameterMap.get("name")[0]);
			user.setPhone(parameterMap.get("tel")[0]);
			user.setEmail(parameterMap.get("email")[0]);
			user.setPwd(parameterMap.get("password")[0]);
		} catch (Exception e) {
			System.out.println("因为值取不到导致的空指针异常");
		}
		service.insertUser(user);
		return "redirect:homePage.jsp";
	}

	@RequestMapping(value = "addAddress", method = RequestMethod.POST)
	public String addAddress(HttpServletRequest request, @SessionAttribute("loginInfo") User user) {
		Map<String, String[]> map = request.getParameterMap();

		try {
			StringBuilder sBuilder = new StringBuilder();
			sBuilder.append(map.get("province1")[0]).append(map.get("city1")[0]).append(map.get("district1")[0]);
			System.out.println(sBuilder);
			user.setAddrstring(sBuilder.toString());
			user.setDeacription(map.get("adr")[0]);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.err.println("因为值取不到导致的空指针异常");
		}
		service.updateAddress(user);
		return "redirect:homePage.jsp";
	}

	@ResponseBody
	@RequestMapping(value = "/validateUpdatePwd", method = RequestMethod.POST)
	public Msg validateUpdatePwd(String rawp, String newp,
			@SessionAttribute(value = "loginInfo", required = false) User user, HttpSession session) {
		System.out.println(rawp + ":  " + newp);
		try {
			String yuanp = user.getPwd();
			if (!yuanp.equals(rawp))
				return Msg.fail();
			else {
				user.setPwd(newp);
				service.updatePwd(user);
				session.invalidate();
				return Msg.success();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@ResponseBody
	@RequestMapping("queryOrders/{id}")
	public List<QueryHistoryOrder> getOrderHis(@PathVariable("id") int userid) {
		List<QueryHistoryOrder> queryHistoryOrders=new ArrayList<>();
		List<Orders> orders = dservice.getOrderByUserId(userid);
		for (int i = 0; i < orders.size(); i++) {
			List<Dish> dishees = dservice.getDishsByOrderId(orders.get(i).getId());
			List<String> names = new ArrayList<>();
			List<String> prices = new ArrayList<>();
			List<String> nums = dservice.getNumsByOrderId(orders.get(i).getId());
			for (Dish dish : dishees) {
				names.add(dish.getName());
				prices.add(String.valueOf(dish.getPrice()));

			}

			QueryHistoryOrder queryHistoryOrder = new QueryHistoryOrder(orders.get(i).getDate(),
					orders.get(i).getPrice(), names, prices, nums);
			queryHistoryOrders.add(queryHistoryOrder);
		}
		return queryHistoryOrders;
	}
}
