class CreatePatients < ActiveRecord::Migration[5.2]
  def change
  	#chaque patient a un nom et un prénom
    create_table :patients do |t|
    	t.string :first_name
    	t.string :last_name
      t.timestamps
    end
  end
end
