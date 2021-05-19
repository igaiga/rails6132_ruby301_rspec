require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "Book#title_with_author" do # describeメソッドをつかってメソッドごとに区切ると読みやすいです
    it "Book#title_with_authorを呼び出したとき、titleとauthorを結んだ文字列が返ること" do
      book = Book.new(title: "RubyBook", author: "matz")
      expect(book.title_with_author).to eq("RubyBook - matz")
    end
  end
end
