require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  #binding.pry

  def full_name
    self.first_name+ " "+ self.last_name
  end

  def list_roles
    #binding.pry
    self.characters.collect{|x| x.name+ " - "+x.show.name}
  end
  
end
