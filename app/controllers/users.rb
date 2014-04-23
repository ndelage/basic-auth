get "/profile" do
  @user = User.find(session[:user_id])

  erb :profile
end

post "/login" do
  @user = User.first(conditions: {email: params[:email],
                                  password: params[:password]})

  if @user
    session[:user_id] = @user.id
    redirect "/profile"
  else
    @error = "Invalid username or password"
    erb :login
  end
end

post "/logout" do
  session.clear
  redirect "/login"
end

get "/login" do
  if session[:user_id]
    redirect "/profile"
  else
    erb :login
  end
end
