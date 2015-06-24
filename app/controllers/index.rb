get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/new_url' do
	user_url = params[:user_url]
	url_instance = Url.new(url: user_url)
	puts url_instance.url
	url_instance.save
	puts url_instance.id
	puts url_instance.id
	p url_instance
end

post '/urls' do

  # crea una nueva Url
end

# e.g., /q6bda
get '/:short_url' do
  
  # redirige a la URL original
end

