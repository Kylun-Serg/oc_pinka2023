<?php

// Heading
$_['heading_title'] = 'Обрані товари';

// Text
$_['text_account']  = 'Особистий кабінет';
$_['text_instock']  = 'В наявності';
$_['text_wishlist'] = '%s';

// $_['text_login']    = 'Необхідно увійти до <a href="%s">особистого кабінету</a> або <a href="%s">створити обліковий запис</a> для того, щоб зберегти товар <a href="%s">%s</a> у своїх свои <a href="%s">закладках</a>';

$_['text_login']    = '  <div class="modal-notification__title modal-notification__title_error">
                          Помилка!
                          <svg class="modal-notification__icon">
                            <use xlink:href="catalog/view/theme/pinka/assets/img/icons/icons.svg#modal-smile"></use>
                          </svg>
                          </div>
                          <p class="modal-notification__text">Щоб додати товар в обрані, потрібно пройти  авторизацію на сайті!</p>
                          <a href="%s" class="btn">Авторизація</a>
                    ';

// $_['text_success']  = 'Товар <a href="%s">%s</a> був доданий в <a href="%s">закладки</a>';
$_['text_success']  = '<div class="modal-notification__title modal-notification__title_ok">
                      Успіх!
                      <svg class="modal-notification__icon">
                        <use xlink:href="catalog/view/theme/pinka/assets/img/icons/icons.svg#modal-smile"></use>
                      </svg>
                      </div>
                      <p class="modal-notification__text">Товар додано до обраних!</p>
                      <button type="button" class="btn" data-close>Продовжити</button>
                    ';

                    
$_['text_remove']   = 'Закладки обновлені';
$_['text_empty']    = 'У вас немає товарів в закладках';


// Column
$_['column_image']  = 'Зображення';
$_['column_name']   = 'Назва товару';
$_['column_model']  = 'Модель';
$_['column_stock']  = 'Наявність';
$_['column_price']  = 'Ціна за одиницю товару';
$_['column_action'] = 'Дія';