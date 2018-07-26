class Doctor < ApplicationRecord
#on lie les tables: un docteur a plusieurs rendez-vous
#et plusieurs patients via le fait d'avoir de nombreux rendez-vous
has_many :appointments
has_many :patients, :through => :appointments
end
