package dao;

import bean.Course;

public interface CourseDao {
    void addOptionalCourse(Course course);

    Course findSelectCourseByCourseId(String cid);

    void deleteServiceById(String cid);
}
