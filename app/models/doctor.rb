class Doctor < ApplicationRecord
#on lie les tables: un docteur a plusieurs rendez-vous
#et plusieurs patients via le fait d'avoir de nombreux rendez-vous
#a une ville. Il a plusieurs spécialités.
has_many :appointments
has_many :patients, through:  :appointments
has_one :city
has_and_belongs_to_many :specialities
end
