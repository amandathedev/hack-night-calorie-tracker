# require 'faraday'
require 'rest-client'

# class FoodsController < ApplicationController
#   def search(input)
#     @search = Faraday.get("http://trackapi.nutritionix.com/v2/search/instant?query=#{input}") do |req|
#       req.headers['Authorization'] = "Bearer #{}"
#     end
#     @search_result = JSON.parse(@search.body)
#     render json: @search_result
#   end
# end

# header{"x-app-id" => "6a98d04c" , "x-app-key" => "a534efba3430271cf3f04f4f5894ad77"}

def response(input)
  x = RestClient.get("http://trackapi.nutritionix.com/v2/search/#{input}", headers={"x-app-id" => "6a98d04c", "x-app-key" => "a534efba3430271cf3f04f4f5894ad77"})
  x.body
end

p response("cheeseburger")