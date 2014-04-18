get "/users/:user_id/journeys/:journey_id/destinations/new" do
  @user = current_user
  @journey = Journey.find(params[:journey_id])
  erb :'/destination/destination_create'
end


post "/users/:user_id/journeys/:journey_id/destinations" do
  p "-"*20
  # params
  @this_journey = Journey.find(params[:journey_id].to_i)
  p @this_journey
  p "-"*20
  # @taggs = params[:tags]
  # @journey = Journey.find(:journey_id])
  # p "$$$$$$$$$$$$$$$"
  # p @journey
  # p "$$$$$$$$$$$$$$$$"
  @destination = Destination.create(
    place: params[:tags],
    journey_id: @this_journey.id,
  )
  p "$$$$$$$$$$$$$$$$$$$"
  p @destination
  if @destination
    flash[:success] = "Destination created!"
    @journey = Journey.find(@destination.journey_id)
    @tags = params[:tags]
    p @tags
    picture = flickr.photos.search(tags:@tags, per_page: "1").first
    @url = FlickRaw.url(picture)
    p @url
    # redirect "/users/#{@journey.user_id}/journeys/#{@journey.id}"
  else
    flash[:error] = "Destination was not created!"
    redirect "/users/#{@journey.user_id}/"
  end
end





# get '/photos' do
#   erb :photos
# end



# get '/photos/new' do
#   erb :get_photos
# end

# post '/photos' do

# end