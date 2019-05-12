package com.zzu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.cj.x.protobuf.MysqlxCrud.Order;
import com.zzu.bean.Dish;
import com.zzu.bean.DishExample;
import com.zzu.bean.DishOrder;
import com.zzu.bean.DishOrderExample;
import com.zzu.bean.Orders;
import com.zzu.bean.OrdersExample;
import com.zzu.dao.DishMapper;
import com.zzu.dao.DishOrderMapper;
import com.zzu.dao.OrdersMapper;
@Service
public class DishService {
	@Autowired
	private DishMapper dishMapper;
	@Autowired
	private OrdersMapper omapper;
	@Autowired
	private DishOrderMapper dishOrderMapper;
	public List<Dish> getDishes(){
		return dishMapper.selectByExample(null);
	}
	public List<Dish> getDishByKind(Integer kind){
		DishExample example=new DishExample();
		example.createCriteria().andKindEqualTo(kind);
		
		return dishMapper.selectByExample(example);
	}
	public Dish getDishById(Integer id) {
		return dishMapper.selectByPrimaryKey(id);
	}
	public void insertOrder(Orders order) {
		omapper.insertSelective(order);
	}
	public void insertDishOrder(DishOrder dishOrder) {
		dishOrderMapper.insert(dishOrder);
	}
	
	public List<Orders> getOrderByUserId(int userid) {
		OrdersExample example=new OrdersExample();
		example.createCriteria().andUseridEqualTo(userid);
		return omapper.selectByExample(example);
	}
	
	public List<Dish> getDishsByOrderId(int id){
		DishOrderExample example=new DishOrderExample();
		List<Dish> dishs=new ArrayList<>();
		example.createCriteria().andOrderidEqualTo(id);
		List<DishOrder> dishOrders = dishOrderMapper.selectByExample(example);
		for (DishOrder dishOrder : dishOrders) {
			
			dishs.add(dishMapper.selectByPrimaryKey(dishOrder.getDishid()));
		}
		return dishs;
	}
	public List<String> getNumsByOrderId(int id){
		DishOrderExample example=new DishOrderExample();
		 List<String> nums=new ArrayList<>();
		List<Dish> dishs=new ArrayList<>();
		example.createCriteria().andOrderidEqualTo(id);
		List<DishOrder> dishOrders = dishOrderMapper.selectByExample(example);
		for (DishOrder dishOrder : dishOrders) {
			
			nums.add(String.valueOf(dishOrder.getNum()));
		}
		return nums;
	}
}
