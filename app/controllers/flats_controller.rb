require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    @flat = @flats.find{ |flat| flat["id"] == params["id"].to_i }
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    json_response = URI.parse(url).read
    @flats = JSON.parse(json_response)
  end
end
