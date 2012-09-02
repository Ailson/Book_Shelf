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

    describe "lend book" do

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

    end
end
