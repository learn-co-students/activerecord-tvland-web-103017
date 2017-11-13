class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.collect do |character|
      character_show_id = character.show_id
      show_name = self.shows.find{|show| show.id == character_show_id.to_i}.name
    # self.characters.collect{|character| character.name}
      "#{character.name} - #{show_name}"
    end
    # "#{self.characters.first.name} - #{self.shows.first.name}"
  end

end
