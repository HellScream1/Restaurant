package com.zzu.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.zzu.bean.Dish;
import com.zzu.bean.DishOrder;
import com.zzu.bean.Msg;
import com.zzu.bean.Orders;
import com.zzu.bean.User;
import com.zzu.service.DishService;

@Controller
public class DishController {
	private List<Dish> dishs;
	@Autowired
	private DishService service;

	/**
	 * 返回所有菜品的列表
	 * 
	 * @return
	 */
	@RequestMapping("/dishes")
	@ResponseBody
	public Msg getDishes() {
		List<Dish> dishes = service.getDishes();
		return Msg.success().add("dishes", dishes);
	}

	@ResponseBody
	@RequestMapping("/dishes/{kind}")
	public Msg getDishByKind(@PathVariable("kind") Integer kind) {
		List<Dish> dishes = service.getDishByKind(kind);
		return Msg.success().add("dishes", dishes);
	}

	/**
	 * 页面跳转请求
	 * 
	 * @return
	 */
	@RequestMapping("/car")
	public String DealCar() {
		return "myCar";
	}

	/**
	 * 订单处理
	 * 
	 * @param car
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/dealCar")
	public Msg dealCar(@RequestParam("car") String car) {

		dishs = new ArrayList<>();
		if (!"".equals(car)) {
			try {
				car = car.substring(0, car.length() - 1);
				String[] cars = car.split(",");

				for (String s : cars) {
					Dish dish = service.getDishById(Integer.parseInt(s));
					dishs.add(dish);
				}
			} catch (Exception e) {
				System.out.println("出现异常");
			}
		}
		return Msg.success().add("dishs", dishs);
	}
	@RequestMapping(value="addOrder",method=RequestMethod.POST)
	public String addOrder(String num,BigDecimal price,@SessionAttribute("loginInfo") User user) {
		int id=user.getId();
		Date date=new Date();
		
		Orders order=new Orders();
		order.setDate(date);
		order.setUserid(id);
		order.setPrice(price);
		service.insertOrder(order);
		int orderId=order.getId();
		String[] nums=num.split(",");
		
		for(int i=0;i<dishs.size();i++) {
			DishOrder dishOrder=new DishOrder();
			dishOrder.setDishid(dishs.get(i).getId());
			dishOrder.setOrderid(orderId);
			dishOrder.setNum(Integer.parseInt(nums[i]));
			service.insertDishOrder(dishOrder);
		}
		return "car";	
	}

}
