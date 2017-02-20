get '/decks/:deck_id/cards/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
	@card = Card.find_by(id: params[:id])
  erb :'/cards/show'
end

post '/decks/:deck_id/cards/:id' do
  @round = Round.find_by(id: params[:round_id])
  @deck = Deck.find_by(id: params[:deck_id])
  @card = Card.find_by(id: params[:id])
  @user_answer = params[:user_answer]
  @last_card = @deck.cards.last
  @next_card = @card.id + 1
  correct?
  if @card.id != @last_card.id
    redirect "/decks/#{@deck.id}/cards/#{@next_card}"
  else
    redirect '/users/:user_id/rounds/:id'
  end
end
