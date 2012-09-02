require 'spec_helper'

describe Book do

    before(:each) do
      @book = FactoryGirl.create(:book)
      @friend = FactoryGirl.create(:friend)
    end

    describe "#lend" do
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
