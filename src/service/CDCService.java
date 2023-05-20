package service;


import bean.CDC;

import java.util.List;

/**
 * 学院专业班级的业务接口
 */
public interface CDCService {
    List<CDC> findAllCollege();

    List<CDC> findAllDepartment();

    List<CDC> findAllClass();

    List<CDC> findAll();
}
