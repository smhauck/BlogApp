class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
