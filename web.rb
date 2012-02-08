require 'json'
require 'sinatra'

helpers do
  def generate_data
    (0..50).to_a.map { rand(100) }
  end
end

get('/') do
  erb :index, { locals: { data: generate_data }}
end

get('/json_endpoint') do
  content_type :json
  generate_data.to_json
end