class Patient < ApplicationRecord
#chaque patient peut avoir plusieurs rendez-vous
#il peut avoir plusieurs docteurs via des rendez vous différents
has_many :appointments
has_many :doctors, :through => :appointments
has_one :city
end
