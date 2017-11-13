require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :character

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # "#{self.characters} - #{self.characters.shows}"
    # self.characters.each_with_index do |char, idx|
    #   binding.pry
    # end
    self.characters.collect{|character| "#{character.name} - #{character.show.name}"}
  end

end
