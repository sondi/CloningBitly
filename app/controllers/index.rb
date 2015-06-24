get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @url_view = Url.all
  erb :index
end

post '/new_url' do
	user_url = params[:user_url]
	url_instance = Url.new(url: user_url, click_count: 0)
	url_instance.save

	redirect to '/'
end


# e.g., /q6bda
get '/:short_url' do
  # redirige a la URL original
end

