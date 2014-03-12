class ChangeDecriptionToTextInReleases < ActiveRecord::Migration
  def up
    change_column :releases, :description, :text, :limit => nil
  end
  def down
    change_column :releases, :description, :string
  end
end
