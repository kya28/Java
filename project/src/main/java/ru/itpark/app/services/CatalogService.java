package ru.itpark.app.services;


import ru.itpark.app.models.Basket;
import ru.itpark.app.models.Product;
import ru.itpark.app.models.User;

import java.util.List;

public interface CatalogService {
    List<Product> getProducts(Boolean sort, String by, Boolean desc);

    void addToBasket(Basket product);
}
