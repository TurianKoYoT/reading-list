require 'test_helper'

class BookTest < ActiveSupport::TestCase
  
  def setup
    @book = books(:TomSawyer)
    @other_book = books(:TheCaptainDaughter)
  end
  
  test "should be valid" do
    assert @book.valid?
  end
  
  test "name should be present" do
    @book.name = ""
    assert_not @book.valid?
  end
  
  test "name should be unique" do
    @other_book.name = "Adventures of Tom Sawyer"
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
