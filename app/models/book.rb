class Book < ApplicationRecord
  has_many :variations
  def title_with_author
    "#{title} - #{author}"
  end
end
