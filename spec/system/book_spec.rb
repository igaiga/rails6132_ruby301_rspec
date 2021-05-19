require "rails_helper"

RSpec.describe "books", type: :system do
  it "/books ページが表示されること" do
    visit "/books" # /booksへHTTPメソッドGETでアクセス
    expect(page).to have_text("Books") # 表示されたページに Books という文字があることを確認
  end
end
