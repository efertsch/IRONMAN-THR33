get '/decks/:deck_id/cards/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @card = Card.find_by(id: params[:id])
  erb :'/cards/show'
end

post '/decks/:deck_id/cards/:id' do
  @deck = Deck.find_by(id: params[:deck_id])
  @card = Card.find_by(id: params[:id])
  @answer = params[:answer]
  @last_card = @deck.cards.last
  @next_card = @card.id + 1
  correct?(@answer)
  if @card.id != @last_card.id
    redirect "/decks/#{@deck.id}/cards/#{@next_card}"
  else
    redirect "/users/:user_id/rounds/:id"
  end
end