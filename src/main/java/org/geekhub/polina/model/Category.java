package org.geekhub.polina.model;

public class Category {
    private int id;
    private String name;

    private String src;
    private String description;
    private String image;

    private String bannerPhotoSrc;

    public String getBannerPhotoSrc() {
        return bannerPhotoSrc;
    }

    public void setBannerPhotoSrc(String bannerPhotoSrc) {
        this.bannerPhotoSrc = bannerPhotoSrc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
