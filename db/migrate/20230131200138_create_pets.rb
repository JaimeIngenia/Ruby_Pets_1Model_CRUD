class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :nombre
      t.string :direccion
      t.string :raza
      t.date :encontrado

      t.timestamps
    end
  end
end
