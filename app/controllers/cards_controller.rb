get '/cards' do
	@cards = Card.all
	erb :'cards/'
end


get '/decks/:deck_id/cards/:id' do
  @first_card = Card.find_by(id: 1)
	@card = Card.find_by(id: params[:id])
  @next_card = @card.id + 1
	redirect "/decks/:deck_id/cards/#{@next_card}"
end


