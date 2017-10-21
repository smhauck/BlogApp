class AddBlogIdToPostTags < ActiveRecord::Migration[5.1]
  def change
    add_reference :post_tags, :blog, foreign_key: true
  end
end
