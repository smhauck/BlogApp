class Post < ApplicationRecord
  belongs_to :blog
  belongs_to :user


  has_many :post_tags
  has_many :tags, through: :post_tags
  accepts_nested_attributes_for :post_tags

end
