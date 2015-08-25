require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')
also_reload('lib/**/*.rb')

get('/') do
  erb(:layout)
end

get('/results') do
  @scrabble_word = params.fetch('scrabble_word').scrabble_score()
  erb(:results)
end
