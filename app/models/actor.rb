class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #kahlessi.fullname
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
#kahlessi.characters ===== characters assoiated to kahlessi
##Chracter.all ==== redundant
    characters.collect do |a_character|
      "#{a_character.name} - #{a_character.show.name}"
    end
  end
end
