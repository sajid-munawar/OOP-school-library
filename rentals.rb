require 'time'

class Rental
  attr_accessor :date, :person, :book

  def initialize(person:, book:)
    @date = DateTime.now.to_s

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end
end
