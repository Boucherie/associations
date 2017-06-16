class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.references :patients, foreign_key: true
      t.references :doctors, foreign_key: true

      t.timestamps
    end
  end
end
