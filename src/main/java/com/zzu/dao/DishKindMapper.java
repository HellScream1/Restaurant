package com.zzu.dao;

import com.zzu.bean.DishKind;
import com.zzu.bean.DishKindExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DishKindMapper {
    long countByExample(DishKindExample example);

    int deleteByExample(DishKindExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DishKind record);

    int insertSelective(DishKind record);

    List<DishKind> selectByExample(DishKindExample example);

    DishKind selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DishKind record, @Param("example") DishKindExample example);

    int updateByExample(@Param("record") DishKind record, @Param("example") DishKindExample example);

    int updateByPrimaryKeySelective(DishKind record);

    int updateByPrimaryKey(DishKind record);
}