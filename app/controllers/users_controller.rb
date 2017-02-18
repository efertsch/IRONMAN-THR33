
get '/users' do
	@users = User.all
	erb :index
end

get '/decks/users/new' do
	erb :'/users/new'
end

post 'decks/users' do
	@user = User.new(params[:user])
	if @user.save
		redirect "decks/users/#{@user.id}"
	else
		erb :'/users/new'
	end
end

get 'decks/users/:id' do
	erb :id
end


get 'decks/users/:id/edit' do

end

put 'decks/users/:id' do

end

delete 'decks/users/:id' do

end

