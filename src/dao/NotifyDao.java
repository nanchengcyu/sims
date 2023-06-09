package dao;

import bean.Notify;

import java.util.List;

public interface NotifyDao {
    void add(Notify notify);

    List<Notify> findNotify();

    List<Notify> findAllNotify();

    void deleteNotifyById(String notifyid);

}
