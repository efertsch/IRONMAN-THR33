get '/cards' do
	@first_card = Cards.first
	redirect '/cards/1'
end

get '/cards/:id' do 
	@cards = Cards.find_by_id(params[:id])

  redirect '/increment'
end

get '/:increment' do
  redirect "/cards/#{params[:increment]}"
end
