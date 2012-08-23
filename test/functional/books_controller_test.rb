require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
    @user = users(:two)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { description: @book.description, picture: @book.picture, title: @book.title }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    put :update, id: @book, book: { description: @book.description, picture: @book.picture, title: @book.title }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end

  test "should lend  a  book to a user" do
    book_count_before = @user.books_borrowed.count
    put  :borrow, id: @book, user: @user
   
    assert @user.books_borrowed.count ==  book_count_before + 1 
    assert_equal @book, @user.books_borrowed[0]
    assert_redirected_to books_path 
  end

  test "should get  a book back from a user" do
    book_count_before = @user.books_borrowed.count
    @book.lend_to(@user)
    @user.save

    put  :unborrow, id: @book, user: @user
   
    assert_equal @user.books_borrowed.count, book_count_before
    assert_redirected_to books_path 
  end



end
