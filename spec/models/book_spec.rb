require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "Book#title_with_author" do
    context "Book#titleが文字列のとき" do
      subject { Book.new(title: "RubyBook", author: "matz") }
      it "titleとauthorを結んだ文字列が返ること" do
        expect(subject.title_with_author).to eq("RubyBook - matz")
      end
    end
    context "Book#titleがnilのとき" do
      subject(:book){ Book.new(author: "matz") } # subjectに名前をつけることもできる
      it "空のtitleとauthorを結んだ文字列が返ること" do
        expect(book.title_with_author).to eq(" - matz") # bookはsubject(:book)を指す
      end
    end
  end
end
