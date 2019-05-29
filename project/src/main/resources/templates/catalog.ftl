<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Глейси. Каталог товаров</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=cyrillic" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=cyrillic">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/style.css">
    <script
            src="https://code.jquery.com/jquery-3.4.0.js"
            integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
            crossorigin="anonymous"></script>

</head>
<body>
<input type="radio" id="btn-1" name="toggle" checked>
<input type="radio" id="btn-2" name="toggle">
<input type="radio" id="btn-3" name="toggle">
<div class="container">
    <header class="page-header center clearfix">
        <nav class="main-navigation clearfix">
            <div class="header-logo">
                <a href="index" title="Gllacy_Shop">
                    <img src="img/logo.png" width="154" height="64" alt="Gllacy_Shop">
                </a>
            </div>
            <ul class="main-menu">
                <li class="main-menu_item main-menu_catalog">
                    <a href="catalog">Каталог</a>

                <li class="main-menu_item">
                    <a href="delivery">Доставка и оплата</a>
                </li>
                <li class="main-menu_item">
                    <a href="about_company">О Компании</a>
                </li>

                <#if isAuthorized = false>
                    <div class="user-block ">
                        <ul>
                            <li class="user-enter">
                                <a href="signIn">Вход</a>
                            </li>
                            <li class="user-enter">
                                <a href="signUp">Новая регистрация</a>
                            </li>
                        </ul> </div>
                <#else>
                    <div class="user-block ">
                        <ul>
                            <li class="user-enter">
                                <a href="profile" name="user"> ${user.firstName}
                                    ${user.lastName}</a>
                            </li>
                        </ul>
                    </div>

                </#if>
            </ul>

        </nav>

        <div class="header-contacts">
            <span>C 10 до 20, ежедневно</span>
            <a href="tel:+78124502525">8 812 450-25-25</a>
        </div>
    </header>
    <article class="content center center-content">


        <header class="shop-header">
            <h1>Каталог</h1>


        </header>

        <div class="main-sorting">


            <form action="catalog" method="post">
                <fieldset class="sorting-fill">

                    <div class="sorting-overlay">
                        <label>

                            <input type="checkbox" name="fill1"><a href="?sort=true&by=creamy">Сливочное</a>
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill2" ><a href="?sort=true&by=sherbet">Щербеты</a>
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill3"><a href="?sort=true&by=fruit">Фруктовый лед</a>
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill4"><a href="?sort=true&by=melorin">Мелорин</a>
                            <span class="checkbox-indicator"></span>
                        </label>
                    </div>
                </fieldset><br>
                        <fieldset class="sorting-fill">
                            <legend>Сортировка:</legend>
                            <div class="sorting-overlay">
                        <label>
                            <input type="checkbox" name="fill1"><a href="?">все</a>
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill2" ><a href="?sort=true&by=price">сначала недорогие</a>
                            <span class="checkbox-indicator"></span>
                        </label>
                        <label>
                            <input type="checkbox" name="fill3"><a href="?sort=true&by=price&desc=true">сначала дорогие</a>
                            <span class="checkbox-indicator"></span>
                        </label>
                    </div><br>
                <fieldset class="sorting-fat">
                    <legend>Жирность:</legend>
                    <div class="sorting-overlay">
                        <label for="fat-1">
                            <input type="radio" id="fat-1" name="fat" value="0%"><a href="?sort=true&by=0">0%</a>
                            <span class="radiobtn-indicator"></span>
                        </label>
                        <label for="fat-2">
                            <input type="radio" id="fat-2" name="fat" value="10%"><a href="?sort=true&by=10">10%</a>
                            <span class="radiobtn-indicator"></span>
                        </label>
                        <label for="fat-3">
                            <input type="radio" id="fat-3" name="fat" value="20%"><a href="?sort=true&by=20">20%</a>
                            <span class="radiobtn-indicator"></span>
                        </label>
                        <label for="fat-4">
                            <input type="radio" id="fat-4" name="fat" value="30%"><a href="?sort=true&by=30">30%</a>
                            <span class="radiobtn-indicator"></span>
                        </label>
                    </div>
                </fieldset>
                <input class="sorting-btn" type="submit" value="Применить">
            </form>
        </div>
<div id="result">
        <main id="products_table" class="catalog">

            <#list catalog as product>
            <form method="post">
                <article class="catalog-item">
                    <input type="hidden" class="form-control"  name="image" value="${product.image}" >
                    <input type="hidden" class="form-control"  name="price" value="${product.price}" >
                    <input type="hidden" class="form-control"  name="name" value="${product.name}" >
                    <img src="/img/${product.image}"  width="267" height="267" alt="">
                <div class="item-price item_price" >${product.price}  <span class="price-weight">  /кг</span></div>
                <div class="item-name item_title" ><span >${product.name} </span></div>
                    <input type="submit" class="btn add-to-cart" value="Добавить в корзину">
                </article>
            </form>
            </#list>

    </main></div>
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
