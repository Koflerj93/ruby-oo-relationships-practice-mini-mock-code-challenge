require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author'

#use variables of authors names for the books author example below
forst = Author.new("Robert Frost")

snowy day = Book.new(frost, "Snowy Day", 50)











#one way to do this 

#def total_words
 #   all_the_words = 0
  #  self.books.each do |book| 
   #     all_the_words += book.word_count
    #end 
    #all_the_words
#end
