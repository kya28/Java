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
                                <a href="profile"> ${user.firstName}
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
        <div class="center-content">
            <div class="center">
<div class="row">
    <div class="col-lg-12 breadcrumb-box">
        <h1 class="font-fix">Условия доставки и оплаты мореженого Gllacy</h1>
    </div>
</div>
<div class="content-page page-simple delivery-page">
    <p>
    </p>
    <p>
        <b>Время работы:</b>
    </p>
    <p>
        Сделать заказ по телефону можно:<br>
        <br>
        ПН: с 9:00 до 23:00 <br>
        ВТ: с 9:00 до 23:00<br>
        СР: с 9:00 до 23:00<br>
        ЧТ: с 9:00 до 23:00<br>
        ПТ: с 10:00 до 00:00<br>
        СБ: с 10:00 до 00:00<br>
        ВС: с 10:00 до 00:00
    </p>
    <p>
        <br>
    </p>
    <p>
        <b>Самовынос по адресу: </b>
    </p>
    <p>
    </p>
    <ul>
        <li>
            <p>
                г. Санкт-Петербург, Ул.Большая Конюшенная, 19/8
            </p>
        </li>
    </ul>
    <p>
        <br>
        <b>Условия доставки:</b>
    </p>
    <p>
        Стоимость, время и условия для бесплатной доставки зависят от зоны расположения Вашего адреса. Ознакомиться с картой зон обслуживания можно ниже.
    </p>
    <p>
    </p>
    <p>
    </p>
    <ul>
        <li>
            <p>
                <b>Желтая зона:</b> Гарантируем доставку за 60 мин или сертификат на 500 руб. в Подарок! <span style="color: #0000ff;">здесь</span></a> Стоимость доставки - 110 руб. Минимальная сумма заказа от 300 руб. При заказе от 500 руб. - доставка Бесплатно!
            </p>
        </li>
        <li>
            <p>
                <b>Зеленая зона:</b> Стоимость доставки - 110 руб. Минимальная сумма заказа от 300 руб. При заказе от 500 руб. - доставка Бесплатно! Среднее время доставки 60 мин.
            </p>
        </li>
        <li>
            <p>
                <b>Синяя зона:</b> Стоимость доставки - 130 руб. Минимальный заказ от 300 рублей. При заказе от 700 рублей доставка бесплатно.<br>
            </p>
        </li>
        <li>
            <p>
                <b>Красная зона:</b> Стоимость доставки - 160 руб. Минимальный заказ от 400 рублей. При заказе от 1000 рублей доставка бесплатно.
            </p>
        </li>
        <li>
            <p>
                <b>Фиолетовая зона:</b> Стоимость доставки - 200 руб. Минимальный заказ от 700 руб. При заказе от 1500 руб. - доставка Бесплатно! Среднее время доставки 120 мин.
            </p>
        </li>
    </ul>

    <p>
        <b>Способы оплаты:</b>
    </p>
    <p>
        - Наличными курьеру;<br>
        - Банковской картой курьеру.
    </p>
    <p>
        <i><b>Подробные условия уточняйте у операторов.</b></i>
    </p>
    <p>
    </p>
    <p>
    </p>
    <h2>Карта зон доставки</h2>
    <div class="map-placeholder" id="map">
        <iframe src="https://api-maps.yandex.ru/frame/v1/-/C6q3f6IE" width="100%" height="400" frameborder="1" allowfullscreen="true"></iframe>	</div>
</div></div></div>

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