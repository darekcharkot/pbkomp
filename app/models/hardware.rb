class Hardware < ApplicationRecord
  validates_presence_of :buy_date, message: 'Musisz podać datę zakupu'
  validates_presence_of :name, message: 'Wpisz jakie to urządzenie'
end
