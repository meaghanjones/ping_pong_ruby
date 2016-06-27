require('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/ping_pong')
require('pry')

get('/form') do
  erb(:form)
end

get('/ping_pong') do
  @number = params.fetch("number")
  erb(:ping_pong)
end
