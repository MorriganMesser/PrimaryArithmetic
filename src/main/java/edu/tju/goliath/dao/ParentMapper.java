package edu.tju.goliath.dao;

import edu.tju.goliath.entity.Parent;

public interface ParentMapper {
    int deleteByPrimaryKey(Integer parentid);

    int insert(Parent record);

    int insertSelective(Parent record);

    Parent selectByPrimaryKey(Integer parentid);

    int updateByPrimaryKeySelective(Parent record);

    int updateByPrimaryKey(Parent record);
}