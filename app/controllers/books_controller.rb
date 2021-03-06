class BooksController < ApplicationController

  def index
    user_session = UserSession.new
    @books = user_session.current_user.books

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  def borrowed
    user_session = UserSession.new
    @books = user_session.current_user.books_borrowed

    respond_to do |format|
      format.html { render :template => "books/index" }
      format.json { render json: @books }
    end
  end

  def not_borrowed
    user_session = UserSession.new
    @books = user_session.current_user.not_borrowed_books

    respond_to do |format|
      format.html # index.html.erb
      format.html { render :template => "books/index" }
      format.json { render json: @books }
    end
  end


  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(params[:book])
    user_session = UserSession.new
    user_session.current_user.books << @book

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end

  def unborrow
    @book = Book.find(params[:id])
    @book.unborrow
    respond_to do |format|
      if @book.save
        format.html { redirect_to books_url, notice: 'Book was unborrowed successfully .' }
        format.json { render json: @book, status: :unborrowed, location: @book }
      else
        format.html { render action: "unborrow" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def borrow
    @book = Book.find(params[:id])
    user_session = UserSession.new
    friend = user_session.current_user.friends.first
    @book.lend_to friend

    respond_to do |format|
      if @book.save
        format.html { redirect_to books_url, notice: 'Book was borrowed successfully .' }
        format.json { render json: @book, status: :borrowed, location: @book }
      else
        format.html { render action: "borrow" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

end
