class Author
  attr_reader :name

  @@all = []

	def initialize name
		@name = name

    @@all << self
	end
	
	def self.all 
		@@all
	end

  def add_author_to_book book
		found_book = Book.all.find do |look_book|
			look_book.name == book.name
		end
		BookAuthor.new found_book, self
	end
	
end