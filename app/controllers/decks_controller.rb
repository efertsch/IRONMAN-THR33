get '/decks' do
	@decks = Deck.all
	erb :'/decks/index'
end

get '/decks/:id' do
	@deck = Deck.find_by(id: params[:id])
	if logged_in?
		erb :'/decks/show'
	else
		redirect '/'
	end
end
