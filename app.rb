class App < Sinatra::Base

	get '/' do
		slim(:index)
	end

	 post '/login' do
    "Hello World"
		db = SQLite3::Database.new("db/chatsystem.db")
		username = params[:username]
		password = params[:password]
		result = db.execute["SELECT id FROM Users WHERE Username=?",username]
	 end

	 get '/register' do
		 slim(:register)
	 end

	 post '/register' do
		db = SQLite3::Database.new("db/chatsystem.db")
		username = params[:username]
		password = params[:password]
		email = params[:email]
		db.execute("INSERT INTO Users(username,password,email) VALUES(?,?,?)",[username,password,email])
		redirect('/')
	end
end
