<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Глейси. Каталог товаров</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=cyrillic" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=cyrillic">
    <link rel="stylesheet" href="../static/css/bootstrap.css">
    <link rel="stylesheet" href="../static/css/normalize.css">
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
<input type="radio" id="btn-1" name="toggle" checked>
<input type="radio" id="btn-2" name="toggle">
<input type="radio" id="btn-3" name="toggle">
<div class="container">
    <header class="page-header center clearfix">
        <nav class="main-navigation clearfix">
            <div class="header-logo">
                <img src="../static/img/logo.png" width="154" height="64" alt="GllacyShop">
            </div>
            <ul class="main-menu">
                <li class="main-menu_item main-menu_catalog">
                    <a href="#">Каталог</a>
                    <div class="items_block">
                        <ul class="sub-menu">
                            <li class="sub-menu_item sub-menu_new"><a href="latest.ftl"><b>Новинки</b></a></li>
                            <li class="sub-menu_item sub-menu_cream"><a href="catalog.ftl">Сливочное</a></li>
                            <li class="sub-menu_item"><a href="#">Щербеты</a></li>
                            <li class="sub-menu_item"><a href="#">Фруктовый лёд</a></li>
                            <li class="sub-menu_item sub-menu_melorin"><a href="#">Мелорин</a></li>
                        </ul>
                    </div>
                <li class="main-menu_item">
                    <a href="#">Доставка и оплата</a>
                </li>
                <li class="main-menu_item">
                    <a href="about_company.ftl">О Компании</a>
                </li>
            </ul>
        </nav>



        <div class="header-contacts">
            <span>C 10 до 20, ежедневно</span>
            <a href="tel:+78124502525">8 812 450-25-25</a>
        </div>
    </header>

    <main class="content center center-content">
        <header class="shop-header">
            <nav class="breadcrumbs">
                <ul>
                    <li><a href="index.ftl">Главная</a></li>
                    <li><a href="#">Каталог</a></li>
                    <li>Сливочное</li>
                </ul>
            </nav>
            <h1>Сливочное мороженое</h1>
        </header>

        <div class="main-sorting">
            <form action="#" method="post">
                <fieldset class="sorting-parameter">
                    <legend>Сортировка:</legend>
                    <select name="order">
                        <option value="popular">по популярности</option>
                        <option value="cheap-first">сначала недорогие</option>
                        <option value="cheap-last">сначала дорогие</option>
                        <option value="fat">по жирности</option>
                    </select>
                </fieldset>

                <fieldset class="sorting-price">
                    <legend>Цена: 100 руб. – 500 руб.</legend>
                    <div class="range-controls">
                        <div class="scale">
                            <div class="bar"></div>
                        </div>
                        <div class="toggle toggle-min"></div>
                        <div class="toggle toggle-max"></div>
                    </div>
                </fieldset>

                <fieldset class="sorting-fat">
                    <legend>Жирность:</legend>
                    <div class="sorting-overlay">
                        <label for="fat-1">
                            <input type="radio" id="fat-1" name="fat" value="0%">0%
                            <span class="radiobtn-indicator"></span>
                        </label>
                        <label for="fat-2">
                            <input type="radio" id="fat-2" name="fat" value="10%" checked>до 10%
                            <span class="radiobtn-indicator"></span>
                        </label>
                        <label for="fat-3">
                            <input type="radio" id="fat-3" name="fat" value="30%">до 30%
                            <span class="radiobtn-indicator"></span>
                        </label>
                        <label for="fat-4">
                            <input type="radio" id="fat-4" name="fat" value="30%+">выше 30%
                            <span class="radiobtn-indicator"></span>
                        </label>
                    </div>
                </fieldset>

                <fieldset class="sorting-fill">
                    <legend>Наполнители:</legend>
                    <div class="sorting-overlay">
                        <label>
                            <input type="checkbox" name="fill1" checked>шоколадные
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill2" checked>сахарные присыпки
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill3">фрукты
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill4">сиропы
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill5">джемы
                            <span class="checkbox-indicator"></span>
                        </label>
                    </div>
                </fieldset>
                <input class="sorting-btn" type="submit" value="Применить">
            </form>
        </div>

        <section class="catalog">
            <article class="catalog-item">
                <img src="../static/img/items/item1.jpg" width="267" height="267" alt="Сливочное с апельсиновым джемом и цитрусовой стружкой">
                <div class="item-price">310   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочное с апельсиновым джемом и цитрусовой стружкой</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item2.jpg" width="267" height="267" alt="Сливочно-кофейное с кусочками шоколада">
                <div class="item-price">380   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочно-кофейное с кусочками шоколада</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item3.jpg" width="266" height="267" alt="Сливочно-клубничное с присыпкой из белого шоколада">
                <div class="item-price">355   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочно-клубничное с присыпкой из белого шоколада</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item4.jpg" width="267" height="267" alt="Сливочное крем-брюле с карамельной подливкой">
                <div class="item-price">415   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочное крем-брюле с карамельной подливкой</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item5.jpg" width="267" height="267" alt="Сливочное с брусничным джемом">
                <div class="item-price">325   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочное с брусничным джемом</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item6.jpg" width="267" height="267" alt="Сливочно-черничное с цельными ягодами черники">
                <div class="item-price">410   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочно-черничное с цельными ягодами черники</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item7.jpg" width="267" height="267" alt="Сливочно-лимонное с карамельной присыпкой">
                <div class="item-price">375   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочно-лимонное с карамельной присыпкой</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item8.jpg" width="267" height="267" alt="Сливочное с шоколадной стружкой">
                <div class="item-price">320   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочное с шоколадной стружкой</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item9.jpg" width="267" height="267" alt="Сливочно-ванильное с кусочками шоколада">
                <div class="item-price">440   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочно-ванильное с кусочками шоколада</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item10.jpg" width="267" height="267" alt="Сливочное с ментоловым сиропом">
                <div class="item-price">435   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочное с ментоловым сиропом</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item11.jpg" width="267" height="267" alt="Сливочное с кусочками черного шоколада">
                <div class="item-price">355   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочное с кусочками черного шоколада</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>

            <article class="catalog-item">
                <img src="../static/img/items/item12.jpg" width="267" height="267" alt="Сливочное с мятным сиропом">
                <div class="item-price">420   <span class="price-weight">/кг</span></div>
                <div class="item-name"><span>Сливочное с мятным сиропом</span></div>
                <a class="btn" href="#">Быстрый просмотр</a>
            </article>
        </section>

        <ul class="paginator">
            <li class="prev disabled"><a title="предыдущая страница"></a></li>
            <li class="active"><a>1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li class="next"><a href="#" title="следующая страница"></a></li>
        </ul>
    </main>



