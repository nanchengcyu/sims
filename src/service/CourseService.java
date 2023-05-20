package service;

import bean.Course;

public interface CourseService {
    void addOptionalCourse(Course course);

    Course findSelectCourseByCourseId(String cid);

    void deleteServiceById(String cid);
}
