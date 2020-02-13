class Mechanics
  configure do
  enable :sessions
  set :session_secret, "secret"
end

  get '/hey' do 
  session["name"] = "Victoria"
  @session = session
end