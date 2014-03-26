class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :gender
      t.string :resting_hr_1
      t.string :after_happy_hr
      t.string :resting_hr_2
      t.string :after_sad_hr
      t.timestamps
    end
  end
end
