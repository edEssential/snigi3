class ChangeDataTypeForUsermessage < ActiveRecord::Migration
  def up
    change_column :contacts, :user_message, :text
  end

  def down
    change_column :contacts, :user_message, :string
  end
end
