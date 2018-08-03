class Company < ApplicationRecord
  has_many :areas
  has_many :employees
end
