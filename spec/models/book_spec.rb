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
    context "呼び出すとき" do
      it "例外が投げられること" do
        book = Book.new
        expect{ book.take_pictures }.to raise_error(RuntimeError, "写真撮影はご遠慮ください")
      end
    end
  end
  describe "Book#bonus" do
    context "lucky?がtrueのとき" do
      it "チェキが返ること" do
        book = Book.new
        allow(book).to receive(:lucky?).and_return(true)
        expect(book).to receive(:lucky?) # 確認するメソッド呼び出しを実行する前に書く
        expect(book.bonus).to eq("著者サイン入りチェキ")
      end
    end
  end
end
