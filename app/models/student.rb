class Student < ActiveRecord::Base
  attr_accessible :name, :gender, :resting_hr_1, :after_happy_hr, :resting_hr_2, :after_sad_hr
  
  def self.calculate_percentage(student)
    original_hr = student.resting_hr_1.to_i
    new_hr = student.after_happy_hr.to_i
    percentage = (Float(new_hr - original_hr) / original_hr * 100).ceil
    puts percentage
  end
  
end