class BooksController < ApplicationController
  def new
    @books=Book.new
  end
  
  def create
    #データを受け取り新規登録するためのインスタンスインスタンス作成
    book = Book.new(book_params)
    #データをデータベースへ保存する
    book.save
    #book一覧画面へリダイレクト
    redirect_to book_path(book.id)
  end
  
  def index
   @book = Book.new   
   @books = Book.all
  end

  def show
   @book =Book.find(paramd[:id])
  end

  def edit
  end

 private
 #ストロングパラメーター
  def list_params
     params.require(:book).permit(:title,:body)
  end

end
