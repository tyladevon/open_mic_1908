require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require 'pry'

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @joke = joke
    @jokes << @joke
  end

  def sal_tells(name, joke)
    @name = name
    @joke = joke
    @jokes << @joke
  end

  def joke_by_id(id)
    if @id == id
      @joke_1
    end
  end

end
