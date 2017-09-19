class Tag < ApplicationRecord
  has_many :post_tags
  has_many :posts, through: :post_tags
  accepts_nested_attributes_for :post_tags
end
