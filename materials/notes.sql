-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2019 г., 15:28
-- Версия сервера: 5.6.41
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `notesproject`
--

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`) VALUES
(1, 'Бесы', '«Сцена открывается хором женщин, потом хором мужчин, потом каких-то сил, и в конце всего хором душ, еще не живших, но которым очень бы хотелось пожить. Все эти хоры поют о чем-то очень неопреде­ленном, большею частию о чьем-то проклятии, но с оттенком высшего юмора. Но сцена вдруг переменяется, и наступает какой-то „Праздник жизни“, на котором поют даже насекомые, является черепаха с каки­ми-то латинскими сакрамен­тальными словами, и даже, если припомню, пропел о чем-то один минерал, — то есть предмет уже вовсе неодушевленный. Вообще же все поют беспрерывно, а если разговари­вают, то как-то неопределенно бранятся, но опять-таки с оттенком высшего значения. Наконец сцена опять переменяется, и является дикое место, а между утесами бродит один цивилизованный молодой человек, который срывает и сосет какие-то травы, и на вопрос феи: зачем он сосет эти травы? ответствует, что он, чувствуя в себе избыток жизни, ищет забвения и находит его в соке этих трав; но что главное желание его — поскорее потерять ум (желание, может быть, и излишнее). Затем вдруг въезжает неописанной красоты юноша на черном коне, и за ним следует ужасное множество всех народов. Юноша изображает собою смерть, а все народы ее жаждут. И, наконец, уже в самой последней сцене вдруг появляется Вавилонская башня, и какие-то атлеты ее наконец достраивают с песней новой надежды, и когда уже достраивают до самого верху, то обладатель, положим хоть Олимпа, убегает в комическом виде, а догадавшееся человечество, завладев его местом, тотчас же начинает новую жизнь с новым проникновением вещей».'),
(2, 'Похождения Чичикова', 'Павла Ивановича Чичикова знакомят с сыновьями помещика Манилова:\r\n\r\n«В столовой уже стояли два мальчика, сыновья Манилова, которые были в тех летах, когда сажают уже детей за стол, но еще на высоких стульях. При них стоял учитель, поклонив­шийся вежливо и с улыбкою. Хозяйка села за свою суповую чашку; гость был посажен между хозяи­ном и хозяйкою, слуга завязал детям на шею салфетки.\r\n\r\n— Какие миленькие дети, — сказал Чичиков, посмотрев на них, — а который год?\r\n\r\n— Старшему осьмой, а меньшему вчера только минуло шесть, — сказала Манилова.\r\n\r\n— Фемистоклюс! — сказал Манилов, обратившись к старшему, который старался освободить свой подбородок, завязанный лакеем в салфетку.\r\n\r\nЧичиков поднял несколько бровь, услышав такое отчасти греческое имя, которому, неизвестно почему, Манилов дал окончание на „юс“, но постарался тот же час привесть лицо в обыкновенное положение.\r\n\r\n— Фемистоклюс, скажи мне, какой лучший город во Франции?\r\n\r\nЗдесь учитель обратил все внимание на Фемистоклюса и, казалось, хотел ему вскочить в глаза, но наконец совершенно успокоился и кивнул головою, когда Фемистоклюс сказал: „Париж“.\r\n\r\n— А у нас какой лучший город? — спросил опять Манилов.\r\n\r\nУчитель опять настроил внимание.\r\n\r\n— Петербург, — отвечал Фемистоклюс.\r\n\r\n— А еще какой?\r\n\r\n— Москва, — отвечал Фемистоклюс.\r\n\r\n— Умница, душенька! — сказал на это Чичиков. — Скажите, однако ж… — продолжал он, обратившись тут же с некоторым видом изумления к Маниловым, — в такие лета и уже такие сведения! Я должен вам сказать, что в этом ребенке будут большие способности.\r\n\r\n— О, вы еще не знаете его! — отвечал Манилов, — у него чрезвычайно много остроумия. Вот меньшой, Алкид, тот не так быстр, а этот сейчас, если что-нибудь встретит, букашку, козявку, так уж у него вдруг глазен­ки и забегают; побежит за ней следом и тотчас обратит внима­ние. Я его прочу по дипломатической части. Фемистоклюс, — продол­жал он, снова обратясь к нему, — хочешь быть посланником?\r\n\r\n— Хочу, — отвечал Фемистоклюс, жуя хлеб и болтая головой направо и налево.\r\n\r\nВ это время стоявший позади лакей утер посланнику нос, и очень хорошо сделал, иначе бы канула в суп препорядочная посторонняя капля».'),
(3, 'Драма', 'Мягкосердечный литератор Павел Васильевич принужден выслушивать длиннейшее драматическое сочинение, которое вслух зачитывает ему писательница-графоманка Мурашкина:\r\n\r\n«— Вы не находите, что этот монолог несколько длинен? — спросила вдруг Мурашкина, поднимая глаза.\r\n\r\nПавел Васильевич не слышал монолога. Он сконфузился и сказал таким виноватым тоном, как будто не барыня, а он сам написал этот монолог:\r\n\r\n— Нет, нет, нисколько… Очень мило…\r\n\r\nМурашкина просияла от счастья и продолжала читать:\r\n\r\n— „Анна. Вас заел анализ. Вы слишком рано перестали жить сердцем и доверились уму. — Валентин. Что такое сердце? Это понятие анатомическое. Как условный термин того, что называется чувствами, я не признаю его. — Анна (смутившись). А любовь? Неужели и она есть продукт ассоциации идей? Скажите откровенно: вы любили когда-нибудь? — Валентин (с горечью). Не будем трогать старых, еще не заживших ран (пауза). О чем вы задумались? — Анна. Мне кажется, что вы несчастливы“.\r\n\r\nВо время XVI явления Павел Васильевич зевнул и нечаянно издал зубами звук, какой издают собаки, когда ловят мух. Он испугался этого неприличного звука и, чтобы замаскировать его, придал своему лицу выражение умилительного внимания.\r\n\r\n„XVII явление… Когда же конец? — думал он. — О, боже мой! Если эта мука продолжится еще десять минут, то я крикну караул… Невыносимо!“\r\n\r\nНо вот наконец барыня стала читать быстрее и громче, возвысила голос и прочла: „Занавес“.\r\n\r\nПавел Васильевич легко вздохнул и собрался подняться, но тотчас же Мурашкина перевернула страницу и продолжала читать:\r\n\r\n— „Действие второе. Сцена представляет сельскую улицу. Направо школа, налево больница. На ступенях последней сидят поселяне и поселянки“.\r\n\r\n— Виноват… — перебил Павел Васильевич. — Сколько всех действий?\r\n\r\n— Пять, — ответила Мурашкина и тотчас же, словно боясь, чтобы слушатель не ушел, быстро продолжала: „Из окна школы глядит Валентин. Видно, как в глубине сцены поселяне носят свои пожитки в кабак“».');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;