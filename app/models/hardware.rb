class Hardware < ApplicationRecord
  validates_presence_of :name, message: 'Wpisz jakie to urządzenie'
end
