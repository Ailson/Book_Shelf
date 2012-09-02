require 'spec_helper'

describe Book do

    before(:each) do
      @book = FactoryGirl.create(:book)
      @friend = FactoryGirl.create(:friend)
    end

    describe "create book" do

      it "should not save a book without a title" do
        @book.title = nil
        @book.save.should raise_error
      end

      it "should not save a book without a picture" do
        @book.picture = nil
        @book.save.should raise_error
      end

    end

    describe "lend" do

      it "lend a book to a friend" do
         @book.lend_to(@friend)
      end

      it "check if a book is borrowed" do
         @book.lend_to(@friend)
         @book.is_borrowed.should be_true
         @book.get_availability.should include("borrowed since")
      end

       it "check if a book is unborrow" do
          @book.lend_to(@friend)
          @book.unborrow
          @book.is_borrowed.should be_false
          @book.get_availability.should include("available")
       end

       it "When a book is borrowed this should appear on the borrowed books of the user that is borrowing" do
        #book = Book.new
        #book.title = "teste"
        #book.picture = "teste"
        #book.save
        #user = User.find(2)
        #book.lend_to(user)

        #assert user.books_borrowed.count ==  1
        #assert_equal(book, user.books_borrowed[0])
      end

    end
end
