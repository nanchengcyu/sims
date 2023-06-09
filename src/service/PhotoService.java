package service;

import bean.Photo;

public interface PhotoService {
    void addPhoto(Photo photo);

    Photo findPhotoByPhotoId(String id);

    void updatePhoto(Photo photo);
}
