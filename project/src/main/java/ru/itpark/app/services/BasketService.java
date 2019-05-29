package ru.itpark.app.services;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import ru.itpark.app.forms.BasketForm;
import ru.itpark.app.models.Basket;
import ru.itpark.app.models.Product;

import java.util.List;
@Service
public interface BasketService {
    void basket(BasketForm form);
    List<Basket> getBasket();
}
