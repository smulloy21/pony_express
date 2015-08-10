require('sinatra')
require('sinatra/reloader')
require('./lib/pony_epress')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/shipping_costs') do
  length = params.fetch('length').to_i
  width = params.fetch('width').to_i
  height = params.fetch('height').to_i
  weight = params.fetch('weight').to_i
  distance = params.fetch('distance').to_i
  @cost = Parcel.new(length, width, height, weight).cost_to_ship(distance)
  erb(:shipping_costs)
end
