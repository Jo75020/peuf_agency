class Info < ApplicationRecord
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :phone, presence: true, format: { with: /([0]{1})([6-7]{1})[0-9]{8}/ }
  validates :company_name, presence: true
  validates :description, presence: true
  validates :email, presence: true, format: { with: /[a-z0-9]+[_a-z0-9\.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})/ }
end
