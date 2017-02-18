get '/decks/sessions/new' do
	erb :'sessions/new'
end

post '/decks/sessions' do
	@user = User.authenticate(params[:user][:email], params[:user][:password])
	if @user
		login
		redirect "/decks/users/#{@user.id}"
	else
		erb :'/sessions/new'
	end
end

delete '/decks/sessions' do
	logout
	redirect '/'
end
