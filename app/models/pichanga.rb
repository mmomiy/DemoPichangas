class Pichanga < ActiveRecord::Base
	has_many :detallepichangas
	belongs_to :jugador
	belongs_to :cancha

    def self.search(search)
		if search
			find(:all, :conditions => ['titulo like ?',"%#{search}%"])
		else
			find(:all)
		end
	end
end
