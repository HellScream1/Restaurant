package com.zzu.dao;

import com.zzu.bean.DishOrder;
import com.zzu.bean.DishOrderExample;
import com.zzu.bean.DishOrderKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DishOrderMapper {
    long countByExample(DishOrderExample example);

    int deleteByExample(DishOrderExample example);

    int deleteByPrimaryKey(DishOrderKey key);

    int insert(DishOrder record);

    int insertSelective(DishOrder record);

    List<DishOrder> selectByExample(DishOrderExample example);

    DishOrder selectByPrimaryKey(DishOrderKey key);

    int updateByExampleSelective(@Param("record") DishOrder record, @Param("example") DishOrderExample example);

    int updateByExample(@Param("record") DishOrder record, @Param("example") DishOrderExample example);

    int updateByPrimaryKeySelective(DishOrder record);

    int updateByPrimaryKey(DishOrder record);
}