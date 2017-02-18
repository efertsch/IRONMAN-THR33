User.destroy_all
Card.destroy_all
Deck.destroy_all

10.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
end

5.times do 
	Deck.create(description: Faker::Hipster.name )
end 

