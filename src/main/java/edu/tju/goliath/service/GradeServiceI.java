package edu.tju.goliath.service;

import edu.tju.goliath.entity.Grade;

public interface GradeServiceI {
    int deleteGradeById(Integer gradeid);

    int addGrade(Grade record);

    int addGradeSelective(Grade record);

    Grade getGradeById(Integer gradeid);

    int updateGradeByIdSelective(Grade record);

    int updateGradeById(Grade record);

}