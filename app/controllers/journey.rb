get '/users/:user_id/journeys/new' do
  erb :'/journey/journey_create'
end


post '/users/:user_id/journeys/create' do
  @journey = Journey.new(
    title: params[:title],
    user_id: current_user.id,
    description: params[:description]
  )
  if @journey.save
    flash[:success] = "Journey created!"
    redirect "/users/#{@journey.user_id}/journeys/#{@journey.id}"
  else
    flash[:error] = "Journey was not created!"
    redirect "/users/#{@journey.user_id}/"
  end
end



# Show journey results by journey id #
get "/users/:user_id/journeys/:journey_id" do
  @journey = Journey.find(params[:journey_id])
  @user = User.find(@journey.user_id)
  erb :'/journey/journey_profile'
end








# Allow a user to delete their own journey then return to their profile
get "/users/:user_id/journeys/:journey_id/delete"  do
  @journey = Journey.find(params[:journey_id])
  @user = User.find(@journey.user_id)
  if current_user.id == @user.id
    @journey.destroy
    flash[:success] = "Journey deleted"
    redirect "/users/#{@user.id}"
  else
    flash[:error] = "Journey was not deleted"
    redirect "/users/#{@user.id}"
  end
end