<div>
    <a href="?sort=true&by=age">По возрастанию возраста</a>
    <a href="?sort=true&by=id">По возрастанию id</a>
    <a href="?sort=true&by=age&desc=true">По убыванию возраста</a>
    <a href="?sort=true&by=id&desc=true">По убыванию id</a>
    <a href="?">Все</a>
</div>
<div>
    <table>
        <tr>
            <th>ID</th>
            <th>Имя</th>
            <th>Фамилия</th>
        </tr>
        <#list users as user>
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
            </tr>
        </#list>
    </table>
</div>

    <footer class="page-footer center clearfix footer-inner">
        <section class="social">
            <a class="social-btn social-btn-tw" href="#" title="Мы в Твиттер"></a>
            <a class="social-btn social-btn-ig" href="#" title="Мы в Инстаграм"></a>
            <a class="social-btn social-btn-fb" href="#" title="Мы в Фейсбук"></a>
            <a class="social-btn social-btn-vk" href="#" title="Мы в Вконтакте"></a>
        </section>

        <section class="extra-info">
            <ul>
                <li class="special">
                    <a href="#"><b>Для поставщиков</b></a>
                </li>
                <li>
                    <a href="#">Наши документы</a>
                </li>
                <li>
                    <a href="#">О производстве</a>
                </li>
                <li>
                    <a href="#">Экологические стандарты</a>
                </li>
            </ul>
        </section>


    </footer>
</body>
</html>