get "/profile" do
  redirect "/login" unless session[:user_id]
  @user = User.find(session[:user_id])

  erb :profile
end
