require 'spec_helper'

describe User do

    before(:each) do
        @user = FactoryGirl.create(:user)
        @friend = FactoryGirl.create(:friend)
    end

    describe "control books" do
        it "When a book is borrowed this should appear on the borrowed books of the user that is borrowing" do
            book = @user.books.first
            book.lend_to(@friend)
            book.save
            @user.books_borrowed.count.should eq(1)
        end
    end

end
