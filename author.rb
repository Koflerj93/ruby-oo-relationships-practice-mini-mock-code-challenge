class Author 

    attr_reader :name 
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def books 
        Book.all.filter{|book| book.author == self} 
    end 

    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end 

    def total_words
        self.books.rreduce(0) do |all_the_words, book| 
            all_the_words + book.word_count
        end 
    end

    def self.most_words
       
        self.all.max_by do |author|   # this is still really confusing to me 
            author.total_words
        end 

    end 


    

end 

