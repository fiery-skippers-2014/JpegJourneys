get '/journey/new' do 

end


post '/journey/new' do 

end








post '/journeys/new' do
  @journey = Journey.create(
    title: params[:title],
    user_id: current_user.id,
    description: params[:description]
  )
  @journey.save
  @journey.build(params)
  flash[:success] = "Journey created!"
  redirect "/users/#{@journey.user_id}"
end

# Show journey results by journey id #
get "/journeys/:journey_id" do
  @journey = Journey.find(params[:journey_id])
  @user = User.find(@journey.user_id)
  if CompletedJourney.find_by_journey_id(@journey.id)
    @result = Result.find(@user.id)
  end
  erb :'/journey/show_one'
end


# Allow a user to delete their own journey then return to their profile
get '/journeys/:journey_id/delete' do
  @journey = Journey.find(params[:journey_id])
  @user = User.find(@journey.user_id)
  if current_user.id == @user.id
    @journey.destroy
    flash[:success] = "Journey deleted"
    redirect "/users/#{@user.id}"
  else
    flash[:error] = "Journey was not deleted"
  end
end