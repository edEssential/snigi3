class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.date :date
      t.string :venue
      t.string :location
      t.string :buylink
      t.string :artist
      t.timestamps
    end
  end
end
