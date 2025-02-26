require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require 'pry'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @ali = User.new("Ali")
  end

  def test_user_exists
    assert_instance_of User, @sal
    assert_instance_of User, @ali
  end

  def test_user_has_a_name
    assert_equal "Sal", @sal.name
    assert_equal "Ali", @ali.name
  end

  def test_user_has_jokes
    assert_equal [], @sal.jokes
  end

  def test_sal_learn_joke
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)

    assert_equal [@joke_1, @joke_2], @sal.jokes
  end

  def test_sal_jokes
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)

    assert_equal [@joke_1, @joke_2], @sal.jokes
  end

  def test_ali_jokes
      @ali.sal_tells(@ali, @joke_1)
      @ali.sal_tells(@ail, @joke_2)

      assert_equal [@joke_1, @joke_2], @ali.jokes
  end

  def test_ali_joke_by_id
    assert_equal @joke_1, @ali.joke_by_id(1)

  end

end
