class Detallepichanga < ActiveRecord::Base
	belongs_to :pichanga
	belongs_to :jugador
end
