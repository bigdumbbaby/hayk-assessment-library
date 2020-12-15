class BookAuthor
  attr_reader :book, :author

  @@all = []

  def initialize  book, author
    @book = book
    @author = author

    @@all << self
  end

  def self.all
    @@all
  end

  def self.get_list_of_authors_books(author)
    both = all.select do | book_auth |
      book_auth.author.name == author
    end

    both.map do |book|
      book.book.name
    end
  end

  def self.get_list_of_books_authors(book)
    both = all.select do | book_auth |
      book_auth.book.name == book
    end

    both.map do |book|
      book.author.name
    end
  end

end
