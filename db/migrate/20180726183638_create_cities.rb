class CreateCities < ActiveRecord::Migration[5.2]
  def change
  	#une ville a un nom
    create_table :cities do |t|
    	t.string :name
      	t.timestamps
    end
  end
end
