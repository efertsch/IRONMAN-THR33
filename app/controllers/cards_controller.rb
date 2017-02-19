get '/cards' do
	@first_card = Card.first
	redirect '/cards/1'
end

get '/cards/:id' do
	@cards = Card.find_by_id(params[:id])

  redirect '/increment'
end

get '/:increment' do
  redirect "/cards/#{params[:increment]}"
end
