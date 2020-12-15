class Book
  attr_reader :name

  @@all = []

  def initialize name
      @name = name

      @@all << self
  end

  def add_author author 
    BookAuthor.new self, author 
  end

  def list_authors 
    authors = BookAuthor.all.select do | both |
      both.book == self
    end
    #binding.pry

    authors.map do |both|
      both.author.name
    end
  end
end