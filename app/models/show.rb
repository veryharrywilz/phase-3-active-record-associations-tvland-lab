class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network 

  def actors_list
    actor_array = []
    self.actors.each do |actor|
        actor_array.push(actor.full_name)
    end
    actor_array
  end

end