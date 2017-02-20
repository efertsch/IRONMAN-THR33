# get '/decks/:deck_id/cards' do
# 	@cards = Card.all
#   @first_card = @cards.first
# 	erb :'cards/index'
# end

get '/decks/:deck_id/cards/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
	@card = Card.find_by(id: params[:id])
  # @next_card = @card.id + 1
  erb :'/cards/show'
	# redirect "/decks/#{@deck.id}/cards/#{@next_card}"
end

post '/decks/:deck_id/cards/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @card = Card.find_by(id: params[:id])
  @last_card = @deck.cards.last
  @next_card = @card.id + 1
  if @card.id != @last_card.id
    redirect "/decks/#{@deck.id}/cards/#{@next_card}"
  else
    redirect '/'
  end
end
