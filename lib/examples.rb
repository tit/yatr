# encoding utf-8

require "yatr"

# Valide translate from to
puts "привет".translate "ru", "en" # => hi

# Valide translate to
puts "привет".translate "en" # => hi

# Invalide translate from to
puts "привет".translate "foo", "bar" # => привет

# Invalide translate to
puts "привет".translate "foo" # => привет