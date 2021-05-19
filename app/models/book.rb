class Book < ApplicationRecord
  def title_with_author
    "#{title} - #{author}"
  end
end
