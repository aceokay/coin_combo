require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin') do
  @coin = params.fetch('coin').to_f.coin_combo()
  erb(:coin)
end
