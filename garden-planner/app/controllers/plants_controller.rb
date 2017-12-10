
require "json"
require "http"
require "optparse"
class PlantsController < ApplicationController

  def plant_params
    params.require(:plant).permit(:plant_name,:plant_size, :description, :plant_date, :water_freq)
    params.require(:garden).permit(:garden_name,:user_id, :size_x, :size_y, :plants)
  end

  def show
    id = params[:id] # retrieve plant ID from URI route
    @plant = Plant.find(id) # look up plant by unique ID
    # will render app/views/plants/show.<extension> by default. 
  end

  def index
    @pplant
    @rowLenth = 6
    @potSet= 0
    @gardens = Garden.all
    if(params[:garden] != nil)
      @current_garden = Garden.find(params[:garden])
    else
      @current_garden = @gardens.first
    end
    redirect = false
    @garden_row = @current_garden.plants
    @all_plant_sizes = ['Large Pot','Medium Pot','Small Pot','Small plot of Land', "Medium Plot of Land", "Large Plot of Land", "Acres"]
    
    
    if params[:location] != nil
      
    end
    
    
    
    if params[:search] != nil
      url = "https://api.yelp.com/v3/businesses/search"
      term = params[:search]
      location = "Denver"
      @mut = term
      params = {
        open_now: true,
        term: term,
        location: location,
        limit: 50
      }
      
      response = HTTP.auth(bearer_token).get(url, params: params)
      
      
      obj = JSON.parse(response)
      
      num = rand(50)
      j = 0
      obj['businesses'].each do |business|
        vary = business.values
        if j == num
          addr = vary[11].values
          @gut = vary[1]
          @tut = vary[2]
          
          #@mut = addr[0]
        end
        j = j + 1
      end
    end
  end

  def new
    # default: render 'new' template
  end
  
  
  # Place holders for Yelp Fusion's OAuth 2.0 credentials. Grab them
  # from https://www.yelp.com/developers/v3/manage_app
  CLIENT_ID = "oFZtPT67gU6GqwKCwxTlyA"
  CLIENT_SECRET = "2UeWy6Wton5Zdvnva1kZHUZ5RehSl0h61PWw1Zc5KowXZgxiQ5eiXurToLtEOvy8"


  # Constants, do not change these
  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
  TOKEN_PATH = "/oauth2/token"
  GRANT_TYPE = "client_credentials"


  DEFAULT_BUSINESS_ID = "yelp-san-francisco"
  DEFAULT_TERM = "dinner"
  DEFAULT_LOCATION = "San Francisco, CA"
  SEARCH_LIMIT = 5
  
  
  def bearer_token
    # Put the url together
    url = "#{API_HOST}#{TOKEN_PATH}"

    raise "Please set your CLIENT_ID" if CLIENT_ID.nil?
    raise "Please set your CLIENT_SECRET" if CLIENT_SECRET.nil?

    # Build our params hash
    params = {
      client_id: CLIENT_ID,
      client_secret: CLIENT_SECRET,
      grant_type: GRANT_TYPE
    }

    response = HTTP.post(url, params: params)
    parsed = response.parse

    "#{parsed['token_type']} #{parsed['access_token']}"
  end
  
  def search(term, location)
    url = "#{API_HOST}#{SEARCH_PATH}"
    params = {
      term: term,
      location: location,
      limit: SEARCH_LIMIT
    }

    response = HTTP.auth(bearer_token).get(url, params: params)
    response.parse
  end
  
  
  command = ARGV


  case command.first
    when "search"
      term = options.fetch(:term, DEFAULT_TERM)
      location = options.fetch(:location, DEFAULT_LOCATION)

      raise "business_id is not a valid parameter for searching" if options.key?(:business_id)

      response = search(term, location)

      puts "Found #{response["total"]} businesses. Listing #{SEARCH_LIMIT}:"
      response["businesses"].each {|biz| puts biz["name"]}
    when "lookup"
      business_id = options.fetch(:business_id, DEFAULT_BUSINESS_ID)


      raise "term is not a valid parameter for lookup" if options.key?(:term)
      raise "location is not a valid parameter for lookup" if options.key?(:lookup)

      response = business(business_id)

      puts "Found business with id #{business_id}:"
      puts JSON.pretty_generate(response)
    else
      puts "Please specify a command: search or lookup"
    end
  end
  