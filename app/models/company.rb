class Company < ApplicationRecord

  has_many :comments

  def self.search(search)
    Company.where('name LIKE(?)', "%#{search}%")
  end


end
