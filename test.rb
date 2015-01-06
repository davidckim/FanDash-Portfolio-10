 # @hash_of_football = HTTParty.get("https://api.github.com/users/"+params[:username], :headers => { "User-Agent" => "CuteHub", "Authorization" => "token #{ENV['GH_TOKEN']}" } )
require 'httparty'
require 'awesome_print'


ap HTTParty.get("https://api.sportsdatallc.org/nfl-t1/teams/2014/rankings.json?api_key=wuehnhaw282cvarjd3h9ghew")