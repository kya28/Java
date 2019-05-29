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

    <main>
        <div class="center">
            <div class="slider">
                <div class="slide" id="slide1">
                    <div class="slider-title">
                        Крем-брюле и пломбир с малиновым джемом
                    </div>
                    <a class="btn" href="catalog">Давайте оба!</a>
                </div>

                <div class="slide" id="slide2">
                    <div class="slider-title">
                        Шоколадный пломбир и лимонный сорбет
                    </div>
                    <a class="btn" href="catalog">Давайте оба!</a>
                </div>

                <div class="slide" id="slide3">
                    <div class="slider-title">
                        Пломбир с помадкой и клубничный щербет
                    </div>
                    <a class="btn" href="catalog">Давайте оба!</a>
                </div>

                <div class="slider-controls">
                    <label for="btn-1"></label>
                    <label for="btn-2"></label>
                    <label for="btn-3"></label>
                </div>
            </div>

            <section class="benefit clearfix">
                <article class="benefit-item benefit-1">
                    <h2>Малинка даром!</h2>
                    <p>При покупке 2 кг любого фруктового мороженого, добавим в ваш заказ банку малинового варенья бесплатно.</p>
                    <a class="btn" href="#">Хочу варенье!</a>
                </article>

                <article class="benefit-item benefit-2">
                    <h2>Шоколадки даром!</h2>
                    <p>При покупке 2 кг пломбира, добавим в ваш заказ упаковку вкуснейшей шоколадной присыпки совершенно бесплатно.</p>
                    <a class="btn" href="#">Хочу шоколадки!</a>
                </article>
            </section>



            <article class="about-us">
                <h2>Магазин Глейси — это онлайн и офлайн магазин по продаже мороженого собственного производства на развес</h2>
                <ul class="clearfix">
                    <li class="about-item about-1">Все наше мороженое изготавливается на собственном производстве, с использованием современного оборудования и проверенных временем технологий.
                    </li>
                    <li class="about-item about-2">Закупка ингредиентов  производится только у проверенных фермерских хозяйств и компаний, с которыми нас связывает долговременное сотрудничество.</li>
                    <li class="about-item about-3">Для приготовления мороженого используются настоящие сливки и молоко высочайшего качество. Все дополнительные ингридиенты и добавки произведены из натурального, экологически чистого сырья.</li>
                    <li class="about-item about-4">Доставка нашего мороженого до заказчиков осуществляется в специальном термопаке, который не дает мороженому растаять в пути и позволяет сохранить превосходный вкус.
                    </li>
                </ul>
            </article>

            <section class="news clearfix">
                <article class="news-item blog">
                    <span>Новое в нашем блоге</span>
                    <a class="news-title" href="blog">10  способов сервировки фруктовых щербетов к столу</a>
                </article>

                <section class="news-item subscription">
                    <div class="subscription-content">
                        <p class="subscription-title">Подпишитесь на нашу сладкую рассылку и будете всегда в курсе всего самого вкусного, что у нас происходит. Обещаем не спамить и не слать всякой ненужной ерунды. Честно =)</p>
                        <form action="#" method="post">
                            <input type="email" name="email" autocomplete="on" id="email2" placeholder="Электронная почта">
                            <label for="email2">Электронная почта</label>
                            <input class="btn" type="submit" value="Отправить">
                        </form>
                    </div>
                </section>
            </section>


    </main>

    <footer class="page-footer center clearfix">
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
    <div class="modal-content">
        <button class="modal-content-close" type="button" title="Закрыть">
            Закрыть
        </button>
        <form class="feedback" action="#" method="post">
            <span>Мы обязательно вам ответим!</span>
            <input type="text" name="login" autocomplete="on" id="login" placeholder="Как вас зовут?">
            <label for="login">Как вас зовут?</label>
            <input type="email" name="email" autocomplete="on" id="email-3" placeholder="Ваша почта для ответа">
            <label for="email-3">Ваша почта для ответа</label>
            <textarea placeholder="Напишите что-нибудь..." id="text"></textarea>
            <label for="text">Напишите что-нибудь...</label>
            <input class="btn" type="submit" value="Отправить">
        </form>
    </div>
    <div class="modal-overlay"></div>
</div>

</body>

</html>
