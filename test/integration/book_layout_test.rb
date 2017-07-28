require 'test_helper'

class BookLayoutTest < ActionDispatch::IntegrationTest
  
  def setup
    @book = books(:TomSawyer)
  end
  
  test "index layout" do
    get root_path
    assert_template "administrate/application/index"
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", new_admin_book_path
    assert_select "a[href=?]", edit_admin_book_path(@book)
    assert_select "a[href=?]", admin_book_path(@book)
    assert_select "a[href=?]", admin_book_path(@book)
    assert_select "nav.pagination"
    assert_select "img"
  end
  
  test "new book layout" do
    get new_admin_book_path
    assert_template "administrate/application/new"
    assert_select "input"
    assert_select "textarea"
    assert_select "a.button"
    get edit_admin_book_path(@book)
    assert_template "administrate/application/edit"
    assert_select "input"
    assert_select "textarea"
    assert_select "a.button"
  end
  
  test "presence of book's image in show layout" do
    get admin_book_path(@book)
    assert_template "administrate/application/show"
    assert_select "img"
  end
end
