package dao;

import bean.CDC;

import java.util.List;

public interface CDCDao {
    List<CDC> findAllCollege();

    List<CDC> findAllDepartment();

    List<CDC> findAllClass();

    List<CDC> findAll();
}
