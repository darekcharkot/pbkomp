class Hardware < ApplicationRecord
require 'csv'
validates_presence_of :name, message: 'Wpisz jakie to urządzenie'
def self.to_csv(options = {})
	desired_columns = ["id", "name", "model", "sn", "describe", "foreign_code",
										 "own_code", "buy_brutto", "sold", "processor", "ram", "disk", "screen", "dvd", "video_card",
										  "battery", "operating_system", "warranty", "proof", "buy_date", "price"]
	  CSV.generate(options) do |csv|
    csv << desired_columns
    all.each do |hardware|
      csv << hardware.attributes.values_at(*desired_columns)
    end
  end
end
end


