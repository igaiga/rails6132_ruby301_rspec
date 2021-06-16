require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "Book#title_with_author" do
    context "Book#titleが文字列のとき" do
      let(:book){ Book.new(title: "RubyBook", author: "matz") }
      it "titleとauthorを結んだ文字列が返ること" do
        expect(book.title_with_author).to eq("RubyBook - matz")
      end
    end
    context "Book#titleがnilのとき" do
      let!(:book){ Book.new(author: "matz") }
      it "空のtitleとauthorを結んだ文字列が返ること" do
        expect(book.title_with_author).to eq(" - matz")
      end
    end
  end
  describe "Book#take_pictures" do
    context "呼び出しすとき" do
      it "例外が投げられること" do
        book = Book.new
        expect{ book.take_pictures }.to raise_error(RuntimeError, "写真撮影はご遠慮ください")
      end
    end
  end

  describe "Book#has_pdf?" do
    context "variationsにPDFを持っているとき" do
      it "trueが返ること" do
        book = Book.new
        book.variations << Variation.new(kind: "PDF")
        expect(book.has_pdf?).to eq(true)
      end
    end
  end
end
