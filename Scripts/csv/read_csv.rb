require 'csv'

CSV.foreach("addresses.csv", headers: true) do |row|
	puts row['id']
	puts row['location_id']
	puts row['address_1']
	puts row['address_2']
	puts row['city']
	puts row['state_province']
	puts row['postal_code']
	puts row['country']
	puts '========'
end
