require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "should not save a book without a title" do
    book = Book.new
    book.picture = "teste"
    assert !book.save, "Saved the book without a title"
  end

  test "should not save a book whitout a picture" do
    book = Book.new
    book.title = "teste"
    assert !book.save, "Saved a book whithout a picture"
  end
 
  test "When a book is borrowed the availability should be borrowed today" do
    book = Book.new
    user = User.find(2)
    book.lend_to(user) 
    assert_equal  "borrowed since: " + Date.today.to_s(:long), book.get_availability    
  end

  test "When a book is not borrowed the availability should be available" do
    book = Book.new
    book.title = "teste"
    user = User.find(2)
    book.lend_to(user)
    book.save
    book.unborrow(user)
    assert_equal  "available" , book.get_availability
  end
  
  test "When a book is borrowed this should appear on the borrowed books of the user that is borrowing" do
   book = Book.new
   book.title = "teste"
   book.picture = "teste"
   book.save
   user = User.find(2)
   book.lend_to(user)
   
   assert user.books_borrowed.count ==  1 
   assert_equal(book, user.books_borrowed[0])
  end
  test "When a book is unborrowed this should not appear on the borrowed books" do
   book = Book.new
   book.title = "teste"
   book.picture = "teste"
   book.save
   user = User.find(2)
   book.lend_to(user)
   previous_book_count = user.books_borrowed.count 
   book.unborrow(user)
   book.save
 
   assert user.books_borrowed.count ==  previous_book_count - 1,
    "borrowed books > previous bookc count"
   assert_not_equal(book, user.books_borrowed[0])
  end
  
end
