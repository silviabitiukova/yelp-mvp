puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
20.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.cell_phone
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.new(name: name, address: address, phone_number: phone_number, category: category).save!
end

puts "Finished!"