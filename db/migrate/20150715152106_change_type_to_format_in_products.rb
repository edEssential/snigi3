class ChangeTypeToFormatInProducts < ActiveRecord::Migration
  def up
    rename_column :products, :type, :format
  end

  def down
    rename_column :products, :format, :type
  end
end
