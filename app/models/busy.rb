class Busy < ApplicationRecord
	def self.busy?(date)
		Busy.exists?(reservado: date)
	end
end
