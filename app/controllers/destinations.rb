get "/users/:user_id/journeys/:journey_id/destinations/new" do
  @user = current_user
  erb :'/destination/destination_create'
end


post "/users/:user_id/journeys/:journey_id/destinations" do
  @destination = Destination.new(
    place: params[:tags],
    journey_id: params[:journey_id],
  )
  if @journey.save
    flash[:success] = "Destination created!"
    @journey = Journey.find(@destination.journey_id)
    @tags = params[:tags]
    p @tags
    picture = flickr.photos.search(tags:@tags, per_page: "1").first
    @url = FlickRaw.url(picture)
    # redirect "/users/#{@journey.user_id}/journeys/#{@journey.id}"
  else
    flash[:error] = "Destination was not created!"
    redirect "/users/#{@journey.user_id}/"
  end
end





get '/photos' do
  erb :photos
end



get '/photos/new' do
  erb :get_photos
end

post '/photos' do

end