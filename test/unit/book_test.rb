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
 
  test "When a book is borrowed the availability  should be borrowed today" do
    book = Book.new
    book.borrow 
    assert_equal  "borrowed since: " + Date.today.to_s(:long), book.get_availability    
  end

  test "When a book is not borrowed the availability should be available" do
    book = Book.new
    book.title = "teste"
    book.borrow
    book.save
    book.unborrow
    assert_equal  "available" , book.get_availability
  end
end
