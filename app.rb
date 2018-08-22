require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/triangles')

get('/') do
  erb(:input)
end
get('/output') do
  @side1 = params.fetch("side1").to_i
  @side2 = params.fetch("side2").to_i
  @side3 = params.fetch("side3").to_i
  triangle = Triangle.new(@side1, @side2, @side3)
  @string_to_display = triangle.triangle?
  erb(:output)
end
