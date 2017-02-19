get '/cards' do
	@card = Card.all
end

get '/cards/:id' do
	@cards = Card.find_by_id(params[:id])

  redirect "/cards/#{params[:increment]}"
end

get '/decks/:id/cards/:id' do
	@card = Card.find_by(id: params[:id])
	current_user.decks << @card
	redirect "/users/#{current_user.id}"
end


