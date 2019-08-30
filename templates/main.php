<section class="promo">
    <h2 class="promo__title">Нужен стафф для катки?</h2>
    <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
    <ul class="promo__list">
        <?php foreach($categories as $key => $category): ?>
        <li class="promo__item promo__item--<?= clearStrDataTags($key); ?>">
            <a class="promo__link" href="pages/all-lots.html"><?= clearStrDataTags($category); ?></a>
        </li>
        <? endforeach; ?>
    </ul>
</section>
<section class="lots">
    <div class="lots__header">
        <h2>Открытые лоты</h2>
    </div>
    <ul class="lots__list">
        <?php foreach ($goods as $good): ?>
        <li class="lots__item lot">
            <div class="lot__image">
                <img src="<?= clearStrDataTags($good['url']); ?>" width="350" height="260" alt="">
            </div>
            <div class="lot__info">
                <span class="lot__category"><?= clearStrDataTags($good['category']); ?></span>
                <h3 class="lot__title"><a class="text-link" href="pages/lot.html"><?= clearStrDataTags($good['name']); ?></a></h3>
                <div class="lot__state">
                    <div class="lot__rate">
                        <span class="lot__amount">Стартовая цена</span>
                        <span class="lot__cost"><?= clearStrDataTags(cut_price($good['price'])); ?></span>
                    </div>
                    <div class="lot__timer timer">
                        12:23
                    </div>
                </div>
            </div>
        </li>
        <? endforeach; ?>
    </ul>
</section>
