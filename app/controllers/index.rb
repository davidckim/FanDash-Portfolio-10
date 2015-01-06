require 'dotenv'
Dotenv.load

get '/' do
  erb :index
end

get '/session-viewer' do
  session.inspect
end

get '/newuser' do
  erb :'home/newuser'
end

post '/select_teams' do
  # "#{params[:fb_team]} - #{params[:basketball_team]} - #{params[:baseball_team]} - #{params[:hockey_team]}"
  redirect '/dashboard'
end

get '/dashboard' do
  erb :'home/dashboard'
end

# post '/login' do
#   user = User.find_by(username: params[:username])
#   if user != nil
#     if user.authenticate(params[:password])
#       session[:user_id] = user.id
#       redirect "/home"
#     else
#       redirect "/"
#     end
#   else
#   	redirect "/"
#   end
# end

# post '/signup' do
#   if params[:password] == params[:password1] && User.find_by(username: params[:username]).nil?
#     User.create(username: params[:username], encrypted_password: params[:password])
#     user = User.find_by(username: params[:username])
#     session[:user_id] = user.id
#     user.password = params[:password]
#     user.save
#     redirect "/home"
#   else
#     redirect '/'
#   end  
# end

# get '/logout' do
#   session.delete(:user_id)
#   redirect '/'
# end

