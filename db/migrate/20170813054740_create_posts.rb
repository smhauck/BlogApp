class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :public
      t.date :publish_date
      t.references :blog, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
