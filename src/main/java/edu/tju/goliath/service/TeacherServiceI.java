package edu.tju.goliath.service;

import edu.tju.goliath.entity.Teacher;

public interface TeacherServiceI {
	int deleteTeacherById(Integer teacherid);

    int addTeacher(Teacher record);

    int addTeacherSelective(Teacher record);

    Teacher getTeacherById(Integer teacherid);

    int updateTeacherByIdSelective(Teacher record);

    int updateTeacherById(Teacher record);

}
