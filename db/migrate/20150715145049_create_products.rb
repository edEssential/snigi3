class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :artist
      t.string :title
      t.text :description
      t.string :review_1
      t.timestamps
    end
  end
end
