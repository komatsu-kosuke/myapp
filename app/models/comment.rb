class Comment < ApplicationRecord

  belongs_to :company

  validates :title, length: { in: 1..15 }
  validates :text, length: { in: 1..350 }

end
