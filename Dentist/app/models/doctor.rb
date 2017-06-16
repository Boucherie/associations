class Doctor < ApplicationRecord
  belongs_to :clinic
  has_many :patients, through :appointments
end
