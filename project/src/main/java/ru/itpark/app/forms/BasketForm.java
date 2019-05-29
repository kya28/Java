package ru.itpark.app.forms;

import lombok.Data;

@Data
public class BasketForm {
    private Long id;
    private String name;
    private Double price;
    private String type;
    private String image;
}
