package ru.itpark.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.itpark.app.forms.BasketForm;
import ru.itpark.app.models.Basket;
import ru.itpark.app.models.Product;
import ru.itpark.app.repositories.BasketRepository;
import ru.itpark.app.repositories.ProductsRepository;
import ru.itpark.app.repositories.UsersRepository;

import java.util.List;

@Service
public class BasketServiceImpl implements BasketService {

    @Autowired
    private BasketRepository basketRepository;
    @Override
    public List<Basket> getBasket() {
        return basketRepository.findAll();
    }

    @Override
    public void basket(BasketForm form) {
        Basket basket = Basket.builder()
                .id(form.getId())
                .name(form.getName())
                .price(form.getPrice())
                .type(form.getType())
                .image(form.getImage())
                .build();
        basketRepository.save(basket);
    }


}
