class CreateSpecialities < ActiveRecord::Migration[5.2]
  def change
  	#les spécialités ont un nom
    create_table :specialities do |t|
    t.string :name
      t.timestamps
    end
  end
end
