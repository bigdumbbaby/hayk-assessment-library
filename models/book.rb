class Book
  attr_reader :name

  @@all = []

  def initialize name
      @name = name

      @@all << self
  end

  def self.all
    @@all
  end

  def add_book_to_author author
		found_author = Author.all.find do |look_author|
			look_author.name == author.name
    end
    #binding.pry
		BookAuthor.new self, found_author
	end
end