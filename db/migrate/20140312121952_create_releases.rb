class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :artist
      t.string :title
      t.text :description
      t.string :url
      t.string :review_1
      t.string :review_2
      t.timestamps
    end
  end
end
