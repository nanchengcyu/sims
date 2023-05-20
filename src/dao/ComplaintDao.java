package dao;

import bean.Complaint;

import java.util.List;

public interface ComplaintDao {
    List<Complaint> findAllComplaint();

    void addComplaint(Complaint complaint);
}
