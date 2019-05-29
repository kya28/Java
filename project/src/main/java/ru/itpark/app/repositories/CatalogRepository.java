package ru.itpark.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itpark.app.models.Product;
import ru.itpark.app.models.User;

import java.util.List;

public interface CatalogRepository extends JpaRepository<Product, Long> {
    List<Product> findAllByOrderByPriceAsc();
    List<Product> findAllByOrderByPriceDesc();
    List<Product> findAllByType(String type);
    List<Product> findAllByRichness(String richness);

}
