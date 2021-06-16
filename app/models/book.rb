class Book < ApplicationRecord
  has_many :variations
  def title_with_author
    "#{title} - #{author}"
  end

  def has_pdf?
    # N+1になりそうとか、"PDF"って文字列はVariationモデルに書くべきとかツッコミありますがサンプルコードということで
    variations.map(&:kind).any?("PDF")
  end

  def take_pictures
    raise RuntimeError.new("写真撮影はご遠慮ください")
  end
end
