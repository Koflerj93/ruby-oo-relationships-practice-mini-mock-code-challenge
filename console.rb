require 'pry'
require_relative './book'
require_relative './author'


book1 = Book.new("Carl", "with hats", 5)
book2 = Book.new("bob", "Real estate for real", 10)
book3 = Book.new("bob", "how to eat apples", 45)
a1 = Author.new("Carl")
a2 = Author.new("bob")
binding.pry



