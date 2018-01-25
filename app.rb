class App < Sinatra::Base

	get '/' do
		slim(:index)
	end

	 post '/login' do
    "Hello World"
		db = SQLite3::Database.new("db/chatsystem.sqlite")
		username = params[:username]
		password = params[:password]
		result = db.execute["SELECT * id FROM Users Where Username"]
		if
	 end

	 get '/register' do
		 slim(:register)
	 end

	 post '/register' do
		db = SQLite3::Database.new("db/chatsystem.sqlite")
		username = params[:username]
		password = params[:password]
		confirmation_password = params[:confirmation_password]
		email = params[:email]

		result = db.execute["SELECT * id FROM Users"]

		if
		db.execute("INSERT INTO Users (username, password) VALUES (?,?)", [username, password])
	 end
end
