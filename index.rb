require 'mongo'
require 'sinatra'
require './model.rb'


=begin
$app->get(    '/:db/:collection/:page',      '_list');
$app->post(   '/:db/:collection',      '_create');
$app->get(    '/:db/:collection/:id',  '_read');
$app->put(    '/:db/:collection/:id',  '_update');
$app->delete( '/:db/:collection/:id',  '_delete');
=end 



get '/:db/:collection/' do 
  headers \
    "Content-Type" => "application/json"
  body list params[:captures][0],params[:captures][1] 
  
  
end


post '/:db/:collection'  do
	headers \
	 "Content-Type" => "application/json"
	create params 
	  "Hello World"
end 

get '/:db/:collection/:id' do 
	headers \
	 "Content-Type" => "application/json"
	
	body read params[:captures][0],params[:captures][1],params[:captures][2] 
end 

put '/:db/:collection/:id' do
	headers \
	 "Content-Type" => "application/json"
	body update params[:captures][0],params[:captures][1],params[:captures][2]
end 

delete '/:db/:collection/:id' do
	headers \
	 "Content-Type" => "application/json"
	body delete params [:captures][0],params[:captures][1],params[:captures][2]
end 



