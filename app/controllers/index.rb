get '/' do
  @journeys = Journey.all
  erb :index
end