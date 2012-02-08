require 'json'
require 'sinatra'

helpers do
  # simulate rolling data, updates every time it is called
  def data
    @@data ||= generate_data
    @@data.shift
    @@data.push rand(100)
  end
  
  def generate_data
    Array.new(50).map { rand(100) }
  end
end

get('/') do
  erb :index
end

get('/json_endpoint') do
  content_type :json
  data.to_json
end