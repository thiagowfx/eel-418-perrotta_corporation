package com.thiagoperrotta.model;

import java.io.Serializable;

public class Product implements Serializable {

    String name;
    String description;
    Money price;
    // TODO: image

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Money getPrice() {
        return price;
    }

    public void setPrice(Money price) {
        this.price = price;
    }

    public Product(String name, String description, Money price) {
        this.name = name;
        this.description = description;
        this.price = price;
    }
}
