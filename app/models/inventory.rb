class Inventory < ApplicationRecord
    def self.to_csv
        CSV.generate(headers: true) do |csv|
            csv << column_names

            all.each do |item|
            csv << item.attributes.values_at(*column_names)
            end
        end
    end
end
