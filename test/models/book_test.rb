require 'test_helper'

class BookTest < ActiveSupport::TestCase
  
  def setup
    @book = Book.new(name: "The Adventures of Tom Sawyer", 
                     description: "The Adventures of Tom Sawyer by Mark Twain is an 1876 novel about a young boy growing up along the Mississippi River. It is set in the fictional town of St. Petersburg, inspired by Hannibal, Missouri, where Twain lived.",
                     image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Tom_Sawyer_1876_frontispiece.jpg/800px-Tom_Sawyer_1876_frontispiece.jpg")
  end
  
  test "should be valid" do
    assert @book.valid?
  end
  
  test "name should be present" do
    @book.name = ""
    assert_not @book.valid?
  end
  
  test "description should be present" do
    @book.description = ""
    assert_not @book.valid?
  end
  
  test "image_url should be present" do
    @book.image_url = ""
    assert_not @book.valid?
  end
  
  test "name shouldn't be too long" do
    @book.name = "a" * 51
    assert_not @book.valid?
  end
  
  test "description shouldn't be too long" do
    @book.name = "a" * 1001
    assert_not @book.valid?
  end

  #test "image_url should be valid (check for presence of http/https)" do
  #  @book.image_url = "mage"
  #  assert_not @book.valid?
  #end
end
