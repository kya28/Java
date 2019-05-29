package ru.itpark.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itpark.app.models.Basket;
import ru.itpark.app.models.Product;
import ru.itpark.app.models.User;
import ru.itpark.app.repositories.BasketRepository;
import ru.itpark.app.repositories.CatalogRepository;
import ru.itpark.app.repositories.ProductsRepository;

import java.util.List;

@Service
public class CatalogServiceImpl implements CatalogService {


    @Autowired
    private CatalogRepository catalogRepository;
    private Basket basket;

    @Override
    public List<Product> getProducts(Boolean sort, String by, Boolean desc) {
        if (sort == null || !sort) {
            return catalogRepository.findAll();
        } else {
            if (by != null) {
                switch (by) {
                    case "price":
                        if (desc == null || !desc) {
                            return catalogRepository.findAllByOrderByPriceAsc();
                        } else {
                            return catalogRepository.findAllByOrderByPriceDesc();
                        }
                        case "creamy":
                                return catalogRepository.findAllByType("creamy" );
                        case "fruit":
                                return catalogRepository.findAllByType("fruit");
                        case "sherbet":
                                return catalogRepository.findAllByType("sherbet");
                        case "melorin":
                                return catalogRepository.findAllByType("melorin");
                        case "0":
                            return catalogRepository.findAllByRichness("0");
                        case "10":
                            return catalogRepository.findAllByRichness("10");
                        case "20":
                            return catalogRepository.findAllByRichness("20");
                        case "30":
                            return catalogRepository.findAllByRichness("30");
                }
            }
        }
            return catalogRepository.findAll();
        }
    @Autowired
    private BasketRepository basketRepository;

    @Override
    public void addToBasket(Basket product) {
        basketRepository.save(product);
    }
}


