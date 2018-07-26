class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
  	#chaque docteur a un prénom, un nom, une spécialité
  	#et un code postal
    create_table :doctors do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :speciality
    	t.string :postal_code
      t.timestamps
    end
  end
end
