require 'pry'
class Author 

    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def books 
        Book.all.select do |book|
            book.author = self 
        end 
    end 

    def write_book(title, word_count)
        book = Book.new(title, word_count)
        book.author = self 
    end 

    def total_words
        word_counts = books.sum do |book|
            book.word_count
        end
        word_counts
    end

    def self.most_words
        most_words = 0
        books.each do |book| 
            if book.word_count > most_words
                most_words = book.word_count
            end 
        end
        most_words 
    end 
end 

