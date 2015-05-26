class Person < ActiveRecord::Base

  belongs_to :school

  def country
    self.school.country
  end
end
