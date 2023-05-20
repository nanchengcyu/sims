package dao;

import bean.Photo;

public interface PhotoDao {
    void addPhoto(Photo photo);

    Photo findPhotoByPhotoId(String id);

    void updatePhoto(Photo photo);
}
