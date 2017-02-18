get '/users/:user_id/rounds/:id' do 
	@round = Round.find_by(id: params[:id])
	@score = @round.score
	erb :'rounds/show'
end