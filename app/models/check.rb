class Check < ApplicationRecord
	validates_presence_of :checkin, :message => "Você precisa escolher o dia que deseja fazer a reservar"
	validates_presence_of :checkout, :message => "Você precisa escolher a data de encerramento"
	validate :end_after_start

	private
		def end_after_start
		  return if checkout.blank? || checkin.blank?
		 
		  if checkout < checkin
		    errors.add(:checkout, "must be after the start date") 
		  end 
		end
end
