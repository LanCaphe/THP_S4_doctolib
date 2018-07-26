require 'faker'

#on créé une database plein de fakes personnes à l'aide la gem faker
#on commence par les docteurs (ils sont 22) Faker n'a pas de catégories spécialité de médecine donc ce sont des docteurs sur certaisn éléments chimiques
22.times do |index|
  doctor = Doctor.create(first_name: Faker::HeyArnold.character, last_name: Faker::Food.vegetables, 
  speciality: Faker::Science.element, postal_code:Faker::Address.postcode)
end

#les 35 patients avec un clin d'oeil a onepiece pour les noms de familles
35.times do |index|
	patient=Patient.create(first_name: Faker::Name.first_name, last_name: Faker::OnePiece.island)
end	

#les 70 rendez-vous
70.times do |index|
	a = rand (1..22)
	b = rand (1..35)
	appointment=Appointment.create(date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today), doctor_id: a, patient_id: b)
end
