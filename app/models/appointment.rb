class Appointment < ApplicationRecord
#chaque rendez-vous lie un élément de la table doctor a celui de la 
#table patient.
	belongs_to :patient
	belongs_to :doctor
	has_one :city
end
