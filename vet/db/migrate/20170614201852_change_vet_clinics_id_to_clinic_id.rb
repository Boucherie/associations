class ChangeVetClinicsIdToClinicId < ActiveRecord::Migration[5.1]
  def change
    rename_column :veterinarians, :clinics_id, :clinic_id

  end
end
