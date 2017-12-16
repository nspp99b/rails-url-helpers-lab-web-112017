class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def change_active
    self.active ^= true
    self.save
  end

end
