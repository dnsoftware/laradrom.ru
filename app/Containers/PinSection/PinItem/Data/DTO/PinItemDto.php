<?php

namespace App\Containers\PinSection\PinItem\Data\DTO;

/**
 * DTO для создания и сохранения пина
 */
class PinItemDto
{
    public int $user_id = 0;

    public int $board_id = 0;
    public int $pintype_id = 0;
    public array $stacks = [];
    public string $title = '';
    public string $essence = '';
    public string $pin_tags = '';
    public string $content = '';
    public string $seo_description = '';
    public string $target_link = '';
    public string $publication_status = '';

}
