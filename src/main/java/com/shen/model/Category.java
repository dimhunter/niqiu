package com.shen.model;

/**
 * Created by shenge on 2015/11/7.
 */
public class Category {

    private int id;
    private String name;
    //desc和mysql关键字冲突，所以用全称。
    private String description;
    private int part_id;

    public int getPart_id() {
        return part_id;
    }

    public void setPart_id(int part_id) {
        this.part_id = part_id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
}
