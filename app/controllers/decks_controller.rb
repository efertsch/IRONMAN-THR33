
get '/decks' do
	@decks = Deck.all
	erb :'/decks/index'
end

get '/deck/:id' do
	@decks = Deck.find_by(id: params[:id])
	redirect '/cards'
end
