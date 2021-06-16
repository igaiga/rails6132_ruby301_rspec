class Book < ApplicationRecord
  has_many :variations
  def title_with_author
    "#{title} - #{author}"
  end

  def bonus
    return "著者サイン入りチェキ" if lucky?
    "しおり"
  end

  def lucky?
    [true, false].sample
  end

  def take_pictures
    raise RuntimeError.new("写真撮影はご遠慮ください")
  end
end
