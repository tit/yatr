# YaTr

## Description
Extended String Class for translate with [Yandex.Translate](http://translate.yandex.ru/).  
Show aviable languages on [API Yandex.Translate](http://api.yandex.ru/translate/).  

## Examples

    require "yatr"

    # Valide translate from to
    puts "привет".translate "ru", "en" # => hi

    # Valide translate to
    puts "привет".translate "en" # => hi

    # Invalide translate from to
    puts "привет".translate "foo" "bar" # => привет

    # Invalide translate to
    puts "привет".translate "foo" # => привет