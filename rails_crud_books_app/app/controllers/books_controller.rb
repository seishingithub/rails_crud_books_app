class BooksController < ApplicationController

  def index
  @books = Book.all
  end

  def new

  end

  def create
    @book= Book.create(name_of_book: params[:name_of_book], author_of_book: params[:author_of_book], year_book_was_published: params[:year_book_was_published])
    redirect_to '/'
    p @book
  end

end