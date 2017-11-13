require 'pry'

class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "Steve Urkel always says: #{self.catchphrase}"
  end

  def build_show(hash)
    # binding.pry
    self.show = Show.new(hash)
  end

  def build_network(hash)
    self.show.network = Network.new(hash)
  end

end
