get '/cards' do
	@card = Card.all

	erb :'cards/card'
end

get '/decks/:id/cards' do
	@cards = Card.find_by_id(params[:id])

  redirect "/cards"
end

get '/decks/:id/cards/:id' do
	@card = Card.find_by(id: params[:id])
	current_user.decks << @card
	redirect redirect '/users'
end


