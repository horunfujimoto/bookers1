class BooksController < ApplicationController
  def index
    @book = Book.new #@bookはindex.htmlとつなぐインスタンス変数
  end

  def create
    book = Book.new(book_params) #下記paramsとセット
    book.save
    redirect_to book_path(book.id)
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
