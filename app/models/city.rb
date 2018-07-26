class City < ApplicationRecord
	#une ville a plusieurs rendez-vous. Par ces rendez-vous elle a plusieurs médecins et patients
	has_many :patients, through: :appointments
	has_many :doctors, through: :appointments
	has_many :appointments
end
