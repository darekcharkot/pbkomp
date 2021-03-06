class Hardware < ApplicationRecord
  
has_many :images, :dependent => :destroy
accepts_nested_attributes_for :images, allow_destroy: true
require 'csv'
validates_presence_of :name, message: 'Wpisz jakie to urządzenie'
def self.to_csv(options = {})
	desired_columns = ["id", "name", "model", "sn", "describe", "foreign_code",
										 "own_code", "buy_brutto", "sold", "sell_date", "processor", "ram", "disk", "screen", "dvd", "video_card",
										  "battery", "operating_system", "warranty", "proof", "buy_date", "price", "images"]
	  CSV.generate(options) do |csv|
    csv << desired_columns
    all.each do |hardware|
      csv << hardware.attributes.values_at(*desired_columns)
    end
  end
end
before_save :downcase_fields

def downcase_fields
	self.sold.downcase!
end
end


