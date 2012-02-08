require 'json'
require 'sinatra'

helpers do
  def generate_data
    Array.new(50).map { rand(100) }
  end
end

get('/') do
  erb :index
end

get('/json_endpoint') do
  content_type :json
  generate_data.to_json
end