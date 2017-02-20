
Deck.destroy_all
User.destroy_all
Card.destroy_all
Round.destroy_all


5.times do |i|
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
  Deck.create(description: Faker::Hipster.sentence)
    5.times do
      Card.create(question: Faker::Hipster.sentence, answer: Faker::Hipster.word, deck_id: i + 1)
    end
  Round.create(user_id: i + 1, deck_id: i + 1 , score: 0, maximum_potential_score: 5 )
end
