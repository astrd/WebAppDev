require 'sinatra'
require 'sinatra/reloader' if development? # gem install sinatra-contrib

get '/hello' do
  '<h1>Hi, from Sinatra!</h1>'
end

# def '/frank' do
get '/frank' do
  name = 'Frank'
  "Hi, #{name}"
end

# get '/:name' do
#   name = params[:name]
#   "Hi there, #{name}!"
# end

# get '/:one/:two/:three' do
#   # "first: #{params[:first]}, second: #{params[:two]}, third: #{params[:three]}"
#   "first: #{params[:one]}, second: #{params[:two]}, third: #{params[:three]}"
# end

get '/:one/:two/:three' do |first, second, third|
  "first: #{first}, second: #{second}, third: #{third}"
end

get '/echo' do
  # access /echo?say=something
  text = params['say']
  unless text.nil?
    "<blockquote>#{text}</blockquote>"
  else
    '<p style="color:red">Missing <code>say</code> parameter</p>'
  end
end

get '/bet/:stake/on/:number' do
  stake = params[:stake].to_i
  number = params[:number].to_i
  roll = rand(6) + 1
  if number == roll
    "It landed on #{roll}.  Well done, you win #{6 * stake} chips."
  else
    "It landed on #{roll}. You lose your stake of #{stake} chips."
  end
end

get '/html' do
  erb :data_html
end

__END__
@@data_html
<% title = 'ERB Sinatra Page' %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= title %>></title>
</head>
<body>
  <h1><%= title %></h1>
</body>
</html>