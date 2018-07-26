class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
  	#chaque rendez-vous a une date en format datetime 
  	#correspond a un médecin et a patient 
    create_table :appointments do |t|
	
		t.belongs_to :doctor, index: true
		t.belongs_to :patient, index: true
    t.datetime :date
		t.timestamps 
    
    end
  end
end
