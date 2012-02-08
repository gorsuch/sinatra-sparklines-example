require 'json'
require 'sinatra'

get('/') do
  @data = (0..50).to_a.map { rand(100) }
  erb :index
end

get('/json_endpoint') do
  content_type :json
  a = (0..50).to_a.map { rand(100) }
  a.to_json
end