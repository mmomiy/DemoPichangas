class Cancha < ActiveRecord::Base
	belongs_to :distrito
	has_many :pichangas

    def self.search(search)
		if search
			find(:all, :conditions => ['nombre like ?',"%#{search}%"])
		else
			find(:all)
		end
	end
end
