class Author
  attr_reader :name

  @@all = []

	def initialize name
		@name = name

    @@all << self
	end

	def all 
		@@all 
	end
	

	def add_book book
		BookAuthor.new book, self
	end

	def list_books 
    authors = BookAuthor.all.select do | both |
      both.author == self
    end

    authors.map do |both|
      both.book.name
    end
  end
end