require 'sinatra'
require "sinatra/reloader" if development?

get '/' do 
  @name = ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end

get '/secret' do
  'oooh secret page!'
end

get '/test' do
  'oooh test page!'
end

get '/cat' do
  "
  <div style='border: 3px dashed red'>
  <<img src='http://placekitten.com/500/500'>
  </div>
  "
end