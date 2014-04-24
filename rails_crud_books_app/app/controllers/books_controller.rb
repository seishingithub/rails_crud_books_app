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

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.name_of_book = params[:book][:name_of_book]
    @book.author_of_book = params[:book][:author_of_book]
    @book.year_book_was_published = params[:book][:year_book_was_published]
    @book.save
    redirect_to "/books/#{@book.id}"
  end
end