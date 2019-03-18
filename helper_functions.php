<?php
    // преобразует дату из mysql формата в российский формат
    // также переводит время с Гринвича на московское
    function format_mysql_date($mysql_date) {
        $date = DateTime::createFromFormat('Y-m-d H:i:s', $mysql_date);
        $date->setTimezone(new DateTimeZone('Europe/Moscow'));
        return $date->format('d.m.Y H:i');
    }

    // заменяет в строке [b] на <strong>, [/b] на </strong>, перенос строки на <br> и т.д.
    function parse_content($content) {
        // Ваш код для превращения псевдо-тегов в теги и переносов строк в <br>
        return $content;
    }

    // получает на вход строку и ассоциативный массив
    // заменяет все подстроки вида {{ ключ }} на значение по ключу
    function render($template, $context) {
        foreach ($context as $key => $el)
            $template = str_replace('{{ '.$key.' }}', $el, $template);
        return $template;
    }
?>
