require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/triangles')

get('/') do
  erb(:input)
end
get('/output') do
  
  erb(:output)
end
