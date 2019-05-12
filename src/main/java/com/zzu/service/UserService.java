package com.zzu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzu.bean.Address;
import com.zzu.bean.User;
import com.zzu.bean.UserExample;
import com.zzu.dao.UserMapper;

@Service
public class UserService {
	@Autowired
	private UserMapper uMapper;

	public List<User> isUser(String email, String pwd) {
		UserExample example = new UserExample();
		example.createCriteria().andEmailEqualTo(email).andPwdEqualTo(pwd);
		List<User> users = uMapper.selectByExample(example);
		return users;
	}
	
	public boolean CountEmail(String email) {
		UserExample example=new UserExample();
		example.createCriteria().andEmailEqualTo(email);
		long num=uMapper.countByExample(example);
		 if(num==0) return true;
		 return false;
	}
	
	public void insertUser(User user) {
		uMapper.insertSelective(user);
	}
	
	public void updateAddress(User user) {
		uMapper.updateByPrimaryKeySelective(user);
	}
	public void updatePwd(User user) {
		uMapper.updateByPrimaryKey(user);
	}
	
}
