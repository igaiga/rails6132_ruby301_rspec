require 'rails_helper'

RSpec.describe Book, type: :model do
  it "trueであるとき、falseになること" do
    expect(true).to eq(false)
  end
end
