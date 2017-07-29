class BooksController < ApplicationController
  def index
    @books = Book.search(params[:search])
    @books = @books.joins(:categories).where(categories: { label: params.dig(:book, :category) }) if params.dig(:book, :category).present?
    
  end

  def show
    @book = Book.find(params[:id])
    @authors = @book.authors
    @categories = @book.categories
  end
  
  def hello
    put 'hello'
  end
end
