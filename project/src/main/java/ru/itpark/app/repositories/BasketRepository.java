package ru.itpark.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itpark.app.models.Basket;
import ru.itpark.app.models.Product;
import ru.itpark.app.models.User;

import java.util.List;

public interface BasketRepository extends JpaRepository<Basket, Long> {

}
