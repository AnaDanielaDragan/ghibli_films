# frozen_string_literal: true

require 'sinatra'
require 'net/http'

get '/' do
  response = Net::HTTP.get(URI('https://ghibliapi.herokuapp.com/films'))
  films = JSON.parse(response)
  films.map do |film|
    "#{film['title']}, #{film['director']}, #{film['release_date']}"
  end
       .sort
       .join("\n")
end
