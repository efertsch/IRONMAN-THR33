
get '/users' do
	@users = User.all
	erb :index
end

get '/decks/users/new' do
	erb :'/users/new'
end

post '/decks/users' do
	@user = User.new(params[:user])
	if @user.save
		redirect "/decks/users/#{@user.id}"
	else
		erb :'/users/new'
	end
end

get '/decks/users/:id' do
	@user = User.find_by(id: params[:id])
	erb :'users/show'
end


get '/decks/users/:id/edit' do
	@user = User.find_by(id: params[:id])
	erb :'/users/edit'
end

put '/decks/users/:id' do
	@user = User.find_by(id: params[:id])
	@user.assign_attributes(params[:user])
	if @user.save
		redirect '/users'
	else
		erb :'/users/edit'
	end
end

delete '/decks/users/:id' do
	@user.destroy
	redirect '/'
end

