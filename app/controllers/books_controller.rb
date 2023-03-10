class BooksController < ApplicationController
  def new
    @books=Book.new
  end

  def create
    #データを受け取り新規登録するためのインスタンスインスタンス作成
    @book = Book.new(book_params)
    #データをデータベースへ保存する
    if @book.save
    #book一覧画面へリダイレクト
    flash[:notice] = "successfully create."
    redirect_to book_path(@book.id)
    else
     @books = Book.all
     render :index
    end
  end

  def index
   @book = Book.new
   @books = Book.all
  end

  def show
   @book = Book.find(params[:id])
  end

  def edit
   @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
     flash[:notice] = "successfully updated."
     redirect_to book_path(@book.id)
    else
     render :edit
    end
  end

  def destroy
   book= Book.find(params[:id])
   book.destroy
   flash[:notice] = "successfully destroy."
   redirect_to '/books'
  end

 private
 #ストロングパラメーター
  def book_params
     params.require(:book).permit(:title,:body)
  end

end
