get "/login" do
  if session[:user_id]
    redirect "/profile"
  else
    erb :login
  end
end

post "/login" do
  @user = User.find_by(email: params[:email])

  if @user.authenticate(params[:password])
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

