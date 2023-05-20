package service;

import bean.SelectCourse;

import java.util.List;

public interface SelectCourseService {
    List<SelectCourse> findStudentSelectedCourseByCourseId(String cid);

    SelectCourse findScoreByCourseIdAndStudentId(String cid,String sid);

    void upDateScoreByCidAndSid(String cid, String sid, String sScore);
}
