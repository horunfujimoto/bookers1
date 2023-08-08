class BooksController < ApplicationController
  def index
    @books = Book.all #Bookのデータ全部
    @book = Book.new #@bookはindex.htmlとつなぐインスタンス変数
  end

  def create
    book = Book.new(book_params) #下記paramsとセット
    book.save
    redirect_to book_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
