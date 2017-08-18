require 'Unirest'
require 'dotenv-rails'

class Chasiu
  def self.list
    response = Unirest.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=restaurants+in+Sydney&key=#{ENV["google_places_api_key"]}").body
    puts response
  end
end

