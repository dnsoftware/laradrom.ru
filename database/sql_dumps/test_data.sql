--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg90+1)
-- Dumped by pg_dump version 14.1 (Ubuntu 14.1-2.pgdg20.04+1)

-- Started on 2021-11-19 12:57:19 +03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
--SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


--
-- TOC entry 3721 (class 0 OID 16405)
-- Dependencies: 216
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: laradrom
--




--
-- TOC entry 3727 (class 0 OID 16425)
-- Dependencies: 222
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3729 (class 0 OID 16429)
-- Dependencies: 224
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3730 (class 0 OID 16434)
-- Dependencies: 225
-- Data for Name: oauth_auth_codes; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3731 (class 0 OID 16439)
-- Dependencies: 226
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3733 (class 0 OID 16445)
-- Dependencies: 228
-- Data for Name: oauth_personal_access_clients; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3735 (class 0 OID 16449)
-- Dependencies: 230
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3739 (class 0 OID 16461)
-- Dependencies: 234
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3764 (class 0 OID 16533)
-- Dependencies: 259
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (7, 'Mandalorian', 'doncity@mail.ru', '2021-10-28 19:33:38', '$2y$10$pWsqIGYcPMT8ISV8o1tQ7.8z.cDJYYMu3F9NImSadGIjkgpaCIMVe', NULL, 7, 'profile-photos/xCTF2HSYdHPzj7cUkhojN4s6CiAyX6IWILJTuWKU.png', '2021-10-28 19:26:29', '2021-10-29 10:25:52', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (8, 'RussellItals', 'tranicspit80@yandex.ru', NULL, '$2y$10$jYotbllYZG0S.BW3DVVu8O5RJcUVmSVlKdAIDlmzdpSFeQPoG7O2e', NULL, NULL, NULL, '2021-10-29 19:42:23', '2021-10-29 19:42:23', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (9, 'Kennethskemn', 'cuetinto80@yandex.ru', NULL, '$2y$10$9dXarTjedP1f5e/zUlBSzOwlEoCsecWuX45f4FiDoHFV4UK/NsluW', NULL, NULL, NULL, '2021-10-30 01:04:43', '2021-10-30 01:04:43', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (10, 'Terrymaday', 'flowguthe84@yandex.ru', NULL, '$2y$10$xW5ETUHofEVMYKqmRuli3.eNVP1Emdiq.V1ELgSEG70B8SbVemVTa', NULL, NULL, NULL, '2021-10-30 04:39:07', '2021-10-30 04:39:07', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (11, 'Douglashor', 'inscoryb80@yandex.ru', NULL, '$2y$10$az.cBqW/Ua855E7afNEdY.gCbcm2nUgNmi5uYjGO7h/UVjar.X3OO', NULL, NULL, NULL, '2021-10-30 07:58:13', '2021-10-30 07:58:13', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (12, 'AnthonyPSYMN', 'giestocal82@yandex.ru', NULL, '$2y$10$2Jdrj2I5u/3bDcj83Us6.uizgMU13xeWhyv/9VrzV8DL7v8.3c7Ai', NULL, NULL, NULL, '2021-11-02 01:59:05', '2021-11-02 01:59:05', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (13, 'MurrayDrymn', 'threatboager87@yandex.ru', NULL, '$2y$10$tdofbgvdkbvE2BYrT/wRDe26OHifrK1yJnHwIZJ4QV9wpbn0wvcVG', NULL, NULL, NULL, '2021-11-04 01:45:44', '2021-11-04 01:45:44', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (14, 'DannyGlaps', 'pembpelni82@yandex.ru', NULL, '$2y$10$CIlxJlU3yDbcuMXprWDdQ.VgXTa23gGvGrdQftk/3.2u4V4XVXOC2', NULL, NULL, NULL, '2021-11-04 04:22:15', '2021-11-04 04:22:15', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (2, 'Drommer', 'medzhis@gmail.com', '2021-10-29 20:23:45', '$2y$10$jdIaWbZqWCo93PuDd0JDEuAicqhwl58XFGbolpuH2kgZoUwleo/5G', 'Qh8lAznRKTgaVKg2B5dTc6cBKPZKUuCeeeuiPa0Yx2rWKapn0j9a6mcvXlCC', 2, 'profile-photos/HHrTkfvXogEAPDrBaFP8H0QH0qBNhd9oychsn7aj.png', '2021-04-03 10:47:10', '2021-10-29 20:51:47', NULL, NULL);
INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, current_team_id, profile_photo_path, created_at, updated_at, two_factor_secret, two_factor_recovery_codes) VALUES (1, 'Dmitry', 'ddaemon@mail.ru', '2021-10-28 19:43:41', '$2y$10$w/zDbfPFKSQRYDWdesnbA.Nhsqy3aZNiwvH42rrrIZVP2LYelAjvC', 'OMTjH4uGQegKU1dFxPjH9TWwCDSYkBE7iHhstc7wimTs7rXxbo7bh2HpqoAN', 1, 'profile-photos/wSaMxxtE3TPwlWgqbaDSTFL0hdfeCkCm6b0vn5iz.jpg', '2021-03-06 09:21:05', '2021-10-29 10:10:26', NULL, NULL);


--
-- TOC entry 3741 (class 0 OID 16467)
-- Dependencies: 236
-- Data for Name: pin_boards; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (1, 0, 7, 'Разное для Laravel', '2021-10-28 19:39:51', '2021-10-28 19:39:51');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (2, 0, 1, 'Laravel. Проблемы и решения', '2021-10-28 19:51:39', '2021-10-28 19:51:39');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (3, 0, 1, 'Докероводство', '2021-10-29 00:16:19', '2021-10-29 00:16:19');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (4, 0, 1, 'Apache, Nginx, HTTP', '2021-10-29 08:18:48', '2021-10-29 08:18:48');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (5, 0, 1, 'PhpStorm. Настройки', '2021-10-29 09:10:14', '2021-10-29 09:10:14');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (7, 0, 1, 'CSS стили и HTML разметка', '2021-10-29 09:50:30', '2021-10-29 09:50:30');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (8, 0, 2, 'Laravel для начинающих', '2021-10-29 20:46:02', '2021-10-29 20:46:02');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (9, 0, 7, 'Разное по Javascript и JQuery', '2021-10-30 09:36:45', '2021-10-30 09:36:45');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (10, 0, 2, 'Git, Gitlab, Github, Bitbucket. Контроль версий', '2021-11-01 18:55:19', '2021-11-01 18:55:19');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (11, 0, 1, 'Новости Laravel', '2021-11-02 13:00:00', '2021-11-02 13:00:00');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (12, 0, 1, 'Что нового в PHP 8', '2021-11-05 13:15:53', '2021-11-05 13:15:53');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (15, 0, 1, 'Полезные команды Linux', '2021-11-13 01:32:21', '2021-11-13 01:32:21');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (13, 0, 1, 'PostgreSQL, базы данных', '2021-11-11 15:44:40', '2021-11-13 11:02:33');
INSERT INTO public.pin_boards (id, parent_id, user_id, name, created_at, updated_at) VALUES (16, 0, 7, 'PHP', '2021-11-13 20:03:18', '2021-11-13 20:03:18');


--
-- TOC entry 3749 (class 0 OID 16490)
-- Dependencies: 244
-- Data for Name: pin_types; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.pin_types (id, name, description, pin_count, slug, order_num, back_color) VALUES (1, 'Подсказки', 'маленькая подсказка по функционалу, функции и т.п.', 0, 'tips', 10, 'dbb9de');
INSERT INTO public.pin_types (id, name, description, pin_count, slug, order_num, back_color) VALUES (2, 'Решения', 'проблема, решение которой найдено', 0, 'solutions', 20, '9ddfb1');
INSERT INTO public.pin_types (id, name, description, pin_count, slug, order_num, back_color) VALUES (3, 'Статьи', 'ссылка на стороннюю статью или же страница со своей', 0, 'articles', 30, 'ffd99a');
INSERT INTO public.pin_types (id, name, description, pin_count, slug, order_num, back_color) VALUES (4, 'Компоненты', 'ссылки на гитхаб', 0, 'components', 40, 'e1aebd');
INSERT INTO public.pin_types (id, name, description, pin_count, slug, order_num, back_color) VALUES (5, 'Новости', 'новости индустрии', 0, 'news', 50, 'd1c9a2');
INSERT INTO public.pin_types (id, name, description, pin_count, slug, order_num, back_color) VALUES (6, 'Уроки', 'ссылка на какой-либо урок', 0, 'lessons', 60, 'e1cfc5');
INSERT INTO public.pin_types (id, name, description, pin_count, slug, order_num, back_color) VALUES (7, 'Руководства', 'ссылки на руководства + свои', 0, 'guides', 70, '53bae3');
INSERT INTO public.pin_types (id, name, description, pin_count, slug, order_num, back_color) VALUES (8, 'Сервисы', 'онлайн сервисы для решения каких-то задач, например декодирование, перевод, и т.д.', 0, 'services', 80, 'a6b1a0');


--
-- TOC entry 3745 (class 0 OID 16477)
-- Dependencies: 240
-- Data for Name: pin_items; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (2, 1, 'Как включить верификацию регистрационной почты в Laravel Jetstream', 'kak_vklyucit_verifikaciyu_registracionnoi_pocty_v_laravel_jetstream', '<p>В конфиге config/fortify.php раскомментируем строку</p>
<pre class=\"language-php\"><code>Features::emailVerification(),</code></pre>
<p>В модели User добавляем implements MustVerifyEmail</p>
<pre class=\"language-php\"><code>class User extends Authenticatable implements MustVerifyEmail</code></pre>', '<p>По умолчанию в Laravel Jetstream не требуется подтверждение почты после регистрации.</p>
<p>Чтобы это поправить нужно сделать два шага:</p>
<p>В конфиге config/fortify.php раскомментируем строку</p>
<pre class=\"language-php\"><code>Features::emailVerification(),</code></pre>
<p>В модели User добавляем implements MustVerifyEmail</p>
<pre class=\"language-php\"><code>class User extends Authenticatable implements MustVerifyEmail</code></pre>', NULL, '', 1, '2021-10-28 19:52:50', '2021-11-04 16:45:39', 2, 'Описание того как  в Laravel Jetstream активировать подтверждение почты после регистрации пользователя.', '''authenticat'':53B,82C ''class'':33B,46B,50B,62C,75C,79C ''config/fortify.php'':29B,58C ''email'':85C ''emailverif'':38B,67C ''extend'':52B,81C ''featur'':37B,66C ''implement'':43B,54B,72C,83C ''jetstream'':8A,13B,87C ''languag'':35B,48B,64C,77C ''language-php'':34B,47B,63C,76C ''laravel'':7A,12B,86C ''mustverifyemail'':44B,55B,73C,84C ''php'':36B,49B,65C,78C ''pre'':32B,45B,61C,74C ''user'':41B,51B,70C,80C ''верификац'':3A,90C ''включ'':2A ''добавля'':42B,71C ''конфиг'':28B,57C ''модел'':40B,69C ''нужн'':23B ''подтвержден'':16B ''поправ'':22B ''почт'':5A,17B,89C ''раскомментиру'':30B,59C ''регистрац'':19B ''регистрацион'':4A,88C ''сдела'':24B ''строк'':31B,60C ''треб'':15B ''умолчан'':10B ''шаг'':26B ''эт'':21B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (3, 1, 'Команда artisan для символической ссылки на storage', 'komanda_artisan_dlya_simvoliceskoi_ssylki_na_storage', '<pre class=\"language-bash\"><code>php artisan storage:link</code></pre>', '<pre class=\"language-bash\"><code>php artisan storage:link</code></pre>', NULL, '', 1, '2021-10-28 22:10:18', '2021-11-04 16:47:51', 1, 'Команда artisan для создания символической ссылки на хранилище storage', '''artisan'':2A,14B,23C,26C ''bash'':12B,21C ''class'':9B,18C ''languag'':11B,20C ''language-bash'':10B,19C ''link'':16B,25C,28C ''php'':13B,22C ''pre'':8B,17C ''storag'':7A,15B,24C,27C ''команд'':1A ''символическ'':4A ''ссылк'':5A,29C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (7, 1, 'CSS фон', 'css_fon', '<p>Подробное описание всех CSS свойств, связанных с фоном</p>', '<p>Подробное описание всех CSS свойств, связанных с фоном</p>
<p>&nbsp;</p>', 'https://html5book.ru/css-background', '', 1, '2021-10-29 09:50:56', '2021-11-04 16:53:01', 1, 'Описание всех CSS свойств, связанных с фоном. Режимы накладывания фонового изображения', '''background'':20C ''css'':1A,6B,14C,19C ''описан'':4B,12C ''подробн'':3B,11C ''свойств'':7B,15C ''связа'':8B,16C ''фон'':2A,10B,18C,21C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (8, 7, 'Как узнать название текущего метода (action) в текущем контроллере', 'kak_uznat_nazvanie_tekushhego_metoda_action_v_tekushhem_kontrollere', '<pre class=\"language-php\"><code>request()-&gt;route()-&gt;getActionMethod()</code></pre>', '<pre class=\"language-php\"><code>request()-&gt;route()-&gt;getActionMethod()</code></pre>', NULL, '', 1, '2021-10-29 15:08:36', '2021-11-04 16:57:12', 1, 'Узнаем название текущего метода (action) в текущем контроллере', '''action'':6A,32C ''class'':11B,19C ''getactionmethod'':17B,25C ''languag'':13B,21C ''language-php'':12B,20C ''php'':14B,22C ''pre'':10B,18C ''request'':15B,23C ''rout'':16B,24C ''контроллер'':9A,26C,31C ''метод'':5A,30C ''назван'':3A,28C ''текущ'':4A,8A,29C ''узна'':2A ''экшн'':27C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (17, 1, 'Вышел релиз PHPStan 1.0', 'vysel_reliz_phpstan_10', '<p>Спустя 6 лет разработки вышла первая версия статического анализатора PHPStan!</p>
<p>&nbsp;</p>', '<p>Спустя 6 лет разработки вышла первая версия PHPStan!</p>
<p>Это статический анализатор PHP, предназначенный для поиска ошибок в вашем коде. Он выявляет целые классы ошибок еще до того, как вы вообще запустите свое приложение.</p>
<p>Также вышел релиз Larastan 1.0.0 &mdash; обёртки над &nbsp;PHPStan для Laravel.</p>
<p>https://github.com/nunomaduro/larastan</p>
<p>&nbsp;</p>', 'https://phpstan.org/blog/phpstan-1-0-released', '', 1, '2021-11-02 13:05:11', '2021-11-04 16:55:47', 5, 'Спустя 6 лет разработки вышла первая версия статического анализатора PHPStan', '''/nunomaduro/larastan'':50B ''1.0'':4A ''1.0.0'':42B ''6'':6B,52C ''github.com'':49B ''github.com/nunomaduro/larastan'':48B ''larastan'':41B,62C ''laravel'':47B,61C ''php'':16B ''phpstan'':3A,12B,45B,60C ''анализатор'':15B,59C,64C ''ваш'':22B ''верс'':11B,57C ''вообщ'':34B ''вышел'':1A,39B ''вышл'':9B,55C ''выявля'':25B ''запуст'':35B ''класс'':27B ''код'':23B ''лет'':7B,53C ''обертк'':43B ''ошибок'':20B,28B ''перв'':10B,56C ''поиск'':19B ''предназначен'':17B ''приложен'':37B ''разработк'':8B,54C ''релиз'':2A,40B ''сво'':36B ''спуст'':5B,51C ''статическ'':14B,58C,63C ''такж'':38B ''цел'':26B ''эт'':13B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (20, 1, 'Как подключиться к запущенному контейнеру Docker', 'kak_podklyucitsya_k_zapushhennomu_konteineru_docker', '<pre class="\&quot;\&quot; language-bash"><code># docker ps
# docker exec -i -t 6ee6223a3ce3 bash
</code></pre>', '<p>Находим имя или ID контейнера:</p>
<pre class="language-bash"><code># docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
73308f2c5b8d        ubuntu              "/bin/bash"         2 hours ago         Up 2 hours                                       laradrom_backend</code></pre>
<p>Подключаемся с помощью команды exec:</p>
<pre class="language-bash"><code># docker exec -i -t 73308f2c5b8d bash
root@73308f2c5b8d:/#</code></pre>
<p>И выходим по <em>Ctrl+D</em>.</p>', NULL, '', 1, '2021-11-05 20:58:41', '2021-11-11 11:50:54', 1, 'Команда подключения к запущенному контейнеру Docker через SSH', '''/bin/bash'':24B ''2'':25B,29B ''6ee6223a3ce3'':57C ''73308f2c5b8d'':22B,42B,45B ''ago'':27B ''backend'':32B ''bash'':43B,58C ''command'':17B ''contain'':14B ''creat'':18B ''ctrl'':49B ''d'':50B ''docker'':6A,12B,38B,51C,53C,59C ''exec'':37B,39B,54C ''hour'':26B,30B ''id'':10B,15B ''imag'':16B ''laradrom'':31B ''name'':21B ''port'':20B ''ps'':13B,52C ''root'':44B ''status'':19B ''ubuntu'':23B ''выход'':47B ''запущен'':4A ''им'':8B ''команд'':36B ''контейнер'':5A,11B,60C ''наход'':7B ''подключ'':2A ''подключа'':33B ''подключен'':61C ''помощ'':35B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (26, 1, 'Как создать дамп Postgresql базы из контейнера Docker?', 'kak_sozdat_damp_postgresql_bazy_iz_konteinera_docker', '<pre class="language-bash"><code>$ docker exec container_name pg_dump -U username -F t dbname | gzip &gt; save/my_db-$(date +%Y-%m-%d).tar.gz</code></pre>
<p data-renderer-start-pos="185">или в tar:</p>
<pre class="language-bash"><code>docker exec container_name pg_dump -U username -F t dbname &gt; save/my_db-$(date +%Y-%m-%d).tar</code></pre>', '<div class="sc-1u3iq5d-0 kUCOUC">
<div class="ak-renderer-document">
<pre class="language-bash"><code>$ docker exec container_name pg_dump -U username -F t dbname | gzip &gt; save/my_db-$(date +%Y-%m-%d).tar.gz</code></pre>
<p data-renderer-start-pos="106">где</p>
<p data-renderer-start-pos="111"><strong>container_name</strong> - имя Docker контейнера;</p>
<p data-renderer-start-pos="152"><strong>username</strong> - имя пользователя БД;</p>
<p data-renderer-start-pos="185"><strong>dbname</strong> - имя базы данных</p>
<p data-renderer-start-pos="185">&nbsp;</p>
<p data-renderer-start-pos="185">или в tar:</p>
<pre class="language-bash"><code>docker exec container_name pg_dump -U username -F t dbname &gt; save/my_db-$(date +%Y-%m-%d).tar</code></pre>
</div>
</div>', NULL, '', 1, '2021-11-13 01:05:15', '2021-11-13 01:05:56', 1, 'Создание дампа базы Postgresql, запущенного в Docker контейнере', '''backup'':102C ''contain'':11B,28B,46B,63C,84C ''d'':25B,59B,77C,97C ''date'':22B,56B,74C,94C ''dbname'':19B,37B,54B,71C,92C ''docker'':8A,9B,31B,44B,61C,82C,99C ''dump'':14B,49B,66C,87C,100C ''exec'':10B,45B,62C,83C ''f'':17B,52B,69C,90C ''gzip'':20B,72C ''m'':24B,58B,76C,96C ''name'':12B,29B,47B,64C,85C ''pg'':13B,48B,65C,86C ''postgresql'':4A,101C ''save/my_db-'':21B,55B,73C,93C ''tar'':43B,60B,81C,98C ''tar.gz'':26B,78C ''u'':15B,50B,67C,88C ''usernam'':16B,33B,51B,68C,89C ''y'':23B,57B,75C,95C ''баз'':5A,39B ''бд'':36B ''дамп'':3A ''дан'':40B ''им'':30B,34B,38B ''контейнер'':7A,32B ''пользовател'':35B ''созда'':2A');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (55, 1, 'Laravel Scout Elasticsearch driver', 'laravel_scout_elasticsearch_driver', '<p>Этот пакет, предлагающий расширенные функции для поиска и фильтрации данных в Elasticsearch.</p>', '<p>Пакет, предлагающий расширенные функции для поиска и фильтрации данных в Elasticsearch.</p>
<p>- Простой способ настроить и создать индекс Elasticsearch.<br />- Полностью настраиваемое отображение для каждой модели.<br />- Возможность добавить новое поле к существующему сопоставлению автоматически или с помощью команды artisan.<br />- Множество различных способов реализации вашего алгоритма поиска: с помощью правил поиска или необработанного поиска.<br />- Различные типы фильтров для уточнения поискового запроса.<br />- Миграция с нулевым временем простоя со старого индекса на новый.<br />- Массовое индексирование.</p>', 'https://github.com/babenkoivan/scout-elasticsearch-driver#features', '', 1, '2021-11-17 12:40:42', '2021-11-17 23:54:06', 2, 'Laravel Scout Elasticsearch драйвер', '''artisan'':41B ''driver'':4A,92C ''elasticsearch'':3A,15B,22B,86C,91C ''laravel'':1A,87C ''scout'':2A,90C ''автоматическ'':36B ''алгоритм'':47B ''ваш'':46B ''возможн'':29B ''времен'':66B ''дан'':13B,84C ''добав'':30B ''драйвер'':94C ''запрос'':62B ''индекс'':21B,70B ''индексирован'':74B ''кажд'':27B ''команд'':40B ''массов'':73B ''миграц'':63B ''множеств'':42B ''модел'':28B ''настраива'':24B ''настро'':18B ''необработа'':54B ''нов'':31B,72B ''нулев'':65B ''отображен'':25B ''пакет'':5B,76C ''поиск'':10B,48B,52B,55B,81C,89C,93C ''поисков'':61B ''пол'':32B ''полност'':23B ''полнотекстов'':88C ''помощ'':39B,50B ''прав'':51B ''предлага'':6B,77C ''прост'':16B ''просто'':67B ''различн'':43B,56B ''расширен'':7B,78C ''реализац'':45B ''созда'':20B ''сопоставлен'':35B ''способ'':17B,44B ''стар'':69B ''существ'':34B ''тип'':57B ''уточнен'':60B ''фильтр'':58B ''фильтрац'':12B,83C ''функц'':8B,79C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (19, 7, 'Запуск PHPUnit тестов внутри Docker-контейнера в PhpStorm', 'zapusk_phpunit_testov_vnutri_docker_konteinera_v_phpstorm', '<p>Настройки PhpStorm для запуска Unit тестов в Докере</p>', '<p>Настройки PhpStorm для запуска PHPUnit тестов в Docker контейнере.</p>
<p>&nbsp;</p>', 'https://justcodeit.ru/zapuskaem-phpunit-testy-vnutri-docker-kontejnera-v-phpstorm/', '', 1, '2021-11-05 09:45:50', '2021-11-05 09:45:50', 3, 'Настройки PhpStorm для запуска Unit тестов в Docker', '''docker'':6A,17B,28C ''docker-контейнер'':5A ''laravel'':27C ''phpstorm'':9A,11B,20C ''phpunit'':2A,14B,31C ''test'':30C ''unit'':23C,29C,33C ''внутр'':4A ''докер'':26C,35C ''запуск'':1A,13B,22C ''контейнер'':7A,18B,36C ''настройк'':10B,19C ''тест'':3A,15B,24C,32C,34C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (29, 1, 'Как просканировать открытые порты Ubuntu', 'kak_proskanirovat_otkrytye_porty_ubuntu', '<pre class="language-bash"><code> nmap -sT 192.168.1.3</code></pre>', '<p>Сетевой сканер <strong>nmap</strong> позволяет проверить список портов Ubuntu так, как бы это делал злоумышленник при попытке атаки на вашу систему.</p>
<p>Здесь вы будете видеть все порты, которые видны снаружи.</p>
<p>Но для сканирования нужно использовать внешний ip-адрес.</p>
<p>Не сетевой ip-адрес провайдера, а адрес вашего компьютера, например, в локальной сети чаще всего используется 192.168.1.2.</p>
<p>Просто посмотреть открытые порты:</p>
<pre class="language-bash"><code> nmap -sT 192.168.1.2</code></pre>
<p>Также можно выполнить комплексное сканирование всех простых</p>
<pre class="language-bash"><code> sudo nmap -A 192.168.1.3</code></pre>
<p>уязвимостей.&nbsp;</p>', NULL, '', 1, '2021-11-13 01:37:41', '2021-11-13 01:37:41', 1, 'Команда скана открытых портов Ubuntu', '''192.168.1.2'':61B,68B ''192.168.1.3'':79B,83C ''ip'':42B,47B ''ip-адрес'':41B,46B ''linux'':84C ''nmap'':8B,66B,77B,81C,86C ''st'':67B,82C ''sudo'':76B ''ubuntu'':5A,13B,85C ''адрес'':43B,48B,51B ''атак'':22B ''будет'':28B ''ваш'':24B,52B ''видет'':29B ''видн'':33B ''внешн'':40B ''выполн'':71B ''дела'':18B ''злоумышленник'':19B ''использ'':60B ''использова'':39B ''комплексн'':72B ''компьютер'':53B ''котор'':32B ''локальн'':56B ''например'':54B ''нужн'':38B ''открыт'':3A,64B ''позволя'':9B ''попытк'':21B ''порт'':4A,12B,31B,65B,88C ''посмотрет'':63B ''провайдер'':49B ''провер'':10B ''просканирова'':2A ''прост'':62B,75B ''сет'':57B ''сетев'':6B,45B ''сист'':25B ''сканер'':7B,87C ''сканирован'':37B,73B ''снаруж'':34B ''список'':11B ''такж'':69B ''уязвим'':80B ''чащ'':58B ''эт'':17B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (53, 1, 'Добавление расширения для работы с RUM индексами в PostgreSQL', 'dobavlenie_rassireniya_dlya_raboty_s_rum_indeksami_v_postgresql', '<pre class="language-bash"><code>apt-get update
apt-get install postgresql-14-rum
</code></pre>
<pre class="language-sql"><code>CREATE EXTENSION rum;</code></pre>', '<p>Для работы с RUM индексацией в Postgres используется соответствующее стороннее расширение rum.</p>
<p>Чтобы начать с ним работу в Linux нужно:</p>
<p>1. Установить пакет в Linux:&nbsp;&nbsp;&nbsp;</p>
<pre class="language-bash"><code>apt-get update
apt-get install postgresql-14-rum
</code></pre>
<p><strong>postgresql-14-rum</strong> - пакет для 4-й версии Postgres.</p>
<p>&nbsp;</p>
<p>2. Выполнить SQL запрос к базе, для которой будут использоваться RUM индексы.</p>
<pre class="language-sql"><code>CREATE EXTENSION rum;</code></pre>
<p>Для Docker разработки Dockerfile будет примерно такой:</p>
<pre class="language-docker"><code>FROM postgres:14

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &amp;&amp; \
    apt-get install postgresql-14-rum
</code></pre>', NULL, '', 1, '2021-11-17 11:49:24', '2021-11-17 12:08:08', 2, 'Шаги по активации расширения RUM для работы с полнотекстовыми индексами rum в PostgreSQL', '''-14'':44B,47B,94B,105C ''1'':30B ''14'':79B ''2'':55B ''4'':51B ''apt'':36B,40B,86B,90B,97C,101C ''apt-get'':35B,39B,85B,89B,96C,100C ''creat'':67B,107C ''debian'':81B ''docker'':71B,110C ''dockerfil'':73B ''env'':80B ''extens'':68B,108C ''frontend'':82B ''get'':37B,41B,87B,91B,98C,102C ''instal'':42B,92B,103C ''linux'':28B,34B ''noninteract'':83B ''postgr'':16B,54B,78B ''postgresql'':9A,43B,46B,93B,104C,111C ''rum'':6A,13B,21B,45B,48B,65B,69B,95B,106C,109C,112C ''run'':84B ''sql'':57B ''updat'':38B,88B,99C ''баз'':60B ''будут'':63B ''верс'':53B ''выполн'':56B ''добавлен'':1A ''запрос'':58B ''индекс'':7A,66B,113C ''индексац'':14B ''использ'':17B ''использова'':64B ''й'':52B ''котор'':62B ''нача'':23B ''нужн'':29B ''пакет'':32B,49B ''примерн'':75B ''работ'':4A,11B,26B ''разработк'':72B ''расширен'':2A,20B,114C ''соответств'':18B ''сторон'':19B ''установ'':31B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (56, 1, 'Однократный запуск обработчика очереди Laravel по cron', 'odnokratnyi_zapusk_obrabotcika_oceredi_laravel_po_cron', '<pre class="language-bash"><code>path/to/php/php path/to/artisan/artisan queue:work --stop-when-empty</code></pre>
<p><span class="pl-s">&nbsp;</span></p>', '<p>Если вы не хотите заморачиваться с настройкой супервизора, можно сделать через крон запуск обработки очереди (раз в минуту например), а после обработки всех заданий останавливать воркер.</p>
<p>Для этого в artisan queue:work есть специальный ключ <strong>--stop-when-empty</strong></p>
<pre class="language-bash"><code>path/to/php/php path/to/artisan/artisan queue:work --stop-when-empty</code></pre>
<p>&nbsp;</p>', NULL, '', 1, '2021-11-18 00:05:10', '2021-11-18 00:05:10', 1, 'Запуск воркера очереди, обработка всех заданий в очереди и остановка, если все задания выполнены.', '''artisan'':37B ''cron'':7A ''empti'':46B,54B,62C ''laravel'':5A,63C ''path/to/artisan/artisan'':48B,56C ''path/to/php/php'':47B,55C ''queue'':38B,49B,57C,64C ''stop'':44B,52B,60C ''stop-when-empti'':43B,51B,59C ''work'':39B,50B,58C ''worker'':69C ''воркер'':33B ''задан'':31B ''заморачива'':12B ''запуск'':2A,20B,68C ''ключ'':42B ''крон'':19B ''минут'':25B ''например'':26B ''настройк'':14B ''обработк'':21B,29B,66C ''обработчик'':3A ''однократн'':1A,67C ''останавлива'':32B ''очеред'':4A,22B,65C ''сдела'':17B ''специальн'':41B ''супервизор'':15B ''хот'':11B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (42, 1, 'Как посмотреть пользователей Postgresql', 'kak_posmotret_polzovatelei_postgresql', '<pre class="language-bash"><code>su - postgres -c "psql -c ''select * from pg_user;''"</code></pre>', '<p>Команда просмотра пользователей базы PostgreSQL</p>
<pre class="language-bash"><code>su - postgres -c "psql -c ''select * from pg_user;''"</code></pre>', NULL, '', 1, '2021-11-13 22:48:09', '2021-11-13 23:02:38', 1, 'Как посмотреть список пользователей базы PostgreSQL', '''c'':12B,14B,21C,23C ''pg'':17B,26C,33C ''postgr'':11B,20C ''postgresql'':4A,9B,28C ''psql'':13B,22C ''select'':15B,24C ''su'':10B,19C ''user'':18B,27C,34C ''баз'':8B ''команд'':5B ''пользовател'':3A,7B,29C,32C ''посмотрет'':2A ''просмотр'':6B,30C ''таблиц'':31C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (44, 1, 'Работа с пользователями в Postgresql', 'rabota_s_polzovatelyami_v_postgresql', '<p>Команды для работы с пользователями PostgreSQL</p>', '<p>Команды для работы с пользователями PostgreSQL</p>', 'https://www.dmosk.ru/miniinstruktions.php?mini=postgresql-users', '', 1, '2021-11-13 23:58:41', '2021-11-13 23:58:41', 3, 'Команды для работы с пользователями PostgreSQL', '''linux'':18C ''postgresql'':5A,11B,17C,19C ''команд'':6B,12C,20C ''пользовател'':3A,10B,16C,21C ''работ'':1A,8B,14C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (45, 1, 'Полнотекстовый поиск в PostgreSQL за миллисекунды', 'polnotekstovyi_poisk_v_postgresql_za_millisekundy', '<p>Видеоролик по полнотекстовым индексам в PostgreSQL</p>', '<p>Полнотекстовый поиск в PostgreSQL за миллисекунды / Олег Бартунов, Александр Коротков (PostgreSQL)</p>
<p><iframe src="https://www.youtube.com/embed/c5joarq866w" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>', NULL, '', 1, '2021-11-14 13:49:08', '2021-11-14 13:49:08', 6, 'Полнотекстовый поиск в PostgreSQL за миллисекунды / Олег Бартунов, Александр Коротков (PostgreSQL)', '''postgresql'':4A,10B,17B,23C,24C ''александр'':15B ''бартун'':14B,27C ''видеоролик'':18C ''доклад'':28C ''индекс'':21C ''коротк'':16B ''миллисекунд'':6A,12B ''олег'':13B ''поиск'':2A,8B,26C ''полнотекстов'':1A,7B,20C,25C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (48, 1, 'Как удалить все контейнеры Docker, образы, тома и сети', 'kak_udalit_vse_konteinery_docker_obrazy_toma_i_seti', '<p>https://abuzov.ru/how-to-remove-docker-images/</p>', '<p>Всевозможные команды удаления и очистки контейнеров Doker</p>
<p>&nbsp;</p>', 'https://abuzov.ru/how-to-remove-docker-images/', '', 1, '2021-11-16 17:23:22', '2021-11-16 17:23:22', 1, 'Всевозможные команды удаления и очистки контейнеров Doker', '''/how-to-remove-docker-images/'':19C ''abuzov.ru'':18C ''abuzov.ru/how-to-remove-docker-images/'':17C ''delet'':21C ''docker'':5A,20C ''doker'':16B ''всевозможн'':10B ''команд'':11B ''контейнер'':4A,15B,26C ''образ'':6A ''очистк'':14B ''сет'':9A ''том'':7A ''удал'':2A,22C,23C,25C ''удален'':12B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (51, 1, 'Сборка Docker образа PostgreSQL с расширениями и прочими примочками', 'sborka_docker_obraza_postgresql_s_rassireniyami_i_procimi_primockami', '<p>Примеры конфигураций для сборки Docker образа PostgreSQL с расширениями и прочими примочками</p>', '<p>Примеры конфигураций для сборки Docker образа PostgreSQL с расширениями и прочими примочками.</p>
<p dir="auto"><em>В шаблонную БД установлены расширения:</em></p>
<table>
<thead>
<tr>
<th>Extension</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>adminpack</td>
<td>administrative functions for PostgreSQL</td>
</tr>
<tr>
<td>amcheck</td>
<td>functions for verifying relation integrity</td>
</tr>
<tr>
<td>btree_gin</td>
<td>support for indexing common datatypes in GIN</td>
</tr>
<tr>
<td>citext</td>
<td>data type for case-insensitive character strings</td>
</tr>
<tr>
<td>dblink</td>
<td>connect to other PostgreSQL databases from within a database</td>
</tr>
<tr>
<td>file_fdw</td>
<td>foreign-data wrapper for flat file access</td>
</tr>
<tr>
<td>fuzzystrmatch</td>
<td>determine similarities and distance between strings</td>
</tr>
<tr>
<td>hunspell_en_us</td>
<td>en_US Hunspell Dictionary</td>
</tr>
<tr>
<td>hunspell_ru_ru</td>
<td>Russian Hunspell Dictionary</td>
</tr>
<tr>
<td>hunspell_ru_ru_aot</td>
<td>Russian Hunspell Dictionary (from AOT.ru group)</td>
</tr>
<tr>
<td>pageinspect</td>
<td>inspect the contents of database pages at a low level</td>
</tr>
<tr>
<td>pg_buffercache</td>
<td>examine the shared buffer cache</td>
</tr>
<tr>
<td>pg_dbo_timestamp</td>
<td>PostgreSQL extension for storing time and author of database structure modification</td>
</tr>
<tr>
<td>pg_prewarm</td>
<td>prewarm relation data</td>
</tr>
<tr>
<td>pg_repack</td>
<td>Reorganize tables in PostgreSQL databases with minimal locks</td>
</tr>
<tr>
<td>pg_stat_statements</td>
<td>track execution statistics of all SQL statements executed</td>
</tr>
<tr>
<td>pg_trgm</td>
<td>text similarity measurement and index searching based on trigrams</td>
</tr>
<tr>
<td>pg_tsparser</td>
<td>parser for text search</td>
</tr>
<tr>
<td>pg_variables</td>
<td>session variables with various types</td>
</tr>
<tr>
<td>pgstattuple</td>
<td>show tuple-level statistics</td>
</tr>
<tr>
<td>pldbgapi</td>
<td>server-side support for debugging PL/pgSQL functions</td>
</tr>
<tr>
<td>plpgsql</td>
<td>PL/pgSQL procedural language</td>
</tr>
<tr>
<td>plpgsql_check</td>
<td>extended check for plpgsql functions</td>
</tr>
<tr>
<td>plpython3u</td>
<td>PL/Python3U untrusted procedural language</td>
</tr>
<tr>
<td>postgis</td>
<td>PostGIS geometry, geography, and raster spatial types and functions</td>
</tr>
<tr>
<td>postgis_tiger_geocoder</td>
<td>PostGIS tiger geocoder and reverse geocoder</td>
</tr>
<tr>
<td>postgis_topology</td>
<td>PostGIS topology spatial types and functions</td>
</tr>
<tr>
<td>postgres_fdw</td>
<td>foreign-data wrapper for remote PostgreSQL servers</td>
</tr>
<tr>
<td>rum</td>
<td>RUM index access method</td>
</tr>
<tr>
<td>shared_ispell</td>
<td>Provides shared ispell dictionaries.</td>
</tr>
<tr>
<td>uuid-ossp</td>
<td>generate universally unique identifiers (UUIDs)</td>
</tr>
</tbody>
</table>', 'https://github.com/dnsoftware/docker-postgres', '', 1, '2021-11-16 22:40:37', '2021-11-16 22:40:37', 2, 'Примеры сборки Docker образа PostgreSQL с расширениями и прочими примочками', '''access'':77B,261B ''addon'':292C ''administr'':30B ''adminpack'':29B ''amcheck'':34B ''aot'':101B ''aot.ru'':106B ''author'':135B ''base'':174B ''btree'':40B ''buffer'':124B ''buffercach'':120B ''cach'':125B ''case'':54B ''case-insensit'':53B ''charact'':56B ''check'':210B,212B ''citext'':49B ''common'':45B ''connect'':59B ''content'':111B ''data'':50B,72B,144B,252B ''databas'':63B,67B,113B,137B,151B ''datatyp'':46B ''dblink'':58B ''dbo'':127B ''debug'':202B ''descript'':28B ''determin'':79B ''dictionari'':91B,97B,104B,268B ''distanc'':82B ''docker'':2A,14B,281C,289C ''en'':86B,88B ''examin'':121B ''execut'':159B,165B ''extend'':211B ''extens'':27B,130B ''fdw'':69B,249B ''file'':68B,76B ''flat'':75B ''foreign'':71B,251B ''foreign-data'':70B,250B ''function'':31B,35B,204B,215B,230B,247B ''fuzzystrmatch'':78B ''generat'':272B ''geocod'':233B,236B,239B ''geographi'':224B ''geometri'':223B ''gin'':41B,48B ''group'':107B ''hunspel'':85B,90B,92B,96B,98B,103B ''identifi'':275B ''index'':44B,172B,260B ''insensit'':55B ''inspect'':109B ''integr'':39B ''ispel'':264B,267B ''languag'':208B,220B ''level'':118B,194B ''lock'':154B ''low'':117B ''measur'':170B ''method'':262B ''minim'':153B ''modif'':139B ''ossp'':271B ''page'':114B ''pageinspect'':108B ''parser'':179B ''pg'':119B,126B,140B,145B,155B,166B,177B,183B ''pgstattupl'':190B ''pl/pgsql'':203B,206B ''pl/python3u'':217B ''pldbgapi'':196B ''plpgsql'':205B,209B,214B ''plpython3u'':216B ''plugin'':293C ''postgi'':221B,222B,231B,234B,240B,242B ''postgr'':248B,290C ''postgresql'':4A,16B,33B,62B,129B,150B,256B,283C ''prewarm'':141B,142B ''procedur'':207B,219B ''provid'':265B ''raster'':226B ''relat'':38B,143B ''remot'':255B ''reorgan'':147B ''repack'':146B ''revers'':238B ''ru'':93B,94B,99B,100B ''rum'':258B,259B ''russian'':95B,102B ''search'':173B,182B ''server'':198B,257B ''server-sid'':197B ''session'':185B ''share'':123B,263B,266B ''show'':191B ''side'':199B ''similar'':80B,169B ''spatial'':227B,244B ''sql'':163B ''stat'':156B ''statement'':157B,164B ''statist'':160B,195B ''store'':132B ''string'':57B,84B ''structur'':138B ''support'':42B,200B ''tabl'':148B ''text'':168B,181B ''tiger'':232B,235B ''time'':133B ''timestamp'':128B ''topolog'':241B,243B ''track'':158B ''trgm'':167B ''trigram'':176B ''tsparser'':178B ''tupl'':193B ''tuple-level'':192B ''type'':51B,189B,228B,245B ''uniqu'':274B ''univers'':273B ''untrust'':218B ''us'':87B,89B ''uuid'':270B,276B ''uuid-ossp'':269B ''variabl'':184B,186B ''various'':188B ''verifi'':37B ''within'':65B ''wrapper'':73B,253B ''бд'':24B ''конфигурац'':11B,278C ''образ'':3A,15B,282C ''пример'':10B,277C ''примочк'':9A,21B,288C ''проч'':8A,20B,287C ''расширен'':6A,18B,26B,285C,291C ''сборк'':1A,13B,280C ''установл'':25B ''шаблон'':23B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (52, 1, 'Полнотекстовый поиск в PostgreSQL. Обзорный ролик', 'polnotekstovyi_poisk_v_postgresql_obzornyi_rolik', '<p>Полнотекстовый поиск.</p>
<p>Виды индексов.</p>
<p>Как работают индексы.</p>
<p>Gin, Rum индексы.</p>
<p>&nbsp;</p>', '<p>Отличный ролик по полнотекстовой индексации и поиску в Postgresql. Виды индексов. Как работают индексы. Gin, Rum индексы.</p>
<p><iframe src="https://www.youtube.com/embed/b25r5nI19s4" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>', NULL, '', 1, '2021-11-17 11:38:18', '2021-11-17 11:38:18', 3, 'Обзорный ролик по полнотекстовой индексации и поиску в Postgresql. Виды индексов. Как работают индексы. Gin, Rum индексы.', '''gin'':21B,31C,39C ''index'':38C ''postgresql'':4A,15B,34C ''rum'':22B,32C,37C ''вид'':16B,26C ''индекс'':17B,20B,23B,27C,30C,33C,40C ''индексац'':11B ''обзорн'':5A ''отличн'':7B ''поиск'':2A,13B,25C,36C ''полнотекстов'':1A,10B,24C,35C ''работа'':19B,29C ''ролик'':6A,8B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (54, 1, 'Команды базы данных PostgreSQL для управления расширениями', 'komandy_bazy_dannyx_postgresql_dlya_upravleniya_rassireniyami', '<pre class="language-sql"><code>select * from pg_available_extensions;
CREATE EXTENSION ext_name;
ALTER EXTENSION ext_name UPDATE;
ALTER EXTENSION ext_name UPDATE TO ''1.3'';
DROP EXTENSION ext_name;</code></pre>', '<p><strong>Просмотр списка расширений</strong><br />В бд выполнить запрос:</p>
<pre class="language-sql"><code>select * from pg_available_extensions;</code></pre>
<p><strong>Установка расширений</strong></p>
<pre class="language-sql"><code>CREATE EXTENSION ext_name;</code></pre>
<p><strong>Обновление расширений</strong></p>
<pre class="language-sql"><code>ALTER EXTENSION ext_name UPDATE;</code></pre>
<p><strong>Удаление расширений</strong></p>
<pre class="language-sql"><code>DROP EXTENSION ext_name;</code></pre>', NULL, '', 1, '2021-11-17 12:12:28', '2021-11-17 12:14:26', 1, 'SQL команды PostgreSQL для управления расширениями', '''1.3'':59C ''alter'':28B,48C,53C ''avail'':18B,42C ''creat'':22B,44C ''drop'':35B,60C ''ext'':24B,30B,37B,46C,50C,55C,62C ''extens'':19B,23B,29B,36B,43C,45C,49C,54C,61C ''name'':25B,31B,38B,47C,51C,56C,63C ''pg'':17B,41C ''postgr'':65C ''postgresql'':4A,64C ''select'':15B,39C ''updat'':32B,52C,57C ''баз'':2A ''бд'':12B ''выполн'':13B ''дан'':3A ''запрос'':14B ''команд'':1A ''обновлен'':26B ''просмотр'':8B ''расширен'':7A,10B,21B,27B,34B,66C ''редактирован'':70C ''списк'':9B ''удален'':33B,69C ''управлен'':6A,68C ''установк'':20B,67C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (24, 2, 'Как удалить index.php из URL', 'kak_udalit_indexphp_iz_url', '<p>Apache .htaccess</p>
<pre class="language-apacheconf"><code>&lt;IfModule mod_rewrite.c&gt;
    RewriteEngine On
    # Redirect if index.php is in the URL
    RewriteRule ^index.php/(.+) /$1 [R=301,L]
&lt;/IfModule&gt;</code></pre>
<p>Nginx</p>
<pre class="language-nginx"><code>if ($request_uri ~* "^/index\.php(/?)(.*)") {
    return 301 $1;
}</code></pre>', '<p>Несколько вариантов удаления ненужного index.php из URL.</p>
<p>&nbsp;</p>
<p>Laravel Service Provider:</p>
<pre class="language-php"><code>use Illuminate\Support\Str;
class RouteServiceProvider extends ServiceProvider
{
    public function map(Router $router)
    {
        $this-&gt;removeIndexPhpFromUrl();
    }
    protected function removeIndexPhpFromUrl()
    {
        if (Str::contains(request()-&gt;getRequestUri(), ''/index.php/'')) {
            $url = str_replace(''index.php/'', '''', request()-&gt;getRequestUri());
            if (strlen($url) &gt; 0) {
                header("Location: $url", true, 301);
                exit;
            }
        }
    }
}</code></pre>
<p>Apache .htaccess</p>
<pre class="language-apacheconf"><code>&lt;IfModule mod_rewrite.c&gt;
    RewriteEngine On
    # Redirect if index.php is in the URL
    RewriteRule ^index.php/(.+) /$1 [R=301,L]
&lt;/IfModule&gt;</code></pre>
<p>Nginx</p>
<pre class="language-nginx"><code>if ($request_uri ~* "^/index\.php(/?)(.*)") {
    return 301 $1;
}</code></pre>', 'https://laravel.demiart.ru/remove-index-php-from-the-url/', '', 1, '2021-11-12 18:08:15', '2021-11-13 00:38:22', 1, 'Удаление ненужного фрагмента URL index.php', '''/'''','':45B ''/(.+)'':75B,107C ''/ifmodule'':80B,112C ''/index'':85B,117C ''/index.php'':39B ''0'':51B ''1'':76B,89B,108C,121C ''301'':56B,78B,88B,110C,120C ''apach'':58B,90C ''class'':20B ''contain'':36B ''exit'':57B ''extend'':22B ''function'':25B,32B ''getrequesturi'':38B,47B ''header'':52B ''htaccess'':59B,91C,123C ''ifmodul'':60B,92C ''illumin'':17B ''index.php'':3A,10B,44B,67B,74B,99C,106C,125C ''index.php/'''','':43B ''index.php/(.+)'':73B,105C ''l'':79B,111C ''laravel'':13B,122C ''locat'':53B ''map'':26B ''mod'':61B,93C ''nginx'':81B,113C,127C ''php'':86B,118C ''protect'':31B ''provid'':15B ''public'':24B ''r'':77B,109C ''redirect'':65B,97C ''removeindexphpfromurl'':30B,33B ''replac'':42B ''request'':37B,46B,83B,115C ''return'':87B,119C ''rewrite.c'':62B,94C ''rewriteengin'':63B,95C ''rewriterul'':72B,104C ''router'':27B,28B ''routeserviceprovid'':21B ''seo'':124C ''servic'':14B ''serviceprovid'':23B ''str'':19B,35B,41B ''strlen'':49B ''support'':18B ''true'':55B ''uri'':84B,116C ''url'':5A,12B,40B,50B,54B,71B,103C,126C ''use'':16B ''вариант'':7B ''ненужн'':9B ''нескольк'':6B ''удал'':2A ''удален'':8B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (39, 1, 'Управление аутентификацией клиентов PostgreSQL с помощью конфигурационного файла pg_hba.conf', 'upravlenie_autentifikaciei_klientov_postgresql_s_pomoshhyu_konfiguracionnogo_faila_pg_hbaconf', '<p>Аутентификация клиентов в PostgreSQL управляется конфигурационным файлом, который традиционно называется <code class="filename">pg_hba.conf</code></p>', '<p>Аутентификация клиентов управляется конфигурационным файлом, который традиционно называется <code class="filename">pg_hba.conf</code> и расположен в каталоге с данными кластера базы данных. (<acronym class="acronym">HBA</acronym> расшифровывается как host-based authentication &mdash; аутентификации по имени узла.)</p>', 'https://postgrespro.ru/docs/postgresql/14/auth-pg-hba-conf', '', 1, '2021-11-13 20:14:38', '2021-11-13 23:03:21', 3, 'Описание формата файла pg_hba.conf для управления конфигом PostgreSQL', '''authent'':34B ''base'':33B ''hba'':28B ''host'':32B ''host-bas'':31B ''pg_dba.conf'':51C ''pg_hba.conf'':9A,18B,49C ''postgresql'':4A,42C,50C ''аутентификац'':2A,10B,35B,39C,52C ''баз'':26B ''дан'':24B,27B ''имен'':37B ''каталог'':22B ''кластер'':25B ''клиент'':3A,11B,40C ''конфигурацион'':7A,13B,44C ''котор'':15B,46C ''называ'':17B,48C ''помощ'':6A ''располож'':20B ''расшифровыва'':29B ''традицион'':16B,47C ''узл'':38B ''управлен'':1A ''управля'':12B,43C ''файл'':8A,14B,45C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (57, 1, 'Как добавить словарь в цепочку обработки слов в конфигурации полнотекстового поиска PostgreSQL', 'kak_dobavit_slovar_v_cepocku_obrabotki_slov_v_konfiguracii_polnotekstovogo_poiska_postgresql', '<pre class="language-sql"><code>ALTER TEXT SEARCH CONFIGURATION english
ALTER MAPPING FOR word WITH unaccent, english_stem;
</code></pre>', '<p>Смотрим конфигурацию для полнотекстового поиска, например, на английском:</p>
<pre class="language-bash"><code>laradrom=# \dF+ english
Text search configuration "pg_catalog.english"
Parser: "pg_catalog.default"
      Token      | Dictionaries
-----------------+--------------
 asciihword      | english_stem
 asciiword       | english_stem
 email           | simple
 file            | simple
 float           | simple
 host            | simple
 hword           | english_stem
 hword_asciipart | english_stem
 hword_numpart   | simple
 hword_part      | english_stem
 int             | simple
 numhword        | simple
 numword         | simple
 sfloat          | simple
 uint            | simple
 url             | simple
 url_path        | simple
 version         | simple
 word            | english_stem</code></pre>
<p>Видим, в последней строчке, что слова обрабатываются словарем <strong>english_stem</strong>.</p>
<p>А нам, допустим, нужно убирать диакритические знаки (умляуты) из слов.</p>
<p>Для этого укажем перед <strong>english_stem </strong>словарь <strong>unaccent</strong>.</p>
<pre class="language-sql"><code>ALTER TEXT SEARCH CONFIGURATION english
ALTER MAPPING FOR word WITH unaccent, english_stem;
</code></pre>
<p>получится:</p>
<pre class="language-bash"><code>laradrom=# \dF+ english
Text search configuration "pg_catalog.english"
Parser: "pg_catalog.default"
      Token      | Dictionaries
-----------------+--------------
 asciihword      | english_stem
 asciiword       | english_stem
 email           | simple
 file            | simple
 float           | simple
 host            | simple
 hword           | english_stem
 hword_asciipart | english_stem
 hword_numpart   | simple
 hword_part      | english_stem
 int             | simple
 numhword        | simple
 numword         | simple
 sfloat          | simple
 uint            | simple
 url             | simple
 url_path        | simple
 version         | simple
 word            | unaccent, english_stem</code></pre>', NULL, '', 1, '2021-11-18 12:57:39', '2021-11-18 12:57:39', 1, 'SQL команда добавления словаря в цепочку обработки слов в конфигурации полнотекстового поиска PostgreSQL', '''alter'':108B,113B,182C,187C ''asciihword'':32B,133B ''asciipart'':50B,151B ''asciiword'':35B,136B ''configur'':26B,111B,127B,185C ''df'':22B,123B ''dictionari'':31B,132B ''email'':38B,139B ''english'':23B,33B,36B,47B,51B,58B,78B,88B,104B,112B,119B,124B,134B,137B,148B,152B,159B,180B,186C,193C ''file'':40B,141B ''float'':42B,143B ''host'':44B,145B ''hword'':46B,49B,53B,56B,147B,150B,154B,157B ''int'':60B,161B ''laradrom'':21B,122B ''map'':114B,188C ''numhword'':62B,163B ''numpart'':54B,155B ''numword'':64B,165B ''parser'':28B,129B ''part'':57B,158B ''path'':73B,174B ''pg_catalog.default'':29B,130B ''pg_catalog.english'':27B,128B ''postgresql'':12A,195C ''search'':25B,110B,126B,184C ''sfloat'':66B,167B ''simpl'':39B,41B,43B,45B,55B,61B,63B,65B,67B,69B,71B,74B,76B,140B,142B,144B,146B,156B,162B,164B,166B,168B,170B,172B,175B,177B ''stem'':34B,37B,48B,52B,59B,79B,89B,105B,120B,135B,138B,149B,153B,160B,181B,194C ''text'':24B,109B,125B,183C ''token'':30B,131B ''uint'':68B,169B ''unacc'':107B,118B,179B,192C ''url'':70B,72B,171B,173B ''version'':75B,176B ''word'':77B,116B,178B,190C ''английск'':20B ''вид'':80B ''диакритическ'':95B ''добав'':2A,200C ''допуст'':92B ''знак'':96B ''конфигурац'':9A,14B ''нам'':91B ''например'':18B ''нужн'':93B ''обрабатыва'':86B ''обработк'':6A ''поиск'':11A,17B,197C,198C ''полнотекстов'':10A,16B,196C ''получ'':121B ''последн'':82B ''слов'':7A,85B,99B ''словар'':3A,87B,106B,199C ''смотр'':13B ''строчк'':83B ''убира'':94B ''укаж'':102B ''умляут'':97B ''цепочк'':5A,201C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (58, 1, 'Ошибка отладки PhpStorm Docker: Xdebug: [Step Debug] Could not connect to debugging client. Tried: host.docker.internal:9003 (fallback through xdebug.client_host/xdebug.client_port)', 'osibka_otladki_phpstorm_docker_xdebug_step_debug_could_not_connect_to_debugging_client_tried_hostdockerinternal9003_fallback_through_xdebugclient_hostxdebugclient_port', '<p>docker-compose.yml</p>
<pre class="language-yaml"><code>    extra_hosts:
      - "host.docker.internal:host-gateway"</code></pre>
<p>xdebug.ini</p>
<pre class="language-bash"><code>xdebug.mode=debug
xdebug.discover_client_host=1
xdebug.start_with_request=yes

xdebug.idekey=PHPSTORM
xdebug.client_host=host.docker.internal
</code></pre>', '<p>В процессе отладки в IDE PhpStorm с помощью XDebug в Docker может вылететь такая ошибка:</p>
<p><strong>Xdebug: [Step Debug] Could not connect to debugging client. Tried: host.docker.internal:9003 (fallback through xdebug.client_host/xdebug.client_port)&nbsp;</strong></p>
<p>Может помочь добавление следующих строк в конфиги:</p>
<p><strong>docker-compose.yml</strong></p>
<pre class="language-yaml"><code>    extra_hosts:
      - "host.docker.internal:host-gateway"</code></pre>
<p><strong>xdebug.ini</strong></p>
<pre class="language-bash"><code>xdebug.mode=debug
xdebug.discover_client_host=1
xdebug.start_with_request=yes

; idekey value is specific to PhpStorm
xdebug.idekey=PHPSTORM
xdebug.client_host=host.docker.internal
</code></pre>', NULL, '', 1, '2021-11-18 20:15:56', '2021-11-19 02:07:42', 2, 'Исправление ошибки: Xdebug: [Step Debug] Could not connect to debugging client. Tried: host.docker.internal:9003 (fallback through xdebug.client_host/xdebug.client_port) ', '''1'':70B,99C ''client'':13A,43B,68B,97C ''connect'':10A,40B ''could'':8A,38B ''debug'':7A,12A,37B,42B,66B,95C ''docker'':4A,30B,109C ''docker-compose.yml'':57B,86C ''extra'':58B,87C ''fallback'':16A,46B ''gateway'':63B,92C ''host'':59B,62B,69B,84B,88C,91C,98C,107C ''host-gateway'':61B,90C ''host.docker.internal'':60B,85B,89C,108C ''host.docker.internal:9003'':15A,45B ''host/xdebug.client_port'':19A,49B ''ide'':24B ''idekey'':75B ''phpstorm'':3A,25B,80B,82B,105C,110C ''request'':73B,102C ''specif'':78B ''step'':6A,36B ''tri'':14A,44B ''valu'':76B ''xdebug'':5A,28B,35B,111C ''xdebug.client'':18A,48B,83B,106C ''xdebug.discover'':67B,96C ''xdebug.idekey'':81B,104C ''xdebug.ini'':64B,93C ''xdebug.mode'':65B,94C ''xdebug.start'':71B,100C ''yes'':74B,103C ''вылетет'':32B ''добавлен'':52B ''конфиг'':56B ''отладк'':2A,22B,112C ''ошибк'':1A,34B,113C ''помоч'':51B ''помощ'':27B ''процесс'':21B ''след'':53B ''строк'':54B ''так'':33B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (1, 7, 'Простой конфиг для отправки почты через SMTP', 'prostoi_konfig_dlya_otpravki_pocty_cerez_smtp', '<pre class="language-bash"><code>MAIL_MAILER=smtp
MAIL_HOST=your.domain
MAIL_PORT=587
MAIL_USERNAME=noreply@your.domain
MAIL_PASSWORD=password
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS=noreply@your.domain
MAIL_FROM_NAME="Send Bot"</code></pre>', '<p>Простая конфигурация&nbsp; в .env для отправки почты через smtp</p>
<p>Хостинг Debian Linux</p>
<pre class="language-bash"><code>MAIL_MAILER=smtp
MAIL_HOST=your.domain
MAIL_PORT=587
MAIL_USERNAME=noreply@your.domain
MAIL_PASSWORD=password
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS=noreply@your.domain
MAIL_FROM_NAME="Send Bot"</code></pre>', NULL, '', 1, '2021-10-28 19:40:08', '2021-11-11 11:53:24', 1, 'Пример конфигурация  в файле .env для отправки почты через smtp', '''587'':28B,55C ''address'':40B,67C ''bot'':46B,73C ''debian'':18B,76C ''email'':75C ''encrypt'':36B,63C ''env'':11B ''host'':24B,51C ''laravel'':77C ''linux'':19B ''mail'':20B,23B,26B,29B,32B,35B,38B,42B,47C,50C,53C,56C,59C,62C,65C,69C ''mailer'':21B,48C ''name'':44B,71C ''noreply@your.domain'':31B,41B,58C,68C ''null'':37B,64C ''password'':33B,34B,60C,61C ''port'':27B,54C ''send'':45B,72C ''smtp'':7A,16B,22B,49C,78C ''usernam'':30B,57C ''your.domain'':25B,52C ''конфиг'':2A ''конфигурац'':9B ''отправк'':4A,13B ''почт'':5A,14B,74C ''прост'':1A,8B ''хостинг'':17B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (46, 1, 'Рейтинг баз данных (DB-Engines Ranking)', 'reiting_baz_dannyx_db_engines_ranking', '<p>Ежемесячный рейтинг популярности систем управления базами данных</p>', '<p>Рейтинг всевозможных систем управления базами данных по популярности.</p>
<p>- Реляционные</p>
<p>- Документоориентированные</p>
<p>- Ключ-значение</p>
<p>- Поисковые движки</p>
<p>- Графовые</p>
<p>Ежемесячный пересчет, графики, динамика</p>', 'https://db-engines.com/en/ranking', '', 1, '2021-11-14 14:43:01', '2021-11-14 14:43:01', 8, 'Мировые рейтинги и графики популярности баз данных', '''db'':5A ''db-engin'':4A ''dbma'':36C ''engin'':6A ''rank'':7A,41C ''rate'':37C ''баз'':2A,12B,33C,39C ''всевозможн'':9B ''график'':26B ''графов'':23B ''дан'':3A,13B,34C,40C ''движк'':22B ''динамик'':27B ''документоориентирова'':17B ''ежемесячн'':24B,28C ''значен'':20B ''ключ'':19B ''ключ-значен'':18B ''пересчет'':25B ''поисков'':21B ''популярн'':15B,30C ''рейтинг'':1A,8B,29C,38C ''реляцион'':16B ''сист'':10B,31C ''субд'':35C ''управлен'':11B,32C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (49, 1, 'fatal error: sys/sdt.h: No such file or directory', 'fatal_error_syssdth_no_such_file_or_directory', '<pre class="language-bash"><code>sudo apt update
sudo apt install systemtap-sdt-dev</code></pre>', '<p>Выпала ошибка: fatal error: sys/sdt.h: No such file or directory при сборке Postgresql.</p>
<p>Для устранения надо установить пакет <strong>systemtap-sdt-devel</strong>.</p>
<pre class="language-bash"><code>sudo apt update
sudo apt install systemtap-sdt-dev</code></pre>', NULL, '', 1, '2021-11-16 17:58:27', '2021-11-16 17:58:27', 2, 'Ошибка: fatal error: sys/sdt.h: No such file or directory при сборке Postgresql', '''apt'':32B,35B,42C,45C ''dev'':40B,50C ''devel'':30B ''directori'':8A,18B ''error'':2A,12B,52C ''fatal'':1A,11B ''file'':6A,16B ''instal'':36B,46C ''postgresql'':21B,51C ''sdt'':29B,39B,49C ''sdt.h'':56C ''sudo'':31B,34B,41C,44C ''sys/sdt.h'':3A,13B,55C ''systemtap'':28B,38B,48C ''systemtap-sdt-dev'':37B,47C ''systemtap-sdt-devel'':27B ''updat'':33B,43C ''выпа'':9B ''ошибк'':10B,53C ''пакет'':26B ''сборк'':20B ''установ'':25B ''установк'':54C ''устранен'':23B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (5, 1, 'Как перенаправить на https в .htaccess', 'kak_perenapravit_na_https_v_htaccess', '<pre class=\"language-apacheconf\"><code>RewriteEngine On

# HTTPS redirect if available
RewriteCond %{HTTPS} !=on
RewriteRule ^(.*)$ https://%{HTTP_HOST}/$1 [R=301,L]
</code></pre>', '<pre>В .htaccess добавляем:</pre>
<pre class=\"language-apacheconf\"><code>RewriteEngine On

# HTTPS redirect if available
RewriteCond %{HTTPS} !=on
RewriteRule ^(.*)$ https://%{HTTP_HOST}/$1 [R=301,L]
</code></pre>', NULL, '', 1, '2021-10-29 08:20:07', '2021-11-04 16:50:52', 2, 'Инструкции в файле .htaccess для редиректа с http: на https:', '''1'':27B,48C ''301'':29B,50C ''apacheconf'':14B,35C ''avail'':20B,41C ''class'':11B,32C ''host'':26B,47C ''htaccess'':6A,8B,54C ''http'':25B,46C,52C ''https'':4A,17B,22B,38C,43C,53C ''l'':30B,51C ''languag'':13B,34C ''language-apacheconf'':12B,33C ''pre'':10B,31C ''r'':28B,49C ''redirect'':18B,39C,55C ''rewritecond'':21B,42C ''rewriteengin'':15B,36C ''rewriterul'':24B,45C ''добавля'':9B ''перенаправ'':2A ''перенаправлен'':56C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (6, 1, 'Как в PhpStorm разместить вкладки открытых файлов справа', 'kak_v_phpstorm_razmestit_vkladki_otkrytyx_failov_sprava', '<p>Settings-&gt;Editor-&gt;General-&gt;Editor Tabs-&gt;Appearance-&gt;Tab placement-&gt;Right</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp;</p>', '<p>Вкладки открытых файлов в PhpStorm можно разместить в колонке справа.</p>
<p>Если открытых файлов много - это удобно.</p>
<p><strong>Settings-&gt;Editor-&gt;General-&gt;Editor Tabs-&gt;Appearance-&gt;Tab placement-&gt;Right</strong></p>
<p>&nbsp;</p>
<p>страница настройки вкладок:</p>
<p><strong>Settings-&gt;Editor-&gt;General-&gt;Editor Tabs</strong></p>', NULL, '', 1, '2021-10-29 09:10:48', '2021-11-04 16:52:04', 1, 'Описание того как в IDE PhpStorm разместить вкладки открытых файлов справа в колонку', '''appear'':30B,47C ''editor'':26B,28B,38B,40B,43C,45C ''general'':27B,39B,44C ''phpstorm'':3A,13B,51C ''placement'':32B,49C ''right'':33B,50C ''set'':25B,37B,42C ''tab'':29B,31B,41B,46C,48C ''вкладк'':5A,9B,52C ''вкладок'':36B ''колонк'':17B ''настройк'':35B ''открыт'':6A,10B,20B ''размест'':4A,15B ''справ'':8A,18B,53C ''страниц'':34B ''удобн'':24B ''файл'':7A,11B,21B ''эт'':23B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (10, 7, 'Как добавить плагин Youtube в CKEditor', 'kak_dobavit_plagin_youtube_v_ckeditor', '<p>Скачиваем.</p>
<p>Добавляем в конфиг строку</p>
<pre>config.extraPlugins = ''youtube'';</pre>', '<p>Скачиваем.</p>
<p>Добавляем в конфиг строку</p>
<pre>config.extraPlugins = ''youtube'';</pre>
<p>Указываем параметры</p>
<p><strong>Video width:</strong></p>
<pre>config.youtube_width = ''640'';</pre>
<p><br /><strong>Video height:</strong></p>
<pre>config.youtube_height = ''480'';</pre>
<p><br /><strong>Make responsive (ignore width and height, fit to width):</strong></p>
<pre>config.youtube_responsive = true;</pre>
<p><br /><strong>Show related videos:</strong></p>
<pre>config.youtube_related = true;</pre>
<p>&nbsp;</p>', 'https://ckeditor.com/cke4/addon/youtube', '', 1, '2021-10-30 09:36:54', '2021-11-04 16:57:39', 1, 'Добавление плагина Youtube в CKEditor', '''480'':25B ''640'':20B ''ckeditor'':6A,51C ''config.extraplugins'':12B,49C ''config.youtube'':18B,23B,35B,41B ''fit'':32B ''height'':22B,24B,31B ''ignor'':28B ''javascript'':53C ''make'':26B ''relat'':39B,42B ''respons'':27B,36B ''show'':38B ''true'':37B,43B ''video'':16B,21B,40B ''width'':17B,19B,29B,34B ''youtub'':4A,13B,50C,52C ''добав'':2A ''добавля'':8B,45C ''конфиг'':10B,47C ''параметр'':15B ''плагин'':3A ''скачива'':7B,44C ''строк'':11B,48C ''указыва'':14B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (14, 2, 'Git с несколькими удалёнными репозиториями', 'git_s_neskolkimi_udalyonnymi_repozitoriyami', '<pre class=\"language-bash\"><code>git remote add second &lt;URL&gt;
git push second master</code></pre>', '<p>Как использовать git с несколькими удалёнными репозиториями.</p>
<p>На самом деле использовать git таким способом довольно просто. Вы добавляете remote так же, как и существующую папку, за исключением того, что вместо добавления &laquo;исходного&raquo; remote вы даёте ему другое имя.</p>
<pre class=\"language-bash\"><code>git remote add &lt;ИМЯ&gt; &lt;URL&gt;</code></pre>
<p>Затем, когда вы хотите push на второй remote, добавьте удалённое имя и ветвь к своей команде push:</p>
<pre class=\"language-bash\"><code>git push second master</code></pre>
<p>Или переключите remote по умолчанию с помощью --set-upstream:</p>
<p><strong>git push --set-upstream second master</strong></p>
<p>Это простейшая настройка, однако она требует, чтобы вы либо передавали имя remote в качестве аргумента, либо каждый раз переключали remote.&nbsp;</p>
<p>Подробнее оп ссылке:</p>', 'https://zalinux.ru/?p=6286', '', 1, '2021-11-01 22:05:37', '2021-11-04 17:00:26', 1, 'Как в git пушить в несколько удаленных репозиториев', '''add'':51B,127C ''bash'':48B,75B,124C ''class'':45B,72B,121C ''git'':1A,8B,17B,49B,76B,90B,125C,130C,134C ''languag'':47B,74B,123C ''language-bash'':46B,73B,122C ''master'':79B,96B,133C ''pre'':44B,71B,120C ''push'':58B,70B,77B,91B,131C ''remot'':24B,38B,50B,61B,82B,108B,116B,126C ''second'':78B,95B,128C,132C ''set'':88B,93B ''set-upstream'':87B,92B ''upstream'':89B,94B ''url'':53B,129C ''аргумент'':111B ''ветв'':66B ''вмест'':35B ''втор'':60B ''дает'':40B ''дел'':15B ''добавлен'':36B ''добавля'':23B ''добавьт'':62B ''довольн'':20B ''друг'':42B ''зат'':54B ''им'':43B,52B,64B,107B ''исключен'':32B ''использова'':7B,16B ''исходн'':37B ''кажд'':113B ''качеств'':110B ''команд'':69B ''либ'':105B,112B ''настройк'':99B ''нескольк'':3A,10B,136C ''однак'':100B ''оп'':118B ''папк'':30B ''передава'':106B ''переключ'':81B ''переключа'':115B ''подробн'':117B ''помощ'':86B ''прост'':21B,98B ''репозитор'':5A,12B,135C,137C ''сам'':14B ''сво'':68B ''способ'':19B ''ссылк'':119B ''существ'':29B ''так'':18B ''треб'':102B ''удален'':4A,11B,63B ''умолчан'':84B ''хот'':57B ''эт'':97B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (16, 2, 'Как изменить имя и почту git коммиттера (committer name and email)?', 'kak_izmenit_imya_i_poctu_git_kommittera_committer_name_and_email', '<pre class="language-bash"><code>$ git config --global user.name "John Doe"
$ git config --global user.email "john@doe.org"
</code></pre>
<pre class="language-bash"><code>$ git config user.name "John Doe"
$ git config user.email "john@doe.org"</code></pre>
<p>&nbsp;</p>', '<p>Глобально:</p>
<pre class="language-bash"><code>$ git config --global user.name "John Doe"
$ git config --global user.email "john@doe.org"
</code></pre>
<p>В репозитории:</p>
<pre class="language-bash"><code>$ git config user.name "John Doe"
$ git config user.email "john@doe.org"</code></pre>
<p>&nbsp;</p>', NULL, '', 1, '2021-11-02 10:10:14', '2021-11-11 11:49:03', 1, 'Массовое изменение имени и почты git коммиттера (committer name and email)', '''commit'':57C ''committ'':8A ''config'':14B,20B,27B,32B,36C,42C,47C,52C ''doe'':18B,30B,40C,50C ''email'':11A ''git'':6A,13B,19B,26B,31B,35C,41C,46C,51C,56C ''global'':15B,21B,37C,43C ''john'':17B,29B,39C,49C ''john@doe.org'':23B,34B,45C,54C ''name'':9A ''user.email'':22B,33B,44C,53C ''user.name'':16B,28B,38C,48C ''глобальн'':12B ''измен'':2A,59C,61C ''им'':3A,58C,62C ''коммиттер'':7A ''почт'':5A,55C,60C ''репозитор'':25B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (21, 1, 'Как настроить PhpStorm + Docker + Xdebug', 'kak_nastroit_phpstorm_docker_xdebug', '<p>Подробное описание настройки</p>
<p>PhpStorm + Docker + Xdebug</p>', '<p>Рабочее решение настройки Xdebug&nbsp;для использования его при отладке в PhpStorm с использованием удаленного интерпретатора PHP, работающего внутри Docker-контейнера.</p>
<p><strong>Важное замечание:</strong></p>
<p>Для Xdebug 3 есть некоторые изменения, не описанные в статье.</p>
<p>Актуальные работающие конфиги есть в репозитории автора статьи https://github.com/denisbondar/docker_php-fpm_xdebug.</p>
<p>&nbsp;</p>
<p><strong>php.ini</strong></p>
<pre class=\"language-bash\"><code>xdebug.mode=debug
xdebug.discover_client_host=1
xdebug.start_with_request=yes

cgi.fix_pathinfo=0

post_max_size = 256M
upload_max_filesize = 256M

max_execution_time = 1000
max_input_time = 1000</code></pre>
<p>&nbsp;</p>
<p><strong>Dockerfile</strong></p>
<pre class=\"language-docker\"><code>FROM php:8-fpm

RUN apt-get update &amp;&amp; apt-get install -y wget git unzip \
    &amp;&amp; pecl install xdebug-3.0.1 \
    &amp;&amp; docker-php-ext-enable xdebug

RUN wget https://getcomposer.org/installer -O - -q \
    | php -- --install-dir=/bin --filename=composer --quiet

ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /var/www</code></pre>
<p>&nbsp;</p>', 'https://blog.denisbondar.com/post/phpstorm_docker_xdebug', '', 1, '2021-11-06 19:05:02', '2021-11-06 19:06:11', 3, 'Рабочее решение настройки Xdebug для использования его при отладке в PhpStorm с использованием удаленного интерпретатора PHP, работающего внутри Docker-контейнера.', '''/bin'':129B ''/denisbondar/docker_php-fpm_xdebug.'':49B ''/installer'':122B ''/var/www'':139B ''0'':68B ''1'':61B,137B ''1000'':80B,84B ''256m'':72B,76B ''3'':31B ''3.0.1'':111B ''8'':93B ''allow'':135B ''apt'':97B,101B ''apt-get'':96B,100B ''bash'':55B ''cgi.fix'':66B ''class'':52B,87B ''client'':59B ''compos'':131B,134B ''debug'':57B ''dir'':128B ''docker'':4A,25B,90B,113B,144C,146C ''docker-php-ext-en'':112B ''docker-контейнер'':24B ''dockerfil'':85B ''enabl'':116B ''env'':133B ''execut'':78B ''ext'':115B ''filenam'':130B ''files'':75B ''fpm'':94B ''get'':98B,102B ''getcomposer.org'':121B ''getcomposer.org/installer'':120B ''git'':106B ''github.com'':48B ''github.com/denisbondar/docker_php-fpm_xdebug.'':47B ''host'':60B ''input'':82B ''instal'':103B,109B,127B ''install-dir'':126B ''languag'':54B,89B ''language-bash'':53B ''language-dock'':88B ''linux'':151C ''max'':70B,74B,77B,81B ''o'':123B ''pathinfo'':67B ''pecl'':108B ''php'':21B,92B,114B,125B ''php.ini'':50B ''phpstorm'':3A,16B,143C,147C ''post'':69B ''pre'':51B,86B ''q'':124B ''quiet'':132B ''request'':64B ''run'':95B,118B ''size'':71B ''superus'':136B ''time'':79B,83B ''unzip'':107B ''updat'':99B ''upload'':73B ''wget'':105B,119B ''workdir'':138B ''xdebug'':5A,9B,30B,110B,117B,145C,149C ''xdebug.discover'':58B ''xdebug.mode'':56B ''xdebug.start'':62B ''y'':104B ''yes'':65B ''автор'':45B ''актуальн'':39B ''важн'':27B ''внутр'':23B ''докер'':148C ''замечан'':28B ''изменен'':34B ''интерпретатор'':20B ''использован'':11B,18B ''контейнер'':26B ''конфиг'':41B ''настро'':2A ''настройк'':8B,142C ''некотор'':33B ''описа'':36B ''описан'':141C ''отладк'':14B,150C ''подробн'':140C ''работа'':22B,40B ''рабоч'':6B ''репозитор'':44B ''решен'':7B ''стат'':38B,46B ''удален'':19B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (27, 1, 'Замена символов переноса строки в Postgresql базе', 'zamena_simvolov_perenosa_stroki_v_postgresql_baze', '<pre class="language-sql"><code>UPDATE your_table
SET your_column =
    replace(replace(replace(replace(your_column,
        ''\r'', E''\r''),
        ''\n'', E''\n''),
        ''\t'', E''\t''),
        ''\\'', ''\'');</code></pre>', '<p>При переносе базы из mySQL в Postgresql могут некорректно импортироваться символы переноса строки "\n" и возврата каретки "\r" и начать показыватья на странице в явном виде.</p>
<p>С помощью этого скрипта, примененного к нужной таблице и колонке, можно поправить эту проблему.</p>
<pre class="language-sql"><code>UPDATE your_table
SET your_column =
    replace(replace(replace(replace(your_column,
        ''\r'', E''\r''),
        ''\n'', E''\n''),
        ''\t'', E''\t''),
        ''\\'', ''\'');</code></pre>', NULL, '', 1, '2021-11-13 01:13:30', '2021-11-13 01:13:30', 2, 'Корректировка некорректного импорта  символов переноса строки "\n" и возврата каретки "\r" в базу Postgresql', '''column'':53B,59B,73C,79C ''e'':61B,64B,67B,81C,84C,87C ''mysql'':12B ''n'':21B,63B,65B,83C,85C ''postgresql'':6A,14B,88C ''r'':25B,60B,62B,80C,82C ''replac'':54B,55B,56B,57B,74C,75C,76C,77C ''set'':51B,71C ''tabl'':50B,70C ''updat'':48B,68C ''баз'':7A,10B ''вид'':33B ''возврат'':23B ''зам'':1A,92C ''импортирова'':17B ''каретк'':24B ''колонк'':43B ''могут'':15B ''нача'':27B ''некорректн'':16B ''нужн'':40B ''перевод'':90C ''перенос'':3A,9B,19B ''показыват'':28B ''помощ'':35B ''поправ'':45B ''применен'':38B ''пробл'':47B ''символ'':2A,18B,89C ''скрипт'':37B ''страниц'':30B ''строк'':4A,20B,91C ''таблиц'':41B ''явн'':32B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (28, 1, 'Различия между boot и register методами в ServiceProvider классах в Laravel', 'razliciya_mezdu_boot_i_register_metodami_v_serviceprovider_klassax_v_laravel', '<p>Сначала провайдеры регистрируются, а потом загружаются - запуск метода boot().</p>
<p>Метод register() следует использовать только, для регистрации сервисов в контейнере.</p>
<p>Метод boot() для всего остального.</p>', '<p>Сначала провайдеры регистрируются, а потом загружаются - запуск метода boot().</p>
<p>&nbsp;</p>
<p>Распространенная ошибка при использовании поставщиков услуг - это попытка использовать услуги, предоставляемые другим поставщиком, в методе регистрации.</p>
<p>&nbsp;</p>
<p>Поскольку в рамках метода регистрации у нас нет гарантии, что все остальные поставщики были загружены, услуга, которую вы пытаетесь использовать, может быть еще недоступна.</p>
<p>&nbsp;</p>
<p>Таким образом, код поставщика услуг, использующий другие службы, всегда должен находиться в методе загрузки.</p>
<p>&nbsp;</p>
<p>Метод register() следует использовать только, для регистрации сервисов в контейнере.</p>
<p>&nbsp;</p>
<p>В рамках метода загрузки можно делать все, что захотите: регистрировать прослушиватели событий, включать файл маршрутов, регистрировать фильтры и так далее.</p>
<p>&nbsp;</p>
<p>Так что register() предназначен только для привязки.</p>', NULL, '', 1, '2021-11-13 01:22:11', '2021-11-13 01:24:00', 1, 'Чем различаются между собой boot и register методы в Laravel ServiceProvider классах', '''boot'':3A,20B,120C,132C,137C ''laravel'':11A,136C ''regist'':5A,76B,107B,122C,138C ''serviceprovid'':8A,139C ''включа'':97B ''гарант'':45B ''дал'':104B ''дела'':90B ''долж'':70B ''друг'':32B,67B ''загруж'':51B ''загружа'':17B,117C ''загрузк'':74B,88B ''запуск'':18B,118C ''захот'':93B ''использ'':66B ''использова'':29B,56B,78B,124C ''использован'':24B ''класс'':9A ''код'':63B ''контейнер'':84B,130C ''котор'':53B ''маршрут'':99B ''метод'':6A,19B,35B,40B,73B,75B,87B,119C,121C,131C ''наход'':71B ''недоступн'':60B ''образ'':62B ''остальн'':48B,135C ''ошибк'':22B ''попытк'':28B ''поскольк'':37B ''поставщик'':25B,33B,49B,64B ''предназнач'':108B ''предоставля'':31B ''привязк'':111B ''провайдер'':13B,113C ''прослушивател'':95B ''пыта'':55B ''различ'':1A,140C ''рамк'':39B,86B ''распространен'':21B ''регистрац'':36B,41B,81B,127C ''регистрир'':14B,114C ''регистрирова'':94B,100B ''сервис'':82B,128C ''след'':77B,123C ''служб'':68B ''снача'':12B,112C ''событ'':96B ''так'':61B ''услуг'':26B,30B,52B,65B ''файл'':98B ''фильтр'':101B ''эт'':27B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (31, 1, 'Полнотекстовый поиск в Postgresql. Решения для Laravel', 'polnotekstovyi_poisk_v_postgresql_reseniya_dlya_laravel', '<p>Список ссылок на статьи по полнотекстовому поиску в Postgresql.</p>
<p>Компоненты и решения для работы с Postgresql в Laravel.</p>', '<p>Список ссылок на статьи по полнотекстовому поиску в Postgresql.</p>
<p>Компоненты и решения для работы с Postgresql в Laravel.</p>
<p>- <a href="https://postgrespro.ru/docs/postgresql/14/textsearch" target="_blank" rel="noopener">Документация Postgresql полнотекстовый поиск</a></p>
<p>- <a href="https://habr.com/ru/post/442170/" target="_blank" rel="noopener">Готовим полнотекстовый поиск в Postgres. Часть 1</a></p>
<p>- <a href="https://habr.com/ru/post/443368/" target="_blank" rel="noopener">Готовим полнотекстовый поиск в Postgres. Часть 2</a></p>
<p>- <a href="https://matthewdaly.co.uk/blog/2017/12/02/full-text-search-with-laravel-and-postgresql/" target="_blank" rel="noopener">Full text search with Laravel and PostgreSQL</a> (статья на английском 2017 год)</p>
<p>- <a href="https://stackoverflow.com/questions/60827043/full-text-search-with-laravel-and-postgresql" target="_blank" rel="noopener">Full text search with Laravel and Postgresql</a> (вопрос на Stackoverflow)</p>
<p>- <a href="https://github.com/pmatseykanets/laravel-scout-postgres#usage" target="_blank" rel="noopener">PostgreSQL Full Text Search Engine for Laravel Scout</a> (пакет на github)</p>
<p>- <a href="https://github.com/umbrellio/laravel-pg-extensions" target="_blank" rel="noopener">Laravel PG extensions</a> (Пакет на github. Расширяет слой базы данных Laravel, позволяя использовать определенные функции Postgres без сырых запросов)</p>
<p>- <a href="https://github.com/tpetry/laravel-postgresql-enhanced" target="_blank" rel="noopener">Laravel Postgresql Enhanced</a> (расширение, добавляющее специфические функции Postgresql в проект Laravel)</p>
<p>&nbsp;</p>', NULL, '', 1, '2021-11-13 13:10:29', '2021-11-13 13:38:30', 3, 'Список ссылок на статьи по полнотекстовому поиску в Postgresql.
Компоненты и решения для работы с Postgresql в Laravel.', '''1'':36B ''2'':43B ''2017'':54B ''engin'':70B ''enhanc'':98B ''extens'':79B ''full'':44B,56B,67B ''fulltext'':127C ''github'':76B,82B ''laravel'':7A,25B,48B,60B,72B,77B,87B,96B,106B,124C,125C ''pg'':78B ''postgr'':34B,41B,92B ''postgresql'':4A,16B,23B,27B,50B,62B,66B,97B,103B,115C,122C,126C ''scout'':73B,131C ''search'':46B,58B,69B,128C ''stackoverflow'':65B ''text'':45B,57B,68B ''tsvector'':132C ''английск'':53B ''баз'':85B ''вопрос'':63B ''год'':55B ''готов'':30B,37B ''дан'':86B ''добавля'':100B ''документац'':26B ''запрос'':95B ''использова'':89B ''компонент'':17B,116C ''определен'':90B ''пакет'':74B,80B ''позвол'':88B ''поиск'':2A,14B,29B,32B,39B,113C,130C ''полнотекстов'':1A,13B,28B,31B,38B,112C,129C ''проект'':105B ''работ'':21B,120C ''расширен'':99B ''расширя'':83B ''решен'':5A,19B,118C ''сло'':84B ''специфическ'':101B ''список'':8B,107C ''ссылок'':9B,108C ''стат'':11B,51B,110C ''сыр'':94B ''функц'':91B,102B ''част'':35B,42B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (33, 1, 'Как задать новое значение для автоинкрементного поля в PostgreSQL?', 'kak_zadat_novoe_znacenie_dlya_avtoinkrementnogo_polya_v_postgresql', '<pre class="language-sql"><code>ALTER SEQUENCE product_id_seq RESTART WITH 1453
</code></pre>', '<p>Задать новое значение для автоинкрементного поля в PostgreSQL.</p>
<p>Если вы создали таблицу product со столбцом id, то последовательность будет называться не просто product, а скорее product_id_seq (то есть $ {table} _ $ {column} _seq).</p>
<p>Поэтому команда ALTER SEQUENCE для смены значения будет такая:</p>
<pre class="language-sql"><code>ALTER SEQUENCE product_id_seq RESTART WITH 1453
</code></pre>
<p>&nbsp;</p>', NULL, '', 1, '2021-11-13 19:35:41', '2021-11-13 19:35:41', 1, 'Задание новое значение для автоинкрементного поля в PostgreSQL', '''1453'':59B,67C ''alter'':45B,52B,60C ''autoincr'':69C ''column'':41B ''id'':25B,36B,55B,63C ''postgresql'':9A,17B,68C ''product'':22B,32B,35B,54B,62C ''restart'':57B,65C ''seq'':37B,42B,56B,64C ''sequenc'':46B,53B,61C,72C ''tabl'':40B ''автоинкремент'':70C ''автоинкрементн'':6A,14B ''зада'':2A,10B ''значен'':4A,12B,49B ''команд'':44B ''называ'':29B ''нов'':3A,11B ''пол'':7A,15B ''последовательн'':27B,71C ''поэт'':43B ''прост'':31B ''скор'':34B ''смен'':48B ''созда'':20B ''столбц'':24B ''таблиц'':21B ''так'':51B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (37, 7, 'Управления несколькими версиями php на linux с помощью phpbrew', 'upravleniya_neskolkimi_versiyami_php_na_linux_s_pomoshhyu_phpbrew', '<p><strong>phpbrew</strong> - сборка и установка нескольких версий php в вашей $HOME директории</p>', '<p>phpbrew - сборка и установка нескольких версий php в вашей $HOME директории.</p>
<p>&nbsp;</p>', 'https://github.com/phpbrew/phpbrew/blob/master/README.md', '', 1, '2021-11-13 20:06:48', '2021-11-13 20:06:48', 3, 'phpbrew - инструкция по сборке и установке нескольких версий php в вашей $HOME директории', '''home'':19B,30C ''linux'':6A ''php'':4A,16B,27C,32C,36C ''phpbrew'':9A,10B,21C,33C ''ваш'':18B,29C ''верс'':3A,15B,26C,35C ''директор'':20B,31C ''нескольк'':2A,14B,25C,34C ''помощ'':8A ''сборк'':11B,22C ''управлен'':1A ''установк'':13B,24C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (4, 1, 'Несколько команд в Dockerfile', 'neskolko_komand_v_dockerfile', '<pre class="\&quot;\&quot; language-docker"><code>CMD php /var/www/backend/artisan storage:link &amp;&amp; php /var/www/backend/artisan queue:work</code></pre>', '<pre>Разделяем команды "&amp;&amp;"

Например поднимаем контейнер с PHP, потом создаем симлинк на storge и запускаем обработку очереди:</pre>
<pre class="\&quot;\&quot; language-docker"><code>CMD php /var/www/backend/artisan storage:link &amp;&amp; php /var/www/backend/artisan queue:work</code></pre>
<p>или же создать bash-файл &laquo;start.sh&raquo; и там прописать все нужные команды, а в Dockerfile</p>
<pre class="language-docker"><code>CMD ["/start.sh"]</code></pre>', NULL, '', 1, '2021-10-29 00:16:26', '2021-11-11 11:45:41', 1, 'В Dockerfile может быть только одна инструкция CMD. Как с помощью этой инструкции выполнить несколько команд', '''/start.sh'':47B ''/var/www/backend/artisan'':23B,27B,50C,54C ''bash'':34B ''bash-файл'':33B ''cmd'':21B,46B,48C ''docker'':57C ''dockerfil'':4A,45B ''link'':25B,52C ''php'':11B,22B,26B,49C,53C ''queue'':28B,55C ''start.sh'':36B ''storag'':24B,51C ''storg'':16B ''work'':29B,56C ''запуска'':18B ''команд'':2A,6B,42B,59C ''контейнер'':9B ''например'':7B ''нескольк'':1A,58C ''нужн'':41B ''обработк'':19B ''очеред'':20B ''поднима'':8B ''прописа'':39B ''разделя'':5B ''симлинк'':14B ''созда'':13B,32B ''файл'':35B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (47, 1, 'PostgreSQL: как получить список установленных расширений (extensions) в базе', 'postgresql_kak_polucit_spisok_ustanovlennyx_rassirenii_extensions_v_baze', '<pre class="language-bash"><code>select * from pg_available_extensions where installed_version is not null;</code></pre>', '<p>Команда получения списка установленных расширений в базе данных PostgreSQL:</p>
<pre class="language-bash"><code>select * from pg_available_extensions where installed_version is not null;</code></pre>', NULL, '', 1, '2021-11-16 16:40:48', '2021-11-16 16:40:48', 1, 'Команда получения списка установленных расширений в базе данных PostgreSQL', '''avail'':22B,33C ''extens'':7A,23B,34C ''instal'':25B,36C ''null'':29B,40C ''pg'':21B,32C ''postgr'':41C ''postgresql'':1A,18B ''select'':19B,30C ''version'':26B,37C ''баз'':9A,16B ''дан'':17B ''команд'':10B ''получ'':3A ''получен'':11B ''расширен'':6A,14B,42C ''списк'':12B ''список'':4A ''установлен'':5A,13B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (15, 2, 'Отправить изменения в несколько репозиториев одной командой push', 'otpravit_izmeneniya_v_neskolko_repozitoriev_odnoi_komandoi_push', '<pre class="language-bash"><code>// Добавляем
git remote add "all" git@github.com:fudeglan/gigalab.uz.git

git remote set-url --add --push "all" git@github.com:fudeglan/gigalab.uz.git
git remote set-url --add --push "all" git@bitbucket.org:fudeglan/gigalab.uz.git
git remote set-url --add --push "all" git@gitlab.com:fudeglan/gigalab.uz.git

// Отправляем
git push all</code></pre>', '<div class="s-prose js-post-body">
<p>Если вкратце.</p>
<pre class="default s-code-block"><code class="hljs language-csharp"><span class="hljs-comment">// Добавляем</span>
git remote <span class="hljs-keyword">add</span> <span class="hljs-string">"all"</span> git@github.com:fudeglan/gigalab.uz.git

git remote <span class="hljs-keyword">set</span>-url --<span class="hljs-keyword">add</span> --push <span class="hljs-string">"all"</span> git@github.com:fudeglan/gigalab.uz.git
git remote <span class="hljs-keyword">set</span>-url --<span class="hljs-keyword">add</span> --push <span class="hljs-string">"all"</span> git@bitbucket.org:fudeglan/gigalab.uz.git
git remote <span class="hljs-keyword">set</span>-url --<span class="hljs-keyword">add</span> --push <span class="hljs-string">"all"</span> git@gitlab.com:fudeglan/gigalab.uz.git

<span class="hljs-comment">// Отправляем</span>
git push all
</code></pre>
<p><code>.git/config</code> примерно будет таким</p>
<pre class="default s-code-block"><code class="hljs language-ruby">[remote <span class="hljs-string">"all"</span>]
    url = git<span class="hljs-variable">@github</span>.<span class="hljs-symbol">com:</span>fudeglan/gigalab.uz.git
    fetch = +refs/heads/*<span class="hljs-symbol">:refs/remotes/all/*</span>
    pushurl = git<span class="hljs-variable">@github</span>.<span class="hljs-symbol">com:</span>fudeglan/gigalab.uz.git
    pushurl = git<span class="hljs-variable">@bitbucket</span>.<span class="hljs-symbol">org:</span>fudeglan/gigalab.uz.git
    pushurl = git<span class="hljs-variable">@gitlab</span>.<span class="hljs-symbol">com:</span>fudeglan/gigalab.uz.git
</code></pre>
<p>Подробнее по ссылке</p>
</div>', 'https://ru.stackoverflow.com/questions/499738', '', 1, '2021-11-01 22:10:03', '2021-11-11 11:54:37', 3, NULL, '''add'':14B,22B,31B,40B,84C,93C,103C,113C ''bitbucket'':70B ''com'':58B,66B,76B ''fetch'':60B ''fudeglan/gigalab.uz.git'':17B,26B,35B,44B,59B,67B,72B,77B,87C,97C,107C,117C ''git'':12B,18B,27B,36B,46B,56B,64B,69B,74B,82C,88C,98C,108C,119C,121C ''git/config'':49B ''git@bitbucket.org'':34B,106C ''git@github.com'':16B,25B,86C,96C ''git@gitlab.com'':43B,116C ''github'':57B,65B ''gitlab'':75B ''org'':71B ''push'':8A,23B,32B,41B,47B,94C,104C,114C,120C,123C ''pushurl'':63B,68B,73B ''refs/heads'':61B ''refs/remotes/all'':62B ''remot'':13B,19B,28B,37B,53B,83C,89C,99C,109C ''set'':20B,29B,38B,91C,101C,111C ''set-url'':90C,100C,110C ''url'':21B,30B,39B,55B,92C,102C,112C ''вкратц'':10B ''добавля'':11B,81C ''изменен'':2A ''команд'':7A ''нескольк'':4A,124C ''одн'':6A ''отправ'':1A ''отправля'':45B,118C ''подробн'':78B ''примерн'':50B ''репозитор'':5A,122C ''ссылк'':80B ''так'':52B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (22, 7, 'PHP отладка: dump, xdebug, xhprof, blackfire, strace. Краткий обзор методик', 'php_otladka_dump_xdebug_xhprof_blackfire_strace_kratkii_obzor_metodik', '<p>Инструменты отладки</p>', '<p><span class=\"style-scope yt-formatted-string\" dir=\"auto\">Практическое применение методов профилирования и анализа кода на PHP </span></p>', 'https://www.youtube.com/watch?v=Vw48L6SwLo0', '', 1, '2021-11-06 19:52:50', '2021-11-06 19:52:50', 6, 'Практическое применение методов профилирования и анализа кода на php', '''auto'':21B ''blackfir'':6A,38C ''class'':12B ''dir'':20B ''dump'':3A,36C ''format'':18B ''php'':1A,30B,35C ''scope'':15B ''span'':11B ''strace'':7A,39C ''string'':19B ''style'':14B ''style-scop'':13B ''xdebug'':4A,33C ''xhprof'':5A,37C ''yt'':17B ''yt-formatted-str'':16B ''анализ'':27B ''инструмент'':31C ''код'':28B ''кратк'':8A ''метод'':24B ''методик'':10A ''обзор'':9A ''отладк'':2A,32C,34C ''практическ'':22B ''применен'':23B ''профилирован'':25B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (34, 1, 'Узнать версию PostgreSQL', 'uznat_versiyu_postgresql', '<pre class="language-bash"><code>su - postgres
psql --version</code></pre>', '<pre class="language-bash"><code>root@laradrom:/home/admin# su - postgres
postgres@laradrom:~$ psql --version
psql (PostgreSQL) 14.1 (Debian 14.1-1.pgdg90+1)</code></pre>', NULL, '', 1, '2021-11-13 19:45:29', '2021-11-13 19:45:29', 1, 'Команды консоли чтобы узнать текущую версию PostgreSQL', '''+1'':20B ''-1'':18B ''/home/admin'':6B ''14.1'':15B,17B ''debian'':16B ''laradrom'':5B,10B ''pgdg90'':19B ''postgr'':8B,9B,22C ''postgresql'':3A,14B,25C ''psql'':11B,13B,23C ''root'':4B ''su'':7B,21C ''version'':12B,24C,26C ''верс'':2A,27C ''узна'':1A');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (35, 1, 'psql — терминальный клиент для работы с PostgreSQL', 'psql_terminalnyi_klient_dlya_raboty_s_postgresql', '<p>Команды psql</p>', '<p>Программа <span class="application">psql</span> &mdash; это терминальный клиент для работы с <span class="productname">PostgreSQL</span>. Она позволяет интерактивно вводить запросы, передавать их в <span class="productname">PostgreSQL</span> и видеть результаты.</p>', 'https://postgrespro.ru/docs/postgresql/14/app-psql', '', 1, '2021-11-13 19:50:52', '2021-11-13 19:50:52', 3, 'Документация по psql - консольному клиенту для работы с PostgreSQL', '''postgresql'':7A,16B,25B,31C ''psql'':1A,9B,30C,32C ''ввод'':20B ''видет'':27B ''запрос'':21B ''интерактивн'':19B ''клиент'':3A,12B ''команд'':29C ''передава'':22B ''позволя'':18B ''программ'':8B ''работ'':5A,14B ''результат'':28B ''терминальн'':2A,11B ''эт'':10B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (38, 7, 'Использование нескольких версий PHP в панели VestaCP', 'ispolzovanie_neskolkix_versii_php_v_paneli_vestacp', '<p>Инструкция по установке нескольких версий PHP в панели VestaCP</p>', '<p>В статье рассмотрена установка и настройка PHP нескольких версий &mdash; 5.6, 7.0, 7.1, 7.2, 7.3.</p>
<p>По аналогии делается и для 8-х версий.</p>', 'https://netpoint-dc.com/blog/multiversionnost-php-dlja-raboty-s-panelju-upravlenija-vestacp/', '', 1, '2021-11-13 20:09:39', '2021-11-13 20:09:39', 3, 'Инструкция по установке нескольких версий PHP в панели VestaCP', '''5.6'':17B ''7.0'':18B ''7.1'':19B ''7.2'':20B ''7.3'':21B ''8'':27B ''php'':4A,14B,35C,39C ''phpbrew'':40C ''vestacp'':7A,38C,41C ''аналог'':23B ''верс'':3A,16B,29B,34C ''дела'':24B ''инструкц'':30C ''использован'':1A ''настройк'':13B ''нескольк'':2A,15B,33C ''панел'':6A,37C ''рассмотр'':10B ''стат'':9B ''установк'':11B,32C,42C ''х'':28B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (41, 1, 'Установка и настройка PostgreSQL', 'ustanovka_i_nastroika_postgresql', '<pre class="language-bash"><code>sudo sh -c ''echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" &gt; /etc/apt/sources.list.d/pgdg.list''

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt-get update

sudo apt-get -y install postgresql</code></pre>', '<pre class="language-bash"><code># Create the file repository configuration:
sudo sh -c ''echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" &gt; /etc/apt/sources.list.d/pgdg.list''

# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
sudo apt-get update

# Install the latest version of PostgreSQL.
# If you want a specific version, use ''postgresql-12'' or similar instead of ''postgresql'':
sudo apt-get -y install postgresql</code></pre>
<p>&nbsp;</p>
<pre class="language-bash"><code>systemctl restart postgresql

su &ndash; postgres

psql -c "ALTER USER postgres WITH PASSWORD ''123456'';"</code></pre>
<p>&nbsp;</p>
<p>команда в одну строку&nbsp;</p>
<p>например узнать путь к конфигу:</p>
<pre class="language-bash"><code>su - postgres -c "psql -c ''SHOW config_file;''"</code></pre>', 'https://www.postgresql.org/download/linux/ubuntu/', '', 1, '2021-11-13 22:42:07', '2021-11-13 23:02:55', 3, NULL, '''-12'':63B ''/etc/apt/sources.list.d/pgdg.list'':23B,119C ''/media/keys/accc4cf8.asc'':34B,125C ''/pub/repos/apt'':17B,113C ''123456'':88B ''add'':39B,130C ''alter'':83B ''apt'':37B,46B,71B,128C,133C,138C ''apt-get'':45B,70B,132C,137C ''apt-key'':36B,127C ''apt.postgresql.org'':16B,112C ''apt.postgresql.org/pub/repos/apt'':15B,111C ''c'':12B,82B,100B,102B,108C ''config'':104B ''configur'':9B ''creat'':5B ''cs'':20B,116C ''deb'':14B,110C ''echo'':13B,109C ''file'':7B,105B ''get'':47B,72B,134C,139C ''import'':24B ''instal'':49B,74B,141C ''instead'':66B ''key'':28B,38B,129C ''latest'':51B ''list'':43B ''lsb'':18B,114C ''main'':22B,118C ''o'':31B,122C ''packag'':42B ''password'':87B ''pgdg'':21B,117C ''postgr'':80B,85B,99B ''postgresql'':4A,54B,62B,68B,75B,78B,142C,143C ''psql'':81B,101B ''quiet'':30B,121C ''releas'':19B,115C ''repositori'':8B,26B ''restart'':77B ''sh'':11B,107C ''show'':103B ''sign'':27B ''similar'':65B ''specif'':59B ''su'':79B,98B ''sudo'':10B,35B,44B,69B,106C,126C,131C,136C ''systemctl'':76B ''updat'':40B,48B,135C ''use'':61B ''user'':84B ''version'':52B,60B ''want'':57B ''wget'':29B,120C ''www.postgresql.org'':33B,124C ''www.postgresql.org/media/keys/accc4cf8.asc'':32B,123C ''y'':73B,140C ''команд'':89B ''конфиг'':97B ''например'':93B ''настройк'':3A,145C ''одн'':91B ''пут'':95B ''строк'':92B ''узна'':94B ''установк'':1A,144C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (43, 1, 'Отсутствует таблица jobs в Laravel', 'otsutstvuet_tablica_jobs_v_laravel', '<pre class="language-bash"><code>php artisan queue:table
php artisan migrate</code></pre>', '<p>По умолчанию в Laravel отсутствует миграция по созданию таблицы jobs.</p>
<p>Причина в том, что эта таблица понадобится только если в качестве драйвера очереди будет использоваться <code>database</code>.</p>
<p>Чтобы сгенерировать миграцию, которая создает эту таблицу, запустите команду queue:table Artisan. После того, как миграция будет создана, вы можете выполнить ее миграцию с помощью команды migrate:</p>
<pre class="language-bash"><code>php artisan queue:table
php artisan migrate</code></pre>', NULL, '', 1, '2021-11-13 23:00:29', '2021-11-13 23:00:29', 1, 'Создание таблицы очередей jobs в Laravel', '''artisan'':43B,60B,64B,67C,71C ''databas'':31B,74C ''job'':3A,15B,76C ''laravel'':5A,9B,73C ''migrat'':58B,65B,72C ''php'':59B,63B,66C,70C ''queue'':41B,61B,68C ''tabl'':42B,62B,69C ''выполн'':52B ''драйвер'':27B ''запуст'':39B ''использова'':30B ''качеств'':26B ''команд'':40B,57B ''котор'':35B ''миграц'':11B,34B,47B,54B,75C ''может'':51B ''отсутств'':1A,10B ''очеред'':28B ''помощ'':56B ''понадоб'':22B ''причин'':16B ''сгенерирова'':33B ''созда'':36B,49B ''создан'':13B ''таблиц'':2A,14B,21B,38B,77C ''умолчан'':7B ''эт'':20B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (12, 2, 'Получение списка коммитов с Gitlab через API', 'polucenie_spiska_kommitov_s_gitlab_cerez_api', '<p>GET запрос:</p>
<p><strong>https://gitlab.com/api/v4/projects/-repo_id/repository/commits</strong></p>
<p>Если репозиторий приватный, то надо в заголовке передать <strong>Bearer Token.</strong></p>
<p>В гитлабе: <strong>Edit Profile / Access Tokens&nbsp;</strong></p>
<p>Указываем имя токена Token name</p>
<p>Отмечаем галочками: <strong>read_api, read_repository</strong></p>
<p>Генерим токен</p>', '<p>GET запрос:</p>
<p><strong>https://gitlab.com/api/v4/projects/-repo_id/repository/commits</strong></p>
<p>где -<strong>repo_id</strong> это ID репозитория</p>
<p>Если репозиторий приватный, то надо в заголовке передать <strong>Bearer Token.</strong></p>
<p>На странице в гитлабе кликаем на юзере в правом верхнем углу, выбираем:</p>
<p><strong>Edit Profile / Access Tokens&nbsp;</strong></p>
<p>Указываем имя токена <strong>Token name</strong></p>
<p>Отмечаем галочками: <strong>read_api, read_repository</strong></p>
<p>Генерим токен</p>', NULL, '', 1, '2021-11-01 18:58:02', '2021-11-04 16:59:07', 1, 'Получение списка коммитов с их характеристиками с Gitlab через API', '''/api/v4/projects/-repo_id/repository/commits'':12B,62C ''access'':43B,77C ''api'':7A,53B,87C,97C ''bearer'':27B,71C ''commit'':96C ''edit'':41B,75C ''get'':8B,58C ''git'':92C ''gitlab'':5A,93C ''gitlab.com'':11B,61C ''gitlab.com/api/v4/projects/-repo_id/repository/commits'':10B,60C ''id'':15B,17B ''name'':49B,83C ''profil'':42B,76C ''read'':52B,54B,86C,88C ''repo'':14B ''repositori'':55B,89C ''token'':28B,44B,48B,72C,78C,82C ''верхн'':38B ''выбира'':40B ''галочк'':51B,85C ''генер'':56B,90C ''гитлаб'':32B,74C ''заголовк'':25B,69C ''запрос'':9B,59C ''им'':46B,80C ''клика'':33B ''коммит'':3A,95C ''отмеча'':50B,84C ''переда'':26B,70C ''получен'':1A ''прав'':37B ''приватн'':21B,65C ''репозитор'':18B,20B,64C ''списк'':2A ''список'':94C ''страниц'':30B ''ток'':47B,57B,81C,91C ''угл'':39B ''указыва'':45B,79C ''эт'':16B ''юзер'':35B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (13, 1, 'Остановить и удалить все контейнеры Docker', 'ostanovit_i_udalit_vse_konteinery_docker', '<pre class=\"language-bash\"><code>docker-compose down

docker rm -fv $(docker ps -aq)

docker compose down -v --rmi all --remove-orphans</code></pre>', '<p dir=\"auto\">Иногда бывает, что не все контейнеры стартуют и просто остановка и перезапуск не помогают.</p>
<pre class=\"language-docker\"><code>docker-compose down</code></pre>
<p dir=\"auto\">Может помочь одна из следующих консольных команд:</p>
<pre class=\"language-docker\"><code>docker rm -fv $(docker ps -aq)</code></pre>
<p>или</p>
<pre class=\"language-docker\"><code>docker compose down -v --rmi all --remove-orphans</code></pre>
<p>&nbsp;</p>', NULL, '', 1, '2021-11-01 21:24:40', '2021-11-04 20:06:56', 1, 'Команды для глобальной очистки и удаления всех докер контейнеров', '''aq'':53B,83C ''auto'':9B,35B ''bash'':73C ''class'':25B,44B,56B,70C ''compos'':31B,61B,76C,85C ''dir'':8B,34B ''docker'':6A,28B,30B,47B,48B,51B,59B,60B,75C,78C,81C,84C,93C,94C ''docker-compos'':29B,74C ''fv'':50B,80C ''languag'':27B,46B,58B,72C ''language-bash'':71C ''language-dock'':26B,45B,57B ''orphan'':68B,92C ''p'':7B,33B ''pre'':24B,43B,55B,69C ''ps'':52B,82C ''remov'':67B,91C ''remove-orphan'':66B,90C ''rm'':49B,79C ''rmi'':64B,88C ''v'':63B,87C ''быва'':11B ''команд'':42B ''консольн'':41B ''контейнер'':5A,15B,96C,98C ''одн'':38B ''останов'':1A ''остановк'':19B,97C ''перезапуск'':21B ''помога'':23B ''помоч'':37B ''прост'':18B ''след'':40B ''старт'':16B ''удал'':3A');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (25, 1, 'Как отключить проверку PostgreSQL внешних ключей для миграций', 'kak_otklyucit_proverku_postgresql_vnesnix_klyucei_dlya_migracii', '<pre class="language-sql"><code>SET session_replication_role = ''replica'';</code></pre>
<p data-renderer-start-pos="103">после миграции:</p>
<pre class="language-sql"><code>SET session_replication_role = ''origin'';</code></pre>', '<div class="sc-1u3iq5d-0 kUCOUC">
<div class="ak-renderer-document">
<p data-renderer-start-pos="1">Для миграции проще отключить все триггеры с помощью:</p>
<p data-renderer-start-pos="60">SET session_replication_role = ''replica'';</p>
<p data-renderer-start-pos="103">А после миграции включить обратно:</p>
<p data-renderer-start-pos="142">SET session_replication_role = ''origin'';</p>
</div>
</div>', NULL, '', 1, '2021-11-13 00:53:18', '2021-11-13 00:53:18', 1, 'Отключение проверки PostgreSQL внешних ключей для успешного выполнения миграции', '''databas'':46C ''foreign'':52C ''key'':53C ''origin'':31B,43C ''postgr'':45C ''postgresql'':4A,44C ''replic'':19B,29B,34C,41C ''replica'':21B,36C ''role'':20B,30B,35C,42C ''session'':18B,28B,33C,40C ''set'':17B,27B,32C,39C ''включ'':25B ''внешн'':5A,50C ''ключ'':6A,51C ''миграц'':8A,10B,24B,38C,49C ''обратн'':26B ''отключ'':2A,12B,48C ''помощ'':16B ''проверк'':3A ''прощ'':11B ''субд'':47C ''триггер'':14B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (50, 1, 'rum модуль - расширение PostgreSQL для работы с RUM индексами', 'rum_modul_rassirenie_postgresql_dlya_raboty_s_rum_indeksami', '<p>Для ускорения полнотекстового поиска индекс RUM можно рассматривать как расширение на основе GIN.</p>
<p>Его можно скачать и использовать с https://github.com/postgrespro/rum.</p>', '<p>Какие ограничения индекса GIN позволяет преодолеть RUM?<br /><br />Во-первых, тип данных tsvector, помимо самих лексем, содержит информацию об их позициях внутри документа. В GIN-индексе эта информация не сохраняются. Из-за этого операции <em>фразового поиска,</em> появившиеся в версии 9.6, обслуживается GIN-индексом неэффективно и вынуждены обращаться к исходным данным для перепроверки.<br /><br />Во-вторых, поисковые системы обычно возвращают результаты в порядке релевантности (что бы это ни означало). Для этого можно пользоваться функциями <em>ранжирования</em> ts_rank и ts_rank_cd, но их приходится вычислять для каждой строки результата, что, конечно, медленно.<br /><br />Метод доступа RUM в первом приближении можно рассматривать как GIN, в который добавлена позиционная информация, и который поддерживает выдачу результата в нужном порядке (аналогично тому, как GiST умеет выдавать ближайших соседей). Пойдем по порядку.</p>', 'https://github.com/postgrespro/rum', '', 1, '2021-11-16 22:29:08', '2021-11-16 22:29:08', 3, 'RUM расширение на основе GIN индекса. Для ускорения полнотекстового поиска.', '''/postgrespro/rum.'':159C ''9.6'':51B ''cd'':92B ''gin'':13B,35B,54B,113B,150C ''gin-индекс'':34B,53B ''gist'':130B ''github.com'':158C ''github.com/postgrespro/rum.'':157C ''index'':162C ''postgr'':160C ''postgresql'':4A ''rank'':88B,91B ''rum'':1A,8A,16B,106B,143C,161C,164C ''ts'':87B,90B ''tsvector'':22B ''аналогичн'':127B ''ближайш'':133B ''верс'':50B ''внутр'':31B ''во-втор'':65B ''во-перв'':17B ''возвраща'':71B ''втор'':67B ''выдава'':132B ''выдач'':122B ''вынужд'':58B ''вычисля'':96B ''дан'':21B,62B ''добавл'':116B ''документ'':32B ''доступ'':105B ''из-з'':41B ''индекс'':9A,12B,36B,55B,142C,163C,165C ''информац'':27B,38B,118B ''использова'':155C ''исходн'':61B ''кажд'':98B ''как'':10B ''котор'':115B,120B ''лекс'':25B ''медлен'':103B ''метод'':104B ''модул'':2A ''неэффективн'':56B ''нужн'':125B ''обраща'':59B ''обслужива'':52B ''обычн'':70B ''ограничен'':11B ''означа'':80B ''операц'':45B ''основ'':149C ''перв'':19B,108B ''перепроверк'':64B ''поддержива'':121B ''позволя'':14B ''позиц'':30B ''позицион'':117B ''поиск'':47B,141C ''поисков'':68B ''пойд'':135B ''полнотекстов'':140C ''пользова'':84B ''помим'':23B ''порядк'':74B,126B,137B ''появ'':48B ''преодолет'':15B ''приближен'':109B ''приход'':95B ''работ'':6A ''ранжирован'':86B ''рассматрива'':111B,145C ''расширен'':3A,147C ''результат'':72B,100B,123B ''релевантн'':75B ''сам'':24B ''систем'':69B ''скача'':153C ''содерж'':26B ''сосед'':134B ''сохраня'':40B ''строк'':99B ''тип'':20B ''том'':128B ''умеет'':131B ''ускорен'':139C ''фразов'':46B ''функц'':85B ''эт'':37B,78B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (11, 1, 'Создание Blade компонентов в Laravel', 'sozdanie_blade_komponentov_v_laravel', '<p>- Создание компонента</p>
<p>- Передача параметров</p>
<p>- Методы компонента</p>
<p>- Фильтрация и слияние атрибутов</p>
<p>- Слоты</p>
<p>- Микрокомпоненты</p>
<p>- Анонимные компоненты</p>
<p>- Динамические компоненты</p>
<p>&nbsp;</p>', '<p><iframe src="https://www.youtube.com/embed/8tXzrkvbgXw" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>
<p>&nbsp;</p>
<p>- Создание компонента</p>
<p>- Передача параметров</p>
<p>- Методы компонента</p>
<p>- Фильтрация и слияние атрибутов</p>
<p>- Слоты</p>
<p>- Микрокомпоненты</p>
<p>- Анонимные компоненты</p>
<p>- Динамические компоненты</p>', NULL, '', 1, '2021-10-30 10:40:40', '2021-11-11 10:53:57', 6, 'Разъяснение множества аспектов работы с Blade компонентами.', '''blade'':2A,39C,42C ''compon'':40C ''laravel'':5A,38C ''анонимн'':18B,34C ''атрибут'':15B,31C ''динамическ'':20B,36C ''компонент'':3A,7B,11B,19B,21B,23C,27C,35C,37C,41C ''метод'':10B,26C ''микрокомпонент'':17B,33C ''параметр'':9B,25C ''передач'':8B,24C ''слиян'':14B,30C ''слот'':16B,32C ''создан'':1A,6B,22C ''фильтрац'':12B,28C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (30, 1, 'Что такое ACID (кислотность) в базах данных?', 'cto_takoe_acid_kislotnost_v_bazax_dannyx', '<p>&nbsp; &nbsp; <strong>Atomicity</strong> &mdash; Атомарность</p>
<p>&nbsp; &nbsp; <strong>Consistency</strong> &mdash; Согласованность</p>
<p>&nbsp; &nbsp; <strong>Isolation</strong> &mdash; Изолированность</p>
<p>&nbsp; &nbsp; <strong>Durability</strong> &mdash; Надёжность</p>', '<p>Требования ACID &mdash; набор требований, которые обеспечивают сохранность ваших данных.&nbsp;</p>
<p>&nbsp; &nbsp; <strong>Atomicity</strong> &mdash; Атомарность</p>
<p>&nbsp; &nbsp; <strong>Consistency</strong> &mdash; Согласованность</p>
<p>&nbsp; &nbsp; <strong>Isolation</strong> &mdash; Изолированность</p>
<p>&nbsp; &nbsp; <strong>Durability</strong> &mdash; Надёжность</p>
<p>&nbsp;</p>
<p><strong>Atomicity &mdash; Атомарность</strong></p>
<p>Атомарность гарантирует, что каждая транзакция будет выполнена полностью или не будет выполнена совсем. Не допускаются промежуточные состояния.</p>
<p><strong>Consistency &mdash; Согласованность</strong></p>
<p>Транзакция, достигающая своего нормального завершения (<em>EOT &mdash; end of transaction</em>, завершение транзакции) и, тем самым, фиксирующая свои результаты, сохраняет согласованность базы данных.</p>
<p>То есть до выполнения операции и после база остается консистентной (в переводе на русский &mdash; согласованной).</p>
<p><strong>Isolation &mdash; Изолированность</strong></p>
<p>Во время выполнения транзакции параллельные транзакции не должны оказывать влияния на её результат.</p>
<p><strong>Durability &mdash; Надёжность</strong></p>
<p>Если пользователь получил подтверждение от системы, что транзакция выполнена, он может быть уверен, что сделанные им изменения не будут отменены из-за какого-либо сбоя.&nbsp;</p>', 'https://habr.com/ru/post/555920/', '', 1, '2021-11-13 11:04:42', '2021-11-13 13:49:58', 3, 'Аббревиатура ACID. Расшифровка и что это означает в сфере баз данных.', '''acid'':3A,9B,135C ''atom'':17B,25B,126C ''consist'':19B,44B,128C ''durabl'':23B,97B,132C ''end'':52B ''eot'':51B ''isol'':21B,82B,130C ''postgresql'':134C ''transact'':54B ''атомарн'':18B,26B,27B,127C ''баз'':6A,65B,74B,137C ''будут'':117B ''ваш'':15B ''влиян'':93B ''врем'':85B ''выполн'':33B,38B,107B ''выполнен'':70B,86B ''гарантир'':28B ''дан'':7A,16B,66B,138C ''должн'':91B ''допуска'':41B ''достига'':47B ''е'':95B ''завершен'':50B,55B ''из-з'':119B ''изменен'':115B ''изолирован'':22B,83B,131C ''кажд'':30B ''как'':123B ''какого-либ'':122B ''кислотн'':4A ''консистентн'':76B ''котор'':12B ''либ'':124B ''набор'':10B ''надежн'':24B,98B,133C ''нормальн'':49B ''обеспечива'':13B ''оказыва'':92B ''операц'':71B ''оста'':75B ''отмен'':118B ''параллельн'':88B ''перевод'':78B ''подтвержден'':102B ''полност'':34B ''получ'':101B ''пользовател'':100B ''промежуточн'':42B ''результат'':62B,96B ''русск'':80B ''сам'':59B ''сбо'':125B ''сво'':48B,61B ''сдела'':113B ''систем'':104B ''согласова'':81B ''согласован'':20B,45B,64B,129C ''состоян'':43B ''сохран'':14B ''сохраня'':63B ''субд'':136C ''так'':2A ''транзакц'':31B,46B,56B,87B,89B,106B ''требован'':8B,11B ''увер'':111B ''фиксир'':60B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (36, 1, 'Ошибка gpg: no valid OpenPGP data found при установке Postgres', 'osibka_gpg_no_valid_openpgp_data_found_pri_ustanovke_postgres', '<p>чтобы исправить добавим ключ</p>
<pre class="language-bash"><code>--no-check-certificate</code></pre>', '<div class="sc-1u3iq5d-0 kUCOUC">
<div class="ak-renderer-document">
<p data-renderer-start-pos="1">При выполнении команды</p>
<pre class="language-bash"><code>wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -</code></pre>
<p data-renderer-start-pos="115">возможна ошибка:</p>
<p data-renderer-start-pos="133">gpg: no valid OpenPGP data found.</p>
<p data-renderer-start-pos="168">чтобы исправить добавим ключ --no-check-certificate</p>
<pre class="language-bash"><code>wget --no-check-certificate --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -</code></pre>
</div>
</div>', NULL, '', 1, '2021-11-13 19:56:50', '2021-11-13 19:56:50', 2, 'Ошибка gpg: no valid OpenPGP data found', '''/media/keys/accc4cf8.asc'':19B,50B ''add'':24B,55B ''apt'':22B,53B ''apt-key'':21B,52B ''certif'':40B,45B,63C ''check'':39B,44B,62C ''data'':6A,31B ''error'':66C ''found'':7A,32B ''gpg'':2A,27B ''key'':23B,54B ''no-check-certif'':37B,42B,60C ''o'':16B,47B ''openpgp'':5A,30B,65C ''postgr'':10A,64C ''quiet'':15B,46B ''sudo'':20B,51B ''valid'':4A,29B ''wget'':14B,41B ''www.postgresql.org'':18B,49B ''www.postgresql.org/media/keys/accc4cf8.asc'':17B,48B ''возможн'':25B ''выполнен'':12B ''добав'':35B,58C ''исправ'':34B,57C ''ключ'':36B,59C ''команд'':13B ''ошибк'':1A,26B,67C ''установк'':9A');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (9, 2, 'Простое объяснение Laravel Blade компонентов', 'prostoe_obyasnenie_laravel_blade_komponentov', '<p>Макетный подход</p>
<p>Старый компонентный подход</p>
<p>Новый компонентный подход</p>
<p>&nbsp;</p>', '<p>Если совсем коротко, то есть каркас страницы app-layout.blade.php</p>
<pre class="language-markup"><code>&lt;!DOCTYPE html&gt;
&lt;html lang="{{ str_replace(''_'', ''-'', app()-&gt;getLocale()) }}"&gt;
&lt;head&gt;
    &lt;meta charset="utf-8"&gt;
    &lt;meta name="viewport" content="width=device-width, initial-scale=1"&gt;
    &lt;title&gt;Laravel Blade с Компонентом&lt;/title&gt;
    &lt;link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet"&gt;
    &lt;style&gt;
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: ''Nunito'', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }
        .content {
            text-align: center;
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;div class="content"&gt;
    @yield(''content'')
    &lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;</code></pre>
<pre><code class="\&quot;language-html\&quot;"></code>и файл <code>welcome.blade.php с неким содержимым</code>.</pre>
<p><strong>Макетный подход</strong></p>
<p>Файл <code>welcome.blade.php</code>:</p>
<pre class="\&quot;\&quot; language-markup"><code>@extends(''layout/app-layout'');
@section(''content'')
 Это содержимое
@endsection</code></pre>
<p>&nbsp;</p>
<p><strong>Старый компонентный подход</strong></p>
<p>В каркасе изменится:</p>
<pre class="language-markup"><code>...
&lt;body&gt;
    &lt;div class="content"&gt;
         {{ $slot }}
    &lt;/div&gt;
&lt;/body&gt;
...</code></pre>
<p><code class="\&quot;language-html\&quot;"></code></p>
<p>Файл <code>welcome.blade.php</code>:</p>
<pre class="\&quot;\&quot; language-php"><code>@component(''layout.app-layout'')
    С компонентным подходом
@endcomponent</code></pre>
<pre><code class="\&quot;language-php\&quot;"></code></pre>
<p><strong>Новый компонентный подход</strong></p>
<p>Файл <code>welcome.blade.php</code>:</p>
<pre class="\&quot;\&quot; language-markup"><code>&lt;x-app-layout&gt;
  Мы используем кастомный тег также, как и компонент
&lt;/x-app-layout&gt;</code></pre>
<pre><code class="\&quot;language-html\&quot;">&nbsp;</code></pre>
<p>Контент тега будет отображаться через <code>{{ $slot }}&nbsp;</code>в файле <code>components\app-layout.blade.php.</code></p>
<p><code>Более подробная инфа по ссылке на статью</code></p>
<p>&nbsp;</p>
<p>&nbsp;</p>', 'https://laravel.demiart.ru/blade-komponenty-v-laravel-7/', '', 1, '2021-10-29 20:46:08', '2021-11-11 11:47:47', 3, 'Принципы работы с Laravel Blade компонентами', '''-8'':26B ''/body'':90B,121B ''/css?family=nunito:200,600'':49B ''/div'':89B,120B ''/head'':82B ''/html'':91B ''/style'':81B ''/title'':44B ''/x-app-layout'':148B ''0'':75B ''1'':38B ''100vh'':73B ''200'':71B ''636b6f'':60B ''align'':79B ''app'':20B,138B ''app-layout.blade.php'':13B,158B ''background'':56B ''background-color'':55B ''blade'':4A,41B,175C ''bodi'':54B,83B,115B ''center'':80B ''charset'':24B ''class'':85B,117B ''color'':57B,59B ''compon'':124B,157B,176C ''content'':30B,76B,86B,88B,105B,118B ''devic'':33B ''device-width'':32B ''div'':84B,116B ''doctyp'':14B ''endcompon'':130B ''endsect'':108B ''extend'':102B ''famili'':63B ''fff'':58B ''font'':62B,69B ''font-famili'':61B ''font-weight'':68B ''fonts.googleapis.com'':48B ''fonts.googleapis.com/css?family=nunito:200,600'':47B ''getlocal'':21B ''head'':22B ''height'':72B ''href'':46B ''html'':15B,16B,53B ''initi'':36B ''initial-scal'':35B ''lang'':17B ''laravel'':3A,40B,174C ''layout'':126B,139B ''layout.app'':125B ''layout/app-layout'':103B ''link'':45B ''margin'':74B ''meta'':23B,27B ''name'':28B ''nunito'':64B ''rel'':50B ''replac'':19B ''san'':66B ''sans-serif'':65B ''scale'':37B ''section'':104B ''serif'':67B ''slot'':119B,154B ''str'':18B ''style'':52B ''stylesheet'':51B ''text'':78B ''text-align'':77B ''titl'':39B ''utf'':25B ''viewport'':29B ''weight'':70B ''welcome.blade.php'':94B,101B,123B,135B ''width'':31B,34B ''x'':137B ''x-app-layout'':136B ''yield'':87B ''измен'':114B ''инф'':161B ''использу'':141B ''каркас'':11B,113B ''кастомн'':142B ''компонент'':5A,43B,147B,177C ''компонентн'':110B,128B,132B,169C,172C ''контент'':149B ''коротк'':8B ''макетн'':98B,166C ''нек'':96B ''нов'':131B,171C ''объяснен'':2A ''отобража'':152B ''подробн'':160B ''подход'':99B,111B,129B,133B,167C,170C,173C ''прост'':1A ''содержим'':97B,107B ''ссылк'':163B ''стар'':109B,168C ''стат'':165B ''страниц'':12B ''такж'':144B ''тег'':143B,150B ''файл'':93B,100B,122B,134B,156B ''эт'':106B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (18, 1, 'Работа с метатегами - SEO Tools для Laravel', 'rabota_s_metategami_seo_tools_dlya_laravel', '<p>Пакет для работы с SEO.</p>
<p>Вставка метатегов title, description и т.д.</p>
<p>Метатеги Twitter Cards and Open Graph.</p>', '<p>Пакет для работы с SEO.</p>
<p>Вставка метатегов title, description и т.д.</p>
<p>Метатеги Twitter Cards and Open Graph.</p>
<p>Пример использования:</p>
<pre class=\"language-php\"><code>namespace App\Http\Controllers;

use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use Artesaos\SEOTools\Facades\JsonLd;
// OR with multi
use Artesaos\SEOTools\Facades\JsonLdMulti;

// OR
use Artesaos\SEOTools\Facades\SEOTools;

class CommomController extends Controller
{
    public function index()
    {
        SEOMeta::setTitle(''Home'');
        SEOMeta::setDescription(''This is my page description'');
        SEOMeta::setCanonical(''https://codecasts.com.br/lesson'');

        OpenGraph::setDescription(''This is my page description'');
        OpenGraph::setTitle(''Home'');
        OpenGraph::setUrl(''http://current.url.com'');
        OpenGraph::addProperty(''type'', ''articles'');

        TwitterCard::setTitle(''Homepage'');
        TwitterCard::setSite(''@LuizVinicius73'');

        JsonLd::setTitle(''Homepage'');
        JsonLd::setDescription(''This is my page description'');
        JsonLd::addImage(''https://codecasts.com.br/img/logo.jpg'');

        // OR

        SEOTools::setTitle(''Home'');
        SEOTools::setDescription(''This is my page description'');
        SEOTools::opengraph()-&gt;setUrl(''http://current.url.com'');
        SEOTools::setCanonical(''https://codecasts.com.br/lesson'');
        SEOTools::opengraph()-&gt;addProperty(''type'', ''articles'');
        SEOTools::twitter()-&gt;setSite(''@LuizVinicius73'');
        SEOTools::jsonLd()-&gt;addImage(''https://codecasts.com.br/img/logo.jpg'');

        $posts = Post::all();

        return view(''myindex'', compact(''posts''));
    }
}</code></pre>
<p>Во View:</p>
<pre class=\"language-markup\"><code>&lt;html&gt;
&lt;head&gt;
    {!! SEOMeta::generate() !!}
    {!! OpenGraph::generate() !!}
    {!! Twitter::generate() !!}
    {!! JsonLd::generate() !!}
    // OR with multi
    {!! JsonLdMulti::generate() !!}

    &lt;!-- OR --&gt;
    {!! SEO::generate() !!}

    &lt;!-- MINIFIED --&gt;
    {!! SEO::generate(true) !!}

    &lt;!-- LUMEN --&gt;
    {!! app(''seotools'')-&gt;generate() !!}
&lt;/head&gt;
&lt;body&gt;

&lt;/body&gt;
&lt;/html&gt;</code></pre>
<p>API (SEOMeta):</p>
<pre class=\"language-php\"><code>use Artesaos\SEOTools\Facades\SEOMeta;

SEOMeta::addKeyword($keyword);
SEOMeta::addMeta($meta, $value = null, $name = ''name'');
SEOMeta::addAlternateLanguage($lang, $url);
SEOMeta::addAlternateLanguages(array $languages);
SEOMeta::setTitleSeparator($separator);
SEOMeta::setTitle($title);
SEOMeta::setTitleDefault($default);
SEOMeta::setDescription($description);
SEOMeta::setKeywords($keywords);
SEOMeta::setRobots($robots);
SEOMeta::setCanonical($url);
SEOMeta::setPrev($url);
SEOMeta::setNext($url);
SEOMeta::removeMeta($key);

// You can chain methods
SEOMeta::setTitle($title)
            -&gt;setDescription($description)
            -&gt;setKeywords($keywords)
            -&gt;addKeyword($keyword)
            -&gt;addMeta($meta, $value);

// Retrieving data
SEOMeta::getTitle();
SEOMeta::getTitleSession();
SEOMeta::getTitleSeparator();
SEOMeta::getKeywords();
SEOMeta::getDescription();
SEOMeta::getCanonical($url);
SEOMeta::getPrev($url);
SEOMeta::getNext($url);
SEOMeta::getRobots();
SEOMeta::reset();

SEOMeta::generate();</code></pre>', 'https://github.com/artesaos/seotools', '', 1, '2021-11-03 18:56:42', '2021-11-04 00:16:55', 4, 'Пакет seotools для работы с метатегами и другой SEO информацией в Laravel', '''/body'':209B ''/head'':207B ''/html'':210B ''/img/logo.jpg'''');'':130B,165B ''/lesson'''');'':92B,150B ''addalternatelanguag'':234B,238B ''addimag'':127B,162B ''addkeyword'':224B,282B ''addmeta'':227B,284B ''addproperti'':107B,153B ''api'':211B ''app'':34B,204B ''array'':239B ''artesao'':38B,43B,48B,53B,61B,67B,219B ''articl'':109B,155B ''bodi'':208B ''card'':22B,328C ''chain'':273B ''class'':29B,71B,177B,214B ''codecasts.com.br'':91B,129B,149B,164B ''codecasts.com.br/img/logo.jpg'''');'':128B,163B ''codecasts.com.br/lesson'''');'':90B,148B ''commomcontrol'':72B ''compact'':172B ''control'':36B,74B ''current.url.com'':105B,145B ''data'':288B ''default'':249B ''descript'':16B,87B,99B,125B,141B,252B,279B,322C ''extend'':73B ''facad'':40B,45B,50B,55B,63B,69B,221B ''function'':76B ''generat'':184B,186B,188B,190B,195B,198B,201B,206B,313B ''getcanon'':300B ''getdescript'':298B ''getkeyword'':296B ''getnext'':306B ''getprev'':303B ''getrobot'':309B ''gettitl'':290B ''gettitlesepar'':294B ''gettitlesess'':292B ''graph'':25B,331C ''head'':182B ''home'':80B,102B,134B ''homepag'':112B,118B ''html'':181B ''http'':35B ''index'':77B ''jsonld'':56B,116B,119B,126B,161B,189B ''jsonldmulti'':64B,194B ''key'':270B ''keyword'':225B,255B,281B,283B ''lang'':235B ''languag'':31B,179B,216B,240B ''language-markup'':178B ''language-php'':30B,215B ''laravel'':7A,332C ''luizvinicius73'':115B,159B ''lumen'':203B ''markup'':180B ''meta'':228B,285B ''metatag'':333C ''method'':274B ''minifi'':199B ''multi'':59B,193B ''myindex'':171B ''name'':231B,232B ''namespac'':33B ''null'':230B ''open'':24B,330C ''opengraph'':46B,93B,100B,103B,106B,143B,152B,185B ''page'':86B,98B,124B,140B ''php'':32B,217B ''post'':166B,167B,173B ''pre'':28B,176B,213B ''public'':75B ''removemeta'':269B ''reset'':311B ''retriev'':287B ''return'':169B ''robot'':258B ''seo'':4A,12B,197B,200B,318C,334C,337C ''seometa'':41B,78B,81B,88B,183B,212B,222B,223B,226B,233B,237B,241B,244B,247B,250B,253B,256B,259B,262B,265B,268B,275B,289B,291B,293B,295B,297B,299B,302B,305B,308B,310B,312B ''seotool'':39B,44B,49B,54B,62B,68B,70B,132B,135B,142B,146B,151B,156B,160B,205B,220B,335C ''separ'':243B ''setcanon'':89B,147B,260B ''setdescript'':82B,94B,120B,136B,251B,278B ''setkeyword'':254B,280B ''setnext'':266B ''setprev'':263B ''setrobot'':257B ''setsit'':114B,158B ''settitl'':79B,101B,111B,117B,133B,245B,276B ''settitledefault'':248B ''settitlesepar'':242B ''seturl'':104B,144B ''titl'':15B,246B,277B,321C ''tool'':5A,338C ''true'':202B ''twitter'':21B,157B,187B,327C ''twittercard'':51B,110B,113B ''type'':108B,154B ''url'':236B,261B,264B,267B,301B,304B,307B ''use'':37B,42B,47B,52B,60B,66B,218B ''valu'':229B,286B ''view'':170B,175B ''вставк'':13B,319C ''д'':19B,325C ''использован'':27B ''метатег'':3A,14B,20B,320C,326C,336C ''пакет'':8B,314C ''пример'':26B ''работ'':1A,10B,316C ''т'':18B,324C');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (32, 1, 'Включить postgres расширения в PHP сборку контейнера Docker', 'vklyucit_postgres_rassireniya_v_php_sborku_konteinera_docker', '<p>Добавить в Dockerfile <strong>pgsql</strong> и <strong>pdo_pgsql</strong></p>
<pre class="language-docker"><code>RUN install-php-extensions pdo_mysql bcmath opcache redis xdebug pgsql pdo_pgsql</code></pre>', '<p>Добавить в Dockerfile <strong>pgsql</strong> и <strong>pdo_pgsql</strong></p>
<pre class="language-docker"><code>RUN install-php-extensions pdo_mysql bcmath opcache redis xdebug pgsql pdo_pgsql</code></pre>
<p>блок для docker-compose</p>
<pre class="language-docker"><code>  pgsql:
    image: "postgres" # последняя официальная postgres версия
    env_file:
      - ./src/backend/.env # файл конфигурации
    volumes:
      - ./postgresql-data:/var/lib/postgresql/data/ # папка с базой (останется после завершения работы контейнера)
    ports:
      - "54321:5432"
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U laradrom -d laradrom"]
      interval: 10s
      timeout: 5s
      retries: 5
      start_period: 10s
    restart: unless-stopped
</code></pre>', NULL, '', 1, '2021-11-13 19:02:05', '2021-11-13 19:02:05', 1, 'Подключение расширений, необходимых для работы php с базой данных Postgresql в Docker контейнере', '''/postgresql-data'':48B ''/src/backend/.env'':44B ''/var/lib/postgresql/data'':49B ''10s'':73B,80B ''5'':77B ''5432'':60B ''54321'':59B ''5s'':75B ''bcmath'':23B,99C ''cmd'':64B ''cmd-shell'':63B ''compos'':34B ''d'':70B ''docker'':8A,33B,106C ''docker-compos'':32B ''dockerfil'':11B,87C ''env'':42B ''extens'':20B,96C ''file'':43B ''healthcheck'':61B ''imag'':36B ''instal'':18B,94C ''install-php-extens'':17B,93C ''interv'':72B ''isreadi'':67B ''laradrom'':69B,71B ''mysql'':22B,98C ''opcach'':24B,100C ''pdo'':14B,21B,28B,90C,97C,104C ''period'':79B ''pg'':66B ''pgsql'':12B,15B,27B,29B,35B,88C,91C,103C,105C ''php'':5A,19B,95C,107C ''port'':58B ''postgr'':2A,37B,40B ''postgresql'':108C ''redi'':25B,101C ''restart'':81B ''retri'':76B ''run'':16B,92C ''shell'':65B ''start'':78B ''stop'':84B ''test'':62B ''timeout'':74B ''u'':68B ''unless'':83B ''unless-stop'':82B ''volum'':47B ''xdebug'':26B,102C ''баз'':52B ''блок'':30B ''верс'':41B ''включ'':1A ''добав'':9B,85C ''завершен'':55B ''контейнер'':7A,57B ''конфигурац'':46B ''останет'':53B ''официальн'':39B ''папк'':50B ''последн'':38B ''работ'':56B ''расширен'':3A,109C ''сборк'':6A ''файл'':45B');
INSERT INTO public.pin_items (id, user_id, title, slug, essence, content, target_link, image, is_published, created_at, updated_at, pintype_id, seo_description, searchable) VALUES (40, 1, 'Beekeeper Studio - редактор SQL с открытым исходным кодом и менеджер баз данных', 'beekeeper_studio_redaktor_sql_s_otkrytym_isxodnym_kodom_i_menedzer_baz_dannyx', '<p>Редактор SQL с открытым исходным кодом и менеджер баз данных</p>', '<h3>Особенности <strong>Beekeeper Studio</strong></h3>
<ul>
<li>Базы данных, которыми можно управлять с помощью сервиса &mdash; MySQL , Postgres , SQLite и SQL Server.</li>
<li>Наряду с обычными соединениями вы можете зашифровать ваше соединение с помощью SSL или туннелировать через SSH.&nbsp;Сохраните пароль для подключения, и Beekeeper Studio обязательно зашифрует его, чтобы сохранить его в безопасности.</li>
<li>Встроенный редактор обеспечивает подсветку синтаксиса и автоматическое заполнение предложений для ваших таблиц, чтобы вы могли работать быстро и легко.</li>
<li>Откройте десятки вкладок, чтобы вы могли писать несколько запросов и таблиц в тандеме, не переключая окна.</li>
<li>Легко сохраняйте и упорядочивайте часто используемые запросы, чтобы вы могли использовать их снова и снова для всех ваших соединений.</li>
<li>Таблицы имеют свои вкладки. Используйте табличное представление для сортировки и фильтрации результатов по столбцам.</li>
</ul>
<p>&nbsp;</p>
<h3>Преимущества <strong>Beekeeper Studio</strong></h3>
<ul>
<li>Основные функции всегда открыты и бесплатны с разрешительной лицензией (Apache или MIT).</li>
<li>Полностью конфиденциально.</li>
<li>Работает в автономном режиме &mdash; вам никогда не понадобится подключение к Интернету, чтобы использовать приложение.</li>
<li>Инклюзивное сообщество.</li>
<li>Установка возможна на Windows, Linux и Mac.</li>
</ul>', 'https://www.beekeeperstudio.io/', '', 1, '2021-11-13 22:24:37', '2021-11-13 22:24:37', 2, 'Редактор SQL с открытым исходным кодом и менеджер баз данных', '''apach'':141B ''beekeep'':1A,14B,51B,130B ''linux'':166B ''mac'':168B ''mit'':143B ''mysql'':24B ''postgr'':25B ''postgresql'':179C ''server'':29B ''sql'':4A,28B,170C,181C ''sqlite'':26B ''ssh'':45B ''ssl'':41B ''studio'':2A,15B,52B,131B ''window'':165B ''автоматическ'':67B ''автономн'':148B ''баз'':11A,16B,177C,183C ''безопасн'':60B ''бесплатн'':137B ''быстр'':77B ''ваш'':37B,71B,113B ''вкладк'':118B ''вкладок'':82B ''возможн'':163B ''встроен'':61B ''дан'':12A,17B,178C,184C ''десятк'':81B ''заполнен'':68B ''запрос'':88B,102B ''зашифр'':54B ''зашифрова'':36B ''имеют'':116B ''инклюзивн'':160B ''интернет'':156B ''использ'':119B ''использова'':106B,158B ''используем'':101B ''исходн'':7A,173C ''код'':8A,174C ''конфиденциальн'':145B ''котор'':18B ''легк'':79B,96B ''лиценз'':140B ''менеджер'':10A,176C,182C ''могл'':75B,85B,105B ''может'':35B ''наряд'':30B ''нескольк'':87B ''обеспечива'':63B ''обычн'':32B ''обязательн'':53B ''окн'':95B ''основн'':132B ''особен'':13B ''откройт'':80B ''открыт'':6A,135B,172C ''парол'':47B ''переключ'':94B ''писа'':86B ''подключен'':49B,154B ''подсветк'':64B ''полност'':144B ''помощ'':22B,40B ''понадоб'':153B ''предложен'':69B ''представлен'':121B ''преимуществ'':129B ''приложен'':159B ''работа'':76B,146B ''разрешительн'':139B ''редактор'':3A,62B,169C,180C ''режим'':149B ''результат'':126B ''сво'':117B ''сервис'':23B ''синтаксис'':65B ''снов'':108B,110B ''соединен'':33B,38B,114B ''сообществ'':161B ''сортировк'':123B ''сохран'':46B,57B ''сохраня'':97B ''столбц'':128B ''таблиц'':72B,90B,115B ''табличн'':120B ''тандем'':92B ''туннелирова'':43B ''упорядочива'':99B ''управля'':20B ''установк'':162B ''фильтрац'':125B ''функц'':133B ''част'':100B');


--
-- TOC entry 3743 (class 0 OID 16472)
-- Dependencies: 238
-- Data for Name: pin_itemboards; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (1, 1, 1, 1, 1, 7, 7, 7, '2021-10-28 19:40:08', '2021-10-28 19:40:08', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (2, 2, 2, 2, 1, 1, 1, 1, '2021-10-28 19:52:50', '2021-10-28 19:52:50', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (3, 3, 2, 2, 1, 1, 1, 1, '2021-10-28 22:10:18', '2021-10-28 22:10:18', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (4, 4, 3, 4, 1, 1, 1, 1, '2021-10-29 00:16:26', '2021-10-29 08:25:05', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (7, 6, 5, 5, 1, 1, 1, 1, '2021-10-29 09:10:48', '2021-10-29 09:10:48', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (8, 7, 7, 7, 1, 1, 1, 1, '2021-10-29 09:50:56', '2021-10-29 09:50:56', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (9, 8, 1, 1, 1, 7, 7, 7, '2021-10-29 15:08:36', '2021-10-29 15:08:36', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (10, 8, 2, 1, 0, 7, 1, 7, '2021-10-29 15:09:27', '2021-10-29 15:09:27', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (11, 1, 2, 1, 0, 7, 1, 7, '2021-10-29 15:17:52', '2021-10-29 15:17:52', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (13, 5, 4, 4, 1, 1, 1, 1, '2021-10-29 18:40:06', '2021-10-29 18:40:06', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (14, 9, 8, 8, 1, 2, 2, 2, '2021-10-29 20:46:08', '2021-10-29 20:46:08', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (15, 10, 9, 9, 1, 7, 7, 7, '2021-10-30 09:36:54', '2021-10-30 09:36:54', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (16, 11, 2, 2, 1, 1, 1, 1, '2021-10-30 10:40:40', '2021-10-30 10:40:40', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (18, 13, 3, 3, 1, 1, 1, 1, '2021-11-01 21:24:40', '2021-11-01 21:24:40', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (66, 57, 13, 13, 1, 1, 1, 1, '2021-11-18 12:57:39', '2021-11-18 12:57:39', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (67, 58, 5, 5, 1, 1, 1, 1, '2021-11-18 20:15:56', '2021-11-18 20:15:56', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (22, 17, 11, 11, 1, 1, 1, 1, '2021-11-02 13:05:11', '2021-11-02 13:05:11', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (23, 18, 2, 2, 1, 1, 1, 1, '2021-11-03 18:56:44', '2021-11-03 18:56:44', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (24, 19, 1, 1, 1, 7, 7, 7, '2021-11-05 09:45:50', '2021-11-05 09:45:50', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (25, 20, 3, 3, 1, 1, 1, 1, '2021-11-05 20:58:41', '2021-11-05 20:58:41', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (27, 22, 1, 1, 1, 7, 7, 7, '2021-11-06 19:52:50', '2021-11-06 19:52:50', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (31, 21, 5, 5, 1, 1, 1, 1, '2021-11-11 19:50:28', '2021-11-11 19:50:28', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (32, 24, 10, 10, 1, 2, 2, 2, '2021-11-12 18:08:15', '2021-11-13 00:38:22', '2021-11-13 00:38:22');
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (33, 24, 8, 8, 1, 2, 2, 2, '2021-11-13 00:38:22', '2021-11-13 00:38:22', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (17, 12, 10, 8, 1, 2, 2, 2, '2021-11-01 18:58:02', '2021-11-13 00:38:22', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (19, 14, 10, 8, 1, 2, 2, 2, '2021-11-01 22:05:37', '2021-11-13 00:38:22', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (20, 15, 10, 8, 1, 2, 2, 2, '2021-11-01 22:10:03', '2021-11-13 00:38:22', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (21, 16, 10, 8, 1, 2, 2, 2, '2021-11-02 10:10:14', '2021-11-13 00:38:22', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (34, 25, 13, 13, 1, 1, 1, 1, '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (35, 26, 13, 13, 1, 1, 1, 1, '2021-11-13 01:05:15', '2021-11-13 01:05:15', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (36, 27, 13, 13, 1, 1, 1, 1, '2021-11-13 01:13:30', '2021-11-13 01:13:30', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (37, 28, 2, 2, 1, 1, 1, 1, '2021-11-13 01:22:11', '2021-11-13 01:22:11', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (38, 29, 15, 15, 1, 1, 1, 1, '2021-11-13 01:37:41', '2021-11-13 01:37:41', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (39, 30, 13, 13, 1, 1, 1, 1, '2021-11-13 11:04:42', '2021-11-13 11:04:42', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (40, 31, 13, 13, 1, 1, 1, 1, '2021-11-13 13:10:29', '2021-11-13 13:10:29', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (41, 32, 3, 3, 1, 1, 1, 1, '2021-11-13 19:02:05', '2021-11-13 19:02:05', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (42, 33, 13, 13, 1, 1, 1, 1, '2021-11-13 19:35:41', '2021-11-13 19:35:41', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (43, 34, 13, 13, 1, 1, 1, 1, '2021-11-13 19:45:29', '2021-11-13 19:45:29', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (44, 35, 13, 13, 1, 1, 1, 1, '2021-11-13 19:50:52', '2021-11-13 19:50:52', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (45, 36, 13, 13, 1, 1, 1, 1, '2021-11-13 19:56:50', '2021-11-13 19:56:50', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (46, 37, 16, 16, 1, 7, 7, 7, '2021-11-13 20:06:48', '2021-11-13 20:06:48', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (47, 38, 16, 16, 1, 7, 7, 7, '2021-11-13 20:09:39', '2021-11-13 20:09:39', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (48, 39, 13, 13, 1, 1, 1, 1, '2021-11-13 20:14:38', '2021-11-13 20:14:38', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (49, 40, 13, 13, 1, 1, 1, 1, '2021-11-13 22:24:37', '2021-11-13 22:24:37', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (50, 41, 5, 5, 1, 1, 1, 1, '2021-11-13 22:42:07', '2021-11-13 22:42:07', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (51, 42, 13, 13, 1, 1, 1, 1, '2021-11-13 22:48:09', '2021-11-13 22:48:09', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (52, 43, 2, 2, 1, 1, 1, 1, '2021-11-13 23:00:29', '2021-11-13 23:00:29', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (53, 44, 13, 13, 1, 1, 1, 1, '2021-11-13 23:58:41', '2021-11-13 23:58:41', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (54, 45, 13, 13, 1, 1, 1, 1, '2021-11-14 13:49:08', '2021-11-14 13:49:08', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (55, 46, 13, 13, 1, 1, 1, 1, '2021-11-14 14:43:01', '2021-11-14 14:43:01', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (56, 47, 13, 13, 1, 1, 1, 1, '2021-11-16 16:40:48', '2021-11-16 16:40:48', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (57, 48, 3, 3, 1, 1, 1, 1, '2021-11-16 17:23:23', '2021-11-16 17:23:23', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (58, 49, 13, 13, 1, 1, 1, 1, '2021-11-16 17:58:27', '2021-11-16 17:58:27', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (59, 50, 13, 13, 1, 1, 1, 1, '2021-11-16 22:29:08', '2021-11-16 22:29:08', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (60, 51, 13, 13, 1, 1, 1, 1, '2021-11-16 22:40:37', '2021-11-16 22:40:37', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (61, 52, 13, 13, 1, 1, 1, 1, '2021-11-17 11:38:18', '2021-11-17 11:38:18', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (62, 53, 13, 13, 1, 1, 1, 1, '2021-11-17 11:49:24', '2021-11-17 11:49:24', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (63, 54, 13, 13, 1, 1, 1, 1, '2021-11-17 12:12:28', '2021-11-17 12:12:28', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (64, 55, 2, 2, 1, 1, 1, 1, '2021-11-17 12:40:42', '2021-11-17 12:40:42', NULL);
INSERT INTO public.pin_itemboards (id, pin_id, board_id, repin_from_board_id, is_primary_board, pin_user_id, board_user_id, repin_from_user_id, created_at, updated_at, deleted_at) VALUES (65, 56, 2, 2, 1, 1, 1, 1, '2021-11-18 00:05:10', '2021-11-18 00:05:10', NULL);


--
-- TOC entry 3756 (class 0 OID 16517)
-- Dependencies: 251
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (12, '222222', '2021-09-28 22:16:58', '2021-09-28 22:16:58', NULL, '222222');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (13, '4444', '2021-09-28 22:17:29', '2021-09-28 22:17:29', NULL, '4444');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (14, 'цц444', '2021-09-29 07:58:01', '2021-09-29 07:58:01', NULL, 'cc444');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (15, '66666666', '2021-09-29 08:25:39', '2021-09-29 08:25:39', NULL, '66666666');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (16, 'вася', '2021-09-29 09:23:40', '2021-09-29 09:23:40', NULL, 'vasya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (17, 'петя', '2021-09-29 09:29:29', '2021-09-29 09:29:29', NULL, 'petya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (18, '1111', '2021-09-29 12:35:48', '2021-09-29 12:35:48', NULL, '1111');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (19, '2222', '2021-09-29 20:00:45', '2021-09-29 20:00:45', NULL, '2222');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (20, '33', '2021-09-29 20:12:18', '2021-09-29 20:12:18', NULL, '33');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (21, 'Medzhis', '2021-09-30 19:13:34', '2021-09-30 19:13:34', NULL, 'medzhis');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (22, 'Батва', '2021-09-30 22:05:48', '2021-09-30 22:05:48', NULL, 'batva');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (23, '33333333', '2021-10-21 11:26:44', '2021-10-21 11:26:44', NULL, '33333333');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (24, '123123', '2021-10-21 11:42:13', '2021-10-21 11:42:13', NULL, '123123');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (25, 'почта', '2021-10-28 19:40:09', '2021-10-28 19:40:09', NULL, 'pocta');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (26, 'email', '2021-10-28 19:40:09', '2021-10-28 19:40:09', NULL, 'email');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (27, 'debian', '2021-10-28 19:40:09', '2021-10-28 19:40:09', NULL, 'debian');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (28, 'laravel', '2021-10-28 19:41:55', '2021-10-28 19:41:55', NULL, 'laravel');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (29, 'smtp', '2021-10-28 19:41:55', '2021-10-28 19:41:55', NULL, 'smtp');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (30, 'jetstream', '2021-10-28 19:52:50', '2021-10-28 19:52:50', NULL, 'jetstream');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (31, 'регистрационная почта', '2021-10-28 19:52:50', '2021-10-28 19:52:50', NULL, 'registracionnaya-pocta');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (32, 'верификация', '2021-10-28 19:52:50', '2021-10-28 19:52:50', NULL, 'verifikaciya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (33, 'artisan', '2021-10-28 22:10:18', '2021-10-28 22:10:18', NULL, 'artisan');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (34, 'storage', '2021-10-28 22:10:18', '2021-10-28 22:10:18', NULL, 'storage');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (35, 'link', '2021-10-28 22:10:18', '2021-10-28 22:10:18', NULL, 'link');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (36, 'ссылка', '2021-10-28 22:10:18', '2021-10-28 22:10:18', NULL, 'ssylka');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (37, 'docker', '2021-10-29 00:16:26', '2021-10-29 00:16:26', NULL, 'docker');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (38, 'несколько команд', '2021-10-29 00:16:26', '2021-10-29 00:16:26', NULL, 'neskolko-komand');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (39, 'http', '2021-10-29 08:20:07', '2021-10-29 08:20:07', NULL, 'http');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (40, 'https', '2021-10-29 08:20:07', '2021-10-29 08:20:07', NULL, 'https');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (41, 'htaccess', '2021-10-29 08:20:07', '2021-10-29 08:20:07', NULL, 'htaccess');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (42, 'redirect', '2021-10-29 08:20:07', '2021-10-29 08:20:07', NULL, 'redirect');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (43, 'перенаправление', '2021-10-29 08:20:07', '2021-10-29 08:20:07', NULL, 'perenapravlenie');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (44, 'phpstorm', '2021-10-29 09:10:48', '2021-10-29 09:10:48', NULL, 'phpstorm');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (45, 'вкладки', '2021-10-29 09:10:48', '2021-10-29 09:10:48', NULL, 'vkladki');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (46, 'справа', '2021-10-29 09:10:48', '2021-10-29 09:10:48', NULL, 'sprava');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (47, 'css', '2021-10-29 09:50:56', '2021-10-29 09:50:56', NULL, 'css');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (48, 'background', '2021-10-29 09:50:56', '2021-10-29 09:50:56', NULL, 'background');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (49, 'фон', '2021-10-29 09:50:56', '2021-10-29 09:50:56', NULL, 'fon');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (50, 'контроллер', '2021-10-29 15:08:36', '2021-10-29 15:08:36', NULL, 'kontroller');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (51, 'экшн', '2021-10-29 15:08:36', '2021-10-29 15:08:36', NULL, 'eksn');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (52, 'название текущего метода контроллера', '2021-10-29 15:08:36', '2021-10-29 15:08:36', NULL, 'nazvanie-tekushhego-metoda-kontrollera');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (53, 'action', '2021-10-29 15:08:36', '2021-10-29 15:08:36', NULL, 'action');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (54, 'Blade', '2021-10-29 20:46:08', '2021-10-29 20:46:08', NULL, 'blade');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (55, 'component', '2021-10-29 20:46:08', '2021-10-29 20:46:08', NULL, 'component');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (56, 'компонент', '2021-10-29 20:46:08', '2021-10-29 20:46:08', NULL, 'komponent');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (57, 'ckeditor', '2021-10-30 09:36:54', '2021-10-30 09:36:54', NULL, 'ckeditor');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (58, 'youtube', '2021-10-30 09:36:54', '2021-10-30 09:36:54', NULL, 'youtube');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (59, 'javascript', '2021-10-30 09:36:54', '2021-10-30 09:36:54', NULL, 'javascript');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (60, 'blade components', '2021-10-30 10:40:40', '2021-10-30 10:40:40', NULL, 'blade-components');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (61, 'компоненты Blade', '2021-10-30 10:40:40', '2021-10-30 10:40:40', NULL, 'komponenty-blade');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (62, 'git', '2021-11-01 18:58:02', '2021-11-01 18:58:02', NULL, 'git');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (63, 'gitlab', '2021-11-01 18:58:02', '2021-11-01 18:58:02', NULL, 'gitlab');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (64, 'список коммитов', '2021-11-01 18:58:02', '2021-11-01 18:58:02', NULL, 'spisok-kommitov');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (65, 'commits', '2021-11-01 18:58:02', '2021-11-01 18:58:02', NULL, 'commits');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (66, 'api', '2021-11-01 18:58:02', '2021-11-01 18:58:02', NULL, 'api');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (67, 'docker down', '2021-11-01 21:24:40', '2021-11-01 21:24:40', NULL, 'docker-down');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (68, 'контейнер', '2021-11-01 21:24:40', '2021-11-01 21:24:40', NULL, 'konteiner');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (69, 'остановка контейнеров', '2021-11-01 21:24:40', '2021-11-01 21:24:40', NULL, 'ostanovka-konteinerov');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (70, 'репозиторий', '2021-11-01 22:05:37', '2021-11-01 22:05:37', NULL, 'repozitorii');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (71, 'несколько репозиториев', '2021-11-01 22:05:37', '2021-11-01 22:05:37', NULL, 'neskolko-repozitoriev');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (72, 'push', '2021-11-01 22:10:03', '2021-11-01 22:10:03', NULL, 'push');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (73, 'несколько', '2021-11-01 22:10:03', '2021-11-01 22:10:03', NULL, 'neskolko');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (74, 'commit', '2021-11-02 10:10:14', '2021-11-02 10:10:14', NULL, 'commit');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (75, 'имя', '2021-11-02 10:10:14', '2021-11-02 10:10:14', NULL, 'imya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (76, 'изменить почту', '2021-11-02 10:10:14', '2021-11-02 10:10:14', NULL, 'izmenit-poctu');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (77, 'изменить имя', '2021-11-02 10:10:14', '2021-11-02 10:10:14', NULL, 'izmenit-imya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (78, 'larastan', '2021-11-02 13:05:11', '2021-11-02 13:05:11', NULL, 'larastan');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (79, 'статический анализатор', '2021-11-02 13:05:11', '2021-11-02 13:05:11', NULL, 'staticeskii-analizator');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (80, 'metatags', '2021-11-03 18:56:44', '2021-11-03 18:56:44', NULL, 'metatags');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (81, 'seo', '2021-11-03 18:56:44', '2021-11-03 18:56:44', NULL, 'seo');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (82, 'seotools', '2021-11-03 18:56:44', '2021-11-03 18:56:44', NULL, 'seotools');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (83, 'метатеги', '2021-11-03 18:56:44', '2021-11-03 18:56:44', NULL, 'metategi');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (84, 'seo tools', '2021-11-03 21:15:19', '2021-11-03 21:15:19', NULL, 'seo-tools');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (85, 'unit test', '2021-11-05 09:45:50', '2021-11-05 09:45:50', NULL, 'unit-test');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (86, 'phpunit', '2021-11-05 09:45:50', '2021-11-05 09:45:50', NULL, 'phpunit');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (87, 'тесты', '2021-11-05 09:45:50', '2021-11-05 09:45:50', NULL, 'testy');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (88, 'unit тесты', '2021-11-05 09:45:50', '2021-11-05 09:45:50', NULL, 'unit-testy');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (89, 'докер', '2021-11-05 09:45:50', '2021-11-05 09:45:50', NULL, 'doker');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (90, 'подключение', '2021-11-05 20:58:41', '2021-11-05 20:58:41', NULL, 'podklyucenie');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (91, 'xdebug', '2021-11-06 19:05:03', '2021-11-06 19:05:03', NULL, 'xdebug');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (92, 'отладка', '2021-11-06 19:05:03', '2021-11-06 19:05:03', NULL, 'otladka');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (93, 'linux', '2021-11-06 19:05:03', '2021-11-06 19:05:03', NULL, 'linux');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (94, 'php', '2021-11-06 19:52:50', '2021-11-06 19:52:50', NULL, 'php');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (95, 'dump', '2021-11-06 19:52:50', '2021-11-06 19:52:50', NULL, 'dump');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (96, 'xhprof', '2021-11-06 19:52:50', '2021-11-06 19:52:50', NULL, 'xhprof');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (97, 'blackfire', '2021-11-06 19:52:50', '2021-11-06 19:52:50', NULL, 'blackfire');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (98, 'strace', '2021-11-06 19:52:50', '2021-11-06 19:52:50', NULL, 'strace');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (100, 'asdasd', '2021-11-12 18:08:15', '2021-11-12 18:08:15', NULL, 'asdasd');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (101, 'index.php', '2021-11-13 00:38:22', '2021-11-13 00:38:22', NULL, 'indexphp');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (102, 'url', '2021-11-13 00:38:22', '2021-11-13 00:38:22', NULL, 'url');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (103, 'nginx', '2021-11-13 00:38:22', '2021-11-13 00:38:22', NULL, 'nginx');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (104, 'postgresql', '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL, 'postgresql');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (105, 'postgres', '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL, 'postgres');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (106, 'database', '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL, 'database');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (107, 'субд', '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL, 'subd');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (108, 'отключить', '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL, 'otklyucit');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (109, 'миграция', '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL, 'migraciya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (110, 'внешние ключи', '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL, 'vnesnie-klyuci');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (111, 'foreign keys', '2021-11-13 00:53:18', '2021-11-13 00:53:18', NULL, 'foreign-keys');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (112, 'backup', '2021-11-13 01:05:15', '2021-11-13 01:05:15', NULL, 'backup');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (113, 'символ перевода строки', '2021-11-13 01:13:30', '2021-11-13 01:13:30', NULL, 'simvol-perevoda-stroki');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (114, 'замена', '2021-11-13 01:13:30', '2021-11-13 01:13:30', NULL, 'zamena');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (115, 'boot', '2021-11-13 01:22:11', '2021-11-13 01:22:11', NULL, 'boot');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (116, 'register', '2021-11-13 01:22:11', '2021-11-13 01:22:11', NULL, 'register');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (117, 'ServiceProvider', '2021-11-13 01:22:11', '2021-11-13 01:22:11', NULL, 'serviceprovider');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (118, 'различия', '2021-11-13 01:22:11', '2021-11-13 01:22:11', NULL, 'razliciya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (119, 'ubuntu', '2021-11-13 01:37:41', '2021-11-13 01:37:41', NULL, 'ubuntu');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (120, 'nmap', '2021-11-13 01:37:42', '2021-11-13 01:37:42', NULL, 'nmap');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (121, 'сканер портов', '2021-11-13 01:37:42', '2021-11-13 01:37:42', NULL, 'skaner-portov');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (122, 'acid', '2021-11-13 11:04:42', '2021-11-13 11:04:42', NULL, 'acid');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (123, 'субд. база данных', '2021-11-13 11:04:42', '2021-11-13 11:04:42', NULL, 'subd-baza-dannyx');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (124, 'fulltext search', '2021-11-13 13:10:29', '2021-11-13 13:10:29', NULL, 'fulltext-search');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (125, 'полнотекстовый поиск', '2021-11-13 13:10:29', '2021-11-13 13:10:29', NULL, 'polnotekstovyi-poisk');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (126, 'scout', '2021-11-13 13:10:29', '2021-11-13 13:10:29', NULL, 'scout');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (127, 'tsvector', '2021-11-13 13:10:29', '2021-11-13 13:10:29', NULL, 'tsvector');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (128, 'расширения', '2021-11-13 19:02:05', '2021-11-13 19:02:05', NULL, 'rassireniya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (129, 'autoincrement', '2021-11-13 19:35:41', '2021-11-13 19:35:41', NULL, 'autoincrement');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (130, 'автоинкремент', '2021-11-13 19:35:41', '2021-11-13 19:35:41', NULL, 'avtoinkrement');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (131, 'последовательность', '2021-11-13 19:35:41', '2021-11-13 19:35:41', NULL, 'posledovatelnost');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (132, 'sequence', '2021-11-13 19:35:41', '2021-11-13 19:35:41', NULL, 'sequence');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (133, 'version', '2021-11-13 19:45:29', '2021-11-13 19:45:29', NULL, 'version');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (134, 'версия', '2021-11-13 19:45:29', '2021-11-13 19:45:29', NULL, 'versiya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (135, 'psql', '2021-11-13 19:50:52', '2021-11-13 19:50:52', NULL, 'psql');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (136, 'openpgp', '2021-11-13 19:56:50', '2021-11-13 19:56:50', NULL, 'openpgp');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (137, 'error', '2021-11-13 19:56:50', '2021-11-13 19:56:50', NULL, 'error');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (138, 'ошибка', '2021-11-13 19:56:50', '2021-11-13 19:56:50', NULL, 'osibka');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (139, 'phpbrew', '2021-11-13 20:06:48', '2021-11-13 20:06:48', NULL, 'phpbrew');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (140, 'несколько версий php', '2021-11-13 20:06:48', '2021-11-13 20:06:48', NULL, 'neskolko-versii-php');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (141, 'vestacp', '2021-11-13 20:09:39', '2021-11-13 20:09:39', NULL, 'vestacp');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (142, 'установка', '2021-11-13 20:09:39', '2021-11-13 20:09:39', NULL, 'ustanovka');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (143, 'pg_dba.conf', '2021-11-13 20:14:38', '2021-11-13 20:14:38', NULL, 'pg-dbaconf');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (144, 'аутентификация', '2021-11-13 20:14:38', '2021-11-13 20:14:38', NULL, 'autentifikaciya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (145, 'редактор', '2021-11-13 22:24:38', '2021-11-13 22:24:38', NULL, 'redaktor');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (146, 'sql', '2021-11-13 22:24:38', '2021-11-13 22:24:38', NULL, 'sql');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (147, 'менеджер баз данных', '2021-11-13 22:24:38', '2021-11-13 22:24:38', NULL, 'menedzer-baz-dannyx');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (148, 'настройка', '2021-11-13 22:42:07', '2021-11-13 22:42:07', NULL, 'nastroika');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (149, 'пользователи. просмотр', '2021-11-13 22:48:09', '2021-11-13 22:48:09', NULL, 'polzovateli-prosmotr');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (150, 'таблица пользователей', '2021-11-13 22:48:09', '2021-11-13 22:48:09', NULL, 'tablica-polzovatelei');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (151, 'pg_user', '2021-11-13 22:48:09', '2021-11-13 22:48:09', NULL, 'pg-user');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (152, 'jobs', '2021-11-13 23:00:30', '2021-11-13 23:00:30', NULL, 'jobs');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (153, 'таблица', '2021-11-13 23:00:30', '2021-11-13 23:00:30', NULL, 'tablica');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (154, 'команды', '2021-11-13 23:58:41', '2021-11-13 23:58:41', NULL, 'komandy');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (155, 'пользователи', '2021-11-13 23:58:41', '2021-11-13 23:58:41', NULL, 'polzovateli');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (156, 'бартунов', '2021-11-14 13:49:08', '2021-11-14 13:49:08', NULL, 'bartunov');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (157, 'доклад', '2021-11-14 13:49:09', '2021-11-14 13:49:09', NULL, 'doklad');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (158, 'dbma', '2021-11-14 14:43:01', '2021-11-14 14:43:01', NULL, 'dbma');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (159, 'rating', '2021-11-14 14:43:01', '2021-11-14 14:43:01', NULL, 'rating');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (160, 'рейтинг', '2021-11-14 14:43:01', '2021-11-14 14:43:01', NULL, 'reiting');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (161, 'базы данных', '2021-11-14 14:43:01', '2021-11-14 14:43:01', NULL, 'bazy-dannyx');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (162, 'ranking', '2021-11-14 14:43:01', '2021-11-14 14:43:01', NULL, 'ranking');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (163, 'delete', '2021-11-16 17:23:23', '2021-11-16 17:23:23', NULL, 'delete');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (164, 'удалить. удалить все', '2021-11-16 17:23:23', '2021-11-16 17:23:23', NULL, 'udalit-udalit-vse');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (165, 'удалить контейнеры', '2021-11-16 17:23:23', '2021-11-16 17:23:23', NULL, 'udalit-konteinery');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (166, 'sys/sdt.h', '2021-11-16 17:58:27', '2021-11-16 17:58:27', NULL, 'syssdth');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (167, 'sdt.h', '2021-11-16 17:58:27', '2021-11-16 17:58:27', NULL, 'sdth');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (168, '', '2021-11-16 17:58:27', '2021-11-16 17:58:27', NULL, '');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (169, 'rum', '2021-11-16 22:29:08', '2021-11-16 22:29:08', NULL, 'rum');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (170, 'index', '2021-11-16 22:29:08', '2021-11-16 22:29:08', NULL, 'index');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (171, 'индекс', '2021-11-16 22:29:08', '2021-11-16 22:29:08', NULL, 'indeks');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (172, 'rum индекс', '2021-11-16 22:29:08', '2021-11-16 22:29:08', NULL, 'rum-indeks');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (173, 'addons', '2021-11-16 22:40:37', '2021-11-16 22:40:37', NULL, 'addons');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (174, 'plugin', '2021-11-16 22:40:37', '2021-11-16 22:40:37', NULL, 'plugin');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (175, 'gin', '2021-11-17 11:38:18', '2021-11-17 11:38:18', NULL, 'gin');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (176, 'индексы', '2021-11-17 11:38:18', '2021-11-17 11:38:18', NULL, 'indeksy');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (177, 'расширение', '2021-11-17 11:49:25', '2021-11-17 11:49:25', NULL, 'rassirenie');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (178, 'управления', '2021-11-17 12:12:28', '2021-11-17 12:12:28', NULL, 'upravleniya');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (179, 'удаление', '2021-11-17 12:12:28', '2021-11-17 12:12:28', NULL, 'udalenie');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (180, 'редактирование', '2021-11-17 12:12:28', '2021-11-17 12:12:28', NULL, 'redaktirovanie');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (181, 'elasticsearch', '2021-11-17 12:40:42', '2021-11-17 12:40:42', NULL, 'elasticsearch');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (182, 'driver', '2021-11-17 12:40:42', '2021-11-17 12:40:42', NULL, 'driver');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (183, 'поиск', '2021-11-17 12:40:42', '2021-11-17 12:40:42', NULL, 'poisk');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (184, 'драйвер', '2021-11-17 12:40:42', '2021-11-17 12:40:42', NULL, 'draiver');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (185, 'queue', '2021-11-18 00:05:10', '2021-11-18 00:05:10', NULL, 'queue');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (186, 'очередь', '2021-11-18 00:05:10', '2021-11-18 00:05:10', NULL, 'ocered');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (187, 'обработка', '2021-11-18 00:05:10', '2021-11-18 00:05:10', NULL, 'obrabotka');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (188, 'однократный запуск', '2021-11-18 00:05:10', '2021-11-18 00:05:10', NULL, 'odnokratnyi-zapusk');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (189, 'worker', '2021-11-18 00:05:10', '2021-11-18 00:05:10', NULL, 'worker');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (190, 'словарь', '2021-11-18 12:57:39', '2021-11-18 12:57:39', NULL, 'slovar');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (191, 'добавить', '2021-11-18 12:57:39', '2021-11-18 12:57:39', NULL, 'dobavit');
INSERT INTO public.tags (id, name, created_at, updated_at, deleted_at, slug) VALUES (192, 'цепочка', '2021-11-18 12:57:39', '2021-11-18 12:57:39', NULL, 'cepocka');


--
-- TOC entry 3747 (class 0 OID 16486)
-- Dependencies: 242
-- Data for Name: pin_tags; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (197, 18, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (198, 18, 80);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (199, 18, 81);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (200, 18, 82);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (201, 18, 83);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (202, 18, 84);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (203, 2, 26);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (204, 2, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (205, 2, 30);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (206, 2, 31);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (207, 2, 32);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (208, 3, 33);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (209, 3, 34);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (210, 3, 35);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (211, 3, 36);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (214, 5, 39);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (215, 5, 40);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (216, 5, 41);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (217, 5, 42);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (218, 5, 43);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (219, 6, 44);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (220, 6, 45);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (221, 6, 46);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (222, 7, 47);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (223, 7, 48);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (224, 7, 49);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (232, 17, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (233, 17, 78);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (234, 17, 79);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (240, 8, 50);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (241, 8, 51);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (242, 8, 52);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (243, 8, 53);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (244, 10, 57);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (245, 10, 58);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (246, 10, 59);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (251, 12, 62);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (252, 12, 63);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (253, 12, 64);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (254, 12, 65);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (255, 12, 66);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (256, 14, 62);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (257, 14, 70);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (258, 14, 71);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (265, 13, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (266, 13, 67);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (267, 13, 68);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (268, 13, 69);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (269, 19, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (270, 19, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (271, 19, 85);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (272, 19, 86);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (273, 19, 87);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (274, 19, 88);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (275, 19, 89);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (276, 19, 68);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (292, 21, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (293, 21, 44);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (294, 21, 89);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (295, 21, 91);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (296, 21, 92);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (297, 21, 93);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (298, 22, 94);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (299, 22, 95);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (300, 22, 91);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (301, 22, 96);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (302, 22, 97);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (303, 22, 98);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (304, 22, 92);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (5, 11, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (6, 11, 60);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (7, 11, 61);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (8, 4, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (9, 4, 38);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (10, 9, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (11, 9, 54);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (12, 9, 55);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (13, 9, 56);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (14, 16, 25);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (15, 16, 62);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (16, 16, 74);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (17, 16, 75);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (18, 16, 76);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (19, 16, 77);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (20, 20, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (21, 20, 68);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (22, 20, 90);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (23, 1, 25);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (24, 1, 26);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (25, 1, 27);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (26, 1, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (27, 1, 29);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (28, 15, 62);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (29, 15, 70);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (30, 15, 72);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (31, 15, 73);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (307, 24, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (308, 24, 101);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (309, 24, 41);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (310, 24, 102);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (311, 24, 81);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (312, 24, 103);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (313, 25, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (314, 25, 105);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (315, 25, 106);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (316, 25, 107);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (317, 25, 108);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (318, 25, 109);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (319, 25, 110);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (320, 25, 111);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (325, 26, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (326, 26, 95);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (327, 26, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (328, 26, 112);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (329, 27, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (330, 27, 113);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (331, 27, 114);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (342, 28, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (343, 28, 115);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (344, 28, 116);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (345, 28, 117);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (346, 28, 118);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (347, 29, 93);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (348, 29, 119);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (349, 29, 120);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (350, 29, 121);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (381, 31, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (382, 31, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (383, 31, 124);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (384, 31, 125);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (385, 31, 126);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (386, 31, 127);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (387, 30, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (388, 30, 122);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (389, 30, 123);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (390, 32, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (391, 32, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (392, 32, 94);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (393, 32, 128);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (394, 33, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (395, 33, 129);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (396, 33, 130);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (397, 33, 131);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (398, 33, 132);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (399, 34, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (400, 34, 133);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (401, 34, 134);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (402, 35, 135);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (403, 35, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (404, 36, 105);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (405, 36, 136);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (406, 36, 137);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (407, 36, 138);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (408, 37, 139);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (409, 37, 94);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (410, 37, 140);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (411, 38, 139);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (412, 38, 141);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (413, 38, 94);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (414, 38, 142);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (706, 57, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (707, 57, 125);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (708, 57, 183);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (418, 40, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (419, 40, 145);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (420, 40, 146);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (421, 40, 147);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (709, 57, 190);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (710, 57, 191);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (711, 57, 192);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (727, 58, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (728, 58, 44);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (729, 58, 91);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (730, 58, 92);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (731, 58, 138);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (436, 43, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (437, 43, 152);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (438, 43, 153);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (439, 43, 109);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (440, 43, 106);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (441, 42, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (442, 42, 149);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (443, 42, 150);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (444, 42, 151);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (445, 41, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (446, 41, 142);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (447, 41, 148);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (448, 39, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (449, 39, 143);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (450, 39, 144);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (451, 44, 154);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (452, 44, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (453, 44, 93);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (454, 44, 155);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (455, 45, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (456, 45, 125);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (457, 45, 156);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (458, 45, 157);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (459, 46, 107);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (460, 46, 158);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (461, 46, 159);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (462, 46, 160);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (463, 46, 161);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (464, 46, 162);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (465, 47, 105);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (466, 47, 128);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (467, 48, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (468, 48, 163);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (469, 48, 164);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (470, 48, 165);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (471, 49, 166);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (472, 49, 167);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (473, 49, 137);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (474, 49, 138);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (475, 49, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (476, 49, 142);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (477, 49, 168);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (478, 50, 105);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (479, 50, 169);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (480, 50, 170);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (481, 50, 171);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (482, 50, 172);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (483, 51, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (484, 51, 105);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (485, 51, 173);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (486, 51, 174);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (487, 51, 128);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (488, 52, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (489, 52, 169);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (490, 52, 175);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (491, 52, 170);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (492, 52, 125);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (493, 52, 176);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (499, 53, 37);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (500, 53, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (501, 53, 169);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (502, 53, 176);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (503, 53, 177);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (693, 55, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (511, 54, 104);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (512, 54, 105);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (513, 54, 128);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (514, 54, 142);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (515, 54, 178);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (516, 54, 179);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (517, 54, 180);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (694, 55, 125);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (695, 55, 126);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (696, 55, 181);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (697, 55, 182);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (698, 55, 183);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (699, 55, 184);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (700, 56, 28);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (701, 56, 185);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (702, 56, 186);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (703, 56, 187);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (704, 56, 188);
INSERT INTO public.pin_tags (id, pin_id, tag_id) VALUES (705, 56, 189);


--
-- TOC entry 3754 (class 0 OID 16508)
-- Dependencies: 249
-- Data for Name: stack_items; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (1, 'Laravel', 'фремворк', 0, 'laravel, framework, фреймворк, ларавел', 'laravel', 10, 'fcf9ef');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (2, 'Vue', 'Vue.js, Vuex, Vue router', 0, 'vue, vuejs, vue.js', 'vue', 20, 'fbf4f1');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (3, 'Tailwind', 'CSS фреймворк', 0, 'tailwind, css framework, css', 'tailwind', 30, 'eff5f9');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (4, 'Javascript', 'javascript, typescript, node.js, webpack', 0, 'javascript', 'javascript', 40, 'fcfbf2');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (5, 'jQuery', 'Javascript библиотека, DOM, эффекты, ajax', 0, 'jquery', 'jquery', 50, 'fff6ee');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (6, 'CSS & HTML ', 'стили оформления и разметка страниц', 0, 'css, html', 'css-html', 60, 'f4f8f7');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (7, 'NuxtJS', 'Nuxt.js, SSR, Serverless', 0, 'nuxt, nuxtjs, nuxt.js, ssr, serverless', 'nuxtjs', 70, 'faf4f1');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (8, 'API', 'REST, GraphQL, разработка', 0, 'api, rest', 'devapi', 80, 'fbfaf7');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (9, 'Linux', 'команды, bash, программы и т.п.', 0, 'linux', 'linux', 90, 'fff1e3');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (10, 'HTTP', 'протокол, запросы, apache, nginx', 0, 'http, протокол', 'http', 100, 'e4f6e4');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (11, 'Docker', 'контейнеризация', 0, 'docker, контейнеризация', 'docker', 110, 'fcf3df');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (12, 'PHP', 'язык программирования', 0, 'php', 'php', 120, 'f7e4eb');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (13, 'СУБД', 'SQL, mySQL, postgreSql, mongoDb, общая теория', 0, 'база данных, субд, бд, database', 'dbms', 130, 'f4f2e5');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (14, 'ООП', 'объектно-ориентированное программирование', 0, 'ооп, ooр, объектно-ориентированное программирование', 'oop', 140, 'f6f0ed');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (15, 'Unit тесты', 'unit тестирование, интеграционное тестирование', 0, 'unit тесты, unit tests, phpunit', 'unittest', 150, 'fef9ef');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (16, 'Git', 'синтаксис, приемы, проблемы, особенности работы', 0, 'git, github, gitlab, гитб гитхаб', 'git', 160, 'fef3f3');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (17, 'D&D', 'design and development, проектирование и разработка, шаблоны, паттерны, TDD, DDD, agile, SCRUM, kanban', 0, 'design, development, ddd, tdd, patterns\n', 'design-development', 170, 'eaf4f9');
INSERT INTO public.stack_items (id, name, hint, pin_count, keywords, slug, order_num, back_color) VALUES (18, 'Другое', 'другие IT темы', 0, NULL, 'other', 180, 'f9f9f4');


--
-- TOC entry 3751 (class 0 OID 16499)
-- Dependencies: 246
-- Data for Name: pinitems_stackitems; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (51, 18, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (52, 2, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (53, 3, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (55, 5, 10);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (56, 6, 18);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (57, 7, 6);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (60, 17, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (62, 8, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (63, 10, 4);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (65, 12, 16);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (66, 14, 16);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (68, 13, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (69, 19, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (70, 19, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (71, 19, 15);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (79, 21, 9);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (80, 21, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (81, 21, 12);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (82, 22, 12);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (83, 22, 18);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (2, 11, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (3, 4, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (4, 9, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (5, 16, 16);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (6, 20, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (7, 1, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (8, 15, 16);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (207, 57, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (86, 24, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (87, 24, 10);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (88, 24, 18);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (89, 25, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (214, 58, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (91, 26, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (92, 27, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (204, 55, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (205, 55, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (95, 28, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (96, 29, 9);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (206, 56, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (215, 58, 12);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (107, 31, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (108, 31, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (109, 30, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (110, 32, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (111, 32, 12);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (112, 32, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (113, 33, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (114, 34, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (115, 35, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (116, 36, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (117, 36, 18);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (118, 37, 9);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (119, 37, 12);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (120, 38, 12);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (121, 38, 18);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (123, 40, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (128, 43, 1);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (129, 42, 9);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (130, 42, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (131, 41, 9);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (132, 41, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (133, 39, 9);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (134, 39, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (135, 44, 9);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (136, 44, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (137, 45, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (138, 46, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (139, 47, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (140, 48, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (141, 49, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (142, 50, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (143, 51, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (144, 51, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (145, 52, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (149, 53, 9);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (150, 53, 11);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (151, 53, 13);
INSERT INTO public.pinitems_stackitems (id, pinitem_id, stackitem_id) VALUES (153, 54, 13);


--
-- TOC entry 3753 (class 0 OID 16503)
-- Dependencies: 248
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3758 (class 0 OID 16521)
-- Dependencies: 253
-- Data for Name: team_invitations; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3760 (class 0 OID 16525)
-- Dependencies: 255
-- Data for Name: team_user; Type: TABLE DATA; Schema: public; Owner: laradrom
--



--
-- TOC entry 3762 (class 0 OID 16529)
-- Dependencies: 257
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: laradrom
--

INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (1, 1, 'daemon''s Team', 1, '2021-03-06 09:21:05', '2021-03-06 09:21:05');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (2, 2, 'Drommer''s Team', 1, '2021-04-03 10:47:10', '2021-04-03 10:47:10');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (7, 7, 'Mandalorian''s Team', 1, '2021-10-28 19:26:29', '2021-10-28 19:26:29');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (8, 8, 'RussellItals''s Team', 1, '2021-10-29 19:42:23', '2021-10-29 19:42:23');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (9, 9, 'Kennethskemn''s Team', 1, '2021-10-30 01:04:43', '2021-10-30 01:04:43');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (10, 10, 'Terrymaday''s Team', 1, '2021-10-30 04:39:07', '2021-10-30 04:39:07');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (11, 11, 'Douglashor''s Team', 1, '2021-10-30 07:58:13', '2021-10-30 07:58:13');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (12, 12, 'AnthonyPSYMN''s Team', 1, '2021-11-02 01:59:05', '2021-11-02 01:59:05');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (13, 13, 'MurrayDrymn''s Team', 1, '2021-11-04 01:45:44', '2021-11-04 01:45:44');
INSERT INTO public.teams (id, user_id, name, personal_team, created_at, updated_at) VALUES (14, 14, 'DannyGlaps''s Team', 1, '2021-11-04 04:22:15', '2021-11-04 04:22:15');




--
-- TOC entry 3774 (class 0 OID 0)
-- Dependencies: 217
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);



--
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 223
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--


--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 227
-- Name: oauth_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.oauth_clients_id_seq', 1, false);


--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 229
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 1, false);


--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 235
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 237
-- Name: pin_boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.pin_boards_id_seq', 16, true);


--
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 239
-- Name: pin_itemboards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.pin_itemboards_id_seq', 67, true);


--
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 241
-- Name: pin_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.pin_items_id_seq', 58, true);


--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 243
-- Name: pin_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.pin_tags_id_seq', 731, true);


--
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 245
-- Name: pin_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.pin_types_id_seq', 10, false);


--
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 247
-- Name: pinitems_stackitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.pinitems_stackitems_id_seq', 215, true);


--
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 250
-- Name: stack_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.stack_items_id_seq', 20, false);


--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 252
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.tags_id_seq', 192, true);


--
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 254
-- Name: team_invitations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.team_invitations_id_seq', 1, false);


--
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 256
-- Name: team_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.team_user_id_seq', 1, false);


--
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 258
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.teams_id_seq', 16, false);


--
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 260
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: laradrom
--

SELECT pg_catalog.setval('public.users_id_seq', 15, false);


-- Completed on 2021-11-19 12:57:27 +03

--
-- PostgreSQL database dump complete
--

