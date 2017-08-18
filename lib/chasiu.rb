require 'Unirest'
require 'dotenv/load'

class Chasiu
  def initialize
    @radius = 1000
  end

  def self.list
    response = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=40.704751,-74.006027&radius=#{@radius}&type=restaurant&keyword=roast+pork&key=#{ENV["google_places_api_key"]}").body
    puts response
  end

  def self.set_radius(km)
    @radius = km
  end
end