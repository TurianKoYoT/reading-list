require 'test_helper'

class BookTest < ActiveSupport::TestCase
  
  def setup
    @book = books(:TomSawyer)
    @other_book = books(:TheCaptainDaughter)
  end
  
  test "should be valid" do
    assert @book.valid?
  end
  
  test "title should be present" do
    @book.title = ""
    assert_not @book.valid?
  end
  
  test "title should be unique" do
    @other_book.title = "Adventures of Tom Sawyer"
    assert_not @other_book.valid?
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
    @book.title = "a" * 51
    assert_not @book.valid?
  end
  
  test "description shouldn't be too long" do
    @book.description = "a" * 1001
    assert_not @book.valid?
  end

  test "author_id should be present" do
    @book.authors = []
    assert_not @book.valid?
  end
  
  test "category_id should be present" do
    @book.categories = []
    assert_not @book.valid?
  end
end
