class BooksController < ApplicationController
  def index
    @books = Book.all #Bookのデータ全部
    @book = Book.new #@bookはindex.htmlとつなぐインスタンス変数
  end

  def create
    @books = Book.all #バリデーションのために@インスタンス変数に変更
    @book = Book.new(book_params) #下記paramsとセット #バリデーションのために@インスタンス変数に変更
    if @book.save #バリデーションのために@インスタンス変数に変更
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book.id) #showへ #バリデーションのために@インスタンス変数に変更
    else
    render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id]) #バリデーションのために@インスタンス変数に変更
    if @book.update(book_params) #バリデーションのために@インスタンス変数に変更
    flash[:notice] = "Book was successfully updated."
    redirect_to book_path(@book.id) #showへ #バリデーションのために@インスタンス変数に変更
    else
    render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to '/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
