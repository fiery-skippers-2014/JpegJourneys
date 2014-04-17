get '/' do
  erb :photos
end

get '/photos/new' do
  erb :get_photos
end

post '/photos' do
  @tags = params[:tags]
  p @tags
  picture = flickr.photos.search(tags:@tags, per_page: "1").first
  @url = FlickRaw.url(picture)
  erb :photos
end
