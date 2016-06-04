class BooksController < ApplicationController

  include ActiveModel::Dirty

  before_action :find_book, :only => [:show, :edit, :update ,:destroy]

  #首頁
  #Get books_path
  def index
    @books = Book.page(params[:page]).per(8)
  end

  #CRUD的ACTION
  #Post books_path
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path
    else
      render :action => :new
    end
  end

  #Get book_path(:id)
  def show
    #id已經在before_action做完find了
    @page_title = @book.name
  end

  #Patch book_path(:id)
  def update

    if @book.update(book_params)
      flash[:notice] = "編輯成功"
      redirect_to book_path(@book)
    else
      render :action => :edit
    end
  end

  #DELETE book_path(:id)
  def destroy
    @book.destroy
    flash[:alert] = "刪除成功"
    redirect_to books_path
  end

  #new_book_path
  def new
    @book = Book.new
    if @book.changed?
      flash[:notice] = "新增成功"
    end
  end

  #edit_book_path
  def edit
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :description, :date_acq, :date_public, :email, :phone)
  end

end
