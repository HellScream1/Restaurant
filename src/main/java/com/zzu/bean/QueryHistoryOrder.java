package com.zzu.bean;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class QueryHistoryOrder {
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	 private Date date;
	 private BigDecimal zongprice;
	 private List<String> names;
	 private List<String> prices;
	 private List<String> nums;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public BigDecimal getZongprice() {
		return zongprice;
	}
	public void setZongprice(BigDecimal zongprice) {
		this.zongprice = zongprice;
	}
	public List<String> getNames() {
		return names;
	}
	public void setNames(List<String> names) {
		this.names = names;
	}
	public List<String> getPrices() {
		return prices;
	}
	public void setPrices(List<String> prices) {
		this.prices = prices;
	}
	public List<String> getNums() {
		return nums;
	}
	public void setNums(List<String> nums) {
		this.nums = nums;
	}
	public QueryHistoryOrder(Date date, BigDecimal zongprice, List<String> names, List<String> prices,
			List<String> nums) {
		super();
		this.date = date;
		this.zongprice = zongprice;
		this.names = names;
		this.prices = prices;
		this.nums = nums;
	}
	 
}
