class CreateVeterinarians < ActiveRecord::Migration[5.1]
  def change
    create_table :veterinarians do |t|
      t.string :name
      t.references :clinics, foreign_key: true

      t.timestamps
    end
  end
end
