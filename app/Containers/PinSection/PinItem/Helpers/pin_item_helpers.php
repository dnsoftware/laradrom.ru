<?php

if (!function_exists('pin_item_html_prepare')) {
    function pin_item_html_prepare(?string $html, string $allow_tags): ?string
    {
        // Закоментил потому что неправильно отрабатывало с тегами <pre><code>
        $html = \App\Services\DomService::DOMCorrector($html);
        $html = trim(strip_tags($html, $allow_tags));

        return $html;
    }
}
