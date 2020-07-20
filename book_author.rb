class BookAuthor 

    attr_reader :author, :book

    @@all = []

    def initialize(book, author)
        @author = author
        @book = book
        @@all << self
    end 

    def self.all
        @@all
    end 

    def book_authors
        BookAuthor.all.select{|book_author| book_author.book == self}
    end 

    def authors 
        self.book_authors.map{|book_author| book_author.author}
    end 

end 