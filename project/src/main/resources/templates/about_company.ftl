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
    <script src="https://code.jquery.com/jquery-3.4.0.js"
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
                                <a href="profile"> ${user.firstName}
                                    ${user.lastName}</a>
                            </li>
                        </ul>
                    </div>

                </#if>

        </nav>

        <div class="header-contacts">
            <span>C 10 до 20, ежедневно</span>
            <a href="tel:+78124502525">8 812 450-25-25</a>
        </div>
    </header>
    <div class="center-content">
        <div class="center">
            <section class="contacts">
                <p class="contacts-adress"><span class="adress-title">Адрес главного офиса и офлайн магазина:</span><b>ул. Большая Конюшенная 19/8, Санкт-Петербург</b>
                </p>
                <p class="contacts-phone"><span class="phone-title">Для заказов по телефону:</span><b><a href="tel:+78124502525">8 812 450-25-25</a></b>(с 10 до 20 ежедневно)
                </p>
                <a class="btn login" href="#">Форма обратной связи</a>
            </section>
        </div>

        <div class="map">
            <iframe src="https://api-maps.yandex.ru/frame/v1/-/C6q3f6IE"></iframe>
        </div>
    </div>
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