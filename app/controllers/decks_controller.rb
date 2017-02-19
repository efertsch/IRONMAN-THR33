
get '/decks' do
	@decks = Deck.all
	erb :'/decks/index'
end

get '/decks/:id' do
	@decks = Deck.find_by(id: params[:id])
	if logged_in?
		erb :'/decks/show'
	else
		erb :'decks/error'
	end
end
