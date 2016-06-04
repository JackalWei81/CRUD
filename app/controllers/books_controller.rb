class BooksController < ApplicationController

  #首頁
  #Get books_path
  def index
    @books=Book.page(params[:page]).per(8)
  end

  #CRUD的ACTION
  #Post books_path
  def create
  end

  #Get book_path(:id)
  def show
  end

  #Patch book_path(:id)
  def update
  end

  #DELETE book_path(:id)
  def destroy
  end

  #new_book_path
  def new
  end

  #edit_book_path
  def edit
  end

end
