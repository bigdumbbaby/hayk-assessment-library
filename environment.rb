require_relative './models/author.rb'
require_relative './models/book.rb'
require_relative './models/bookAuthor.rb'
require 'pry'

author1 = Author.new "Tolkien"

book1 = Book.new "Lord of the Rings: Fellowship of the Ring"
book1.add_author(author1)

book2 = Book.new "Lord of the Rings: Two Towers"
book2.add_author(author1)

book3 = Book.new "Lord of the Rings: Return of the King"
book3.add_author(author1)


book4 = Book.new "Calculus"

author2 = Author.new "Ross L Finney"
author2.add_book(book4)

author3 = Author.new "Franklin D Demana"
author3.add_book(book4)

author4 = Author.new "Bert K Waits"
author4.add_book(book4)

author5 = Author.new "Daniel Kennedy"
author5.add_book(book4)



author6 = Author.new "Thomas Pynchon"

book5 = Book.new "Gravity's Rainbow"
book5.add_author(author6)

book6 = Book.new "The Crying of Lot 49"
book6.add_author(author6)



# TESTS
p book4.list_authors
p author1.list_books
p author6.list_books

#binding.pry

#binding.pry