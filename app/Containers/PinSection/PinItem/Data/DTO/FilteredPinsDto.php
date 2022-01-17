<?php

namespace App\Containers\PinSection\PinItem\Data\DTO;

/**
 * Параметры необходимые для фильтрации списка пинов
 */
class FilteredPinsDto
{
    /**
     * @var int ID текущего залогиненного пользователя (если не залогинен, то 0)
     */
    public int $currentUserId = 0;

    /**
     * @var string Slug типа пина (Подсказки, Статьи и т.п.)
     */
    public string $pinTypeSlug = 'all';

    /**
     * @var string Slug типа технологии (Laravel, Vue, Docker и т.д.)
     */
    public string $stackItemSlug = '';

    /**
     * @var int код юзера-владельца пинов (поиск пинов определенного пользователя)
     */
    public int $userOwnerId = 0;

    /**
     * @var int код доски на которой ищутся пины
     */
    public int $pinListId = 0;

    /**
     * @var int код юзера чьи страницу чьих пинов открываем
     */
    public int $pinListUserId = 0;



}
