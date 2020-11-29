class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actors = []
        self.actors.each do |actor|
            actors << actor.first_name + " " + actor.last_name
        end
        actors
    end

end