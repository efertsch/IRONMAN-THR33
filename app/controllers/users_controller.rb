
get '/users' do
	@users = User.all
	erb :index
end

get '/users/new' do
	erb :'/users/new'
end

post '/users' do
	@user = User.new(params[:user])
	if @user.save
		redirect "/"
	else
		erb :'/users/new'
	end
end

get '/users/:id' do
	@user = User.find_by(id: params[:id])
	erb :'users/show'
end
