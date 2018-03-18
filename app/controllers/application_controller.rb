
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end
  get '/posts/new'

  erb :new
  end
  post '/posts'do
@post= Post.create(params)
redirect to '/posts'

end
get '/posts'
@posts= Post.all
erb :index
end
get '/posts/:id'
@post= Post.find_by_id(params[:id])
erb :show
end
get '/posts/:id/edit'
@post= Post.find_by_id(params[:id])

erb :edit
end
patch '/posts/:id' do  #updates a post
   @post = Post.find_by_id(params[:id])
   @post.name = params[:name]
   @post.content = params[:content]
   @post.save
   erb :show
 end
delete '/posts/:id/delete'
erb :delete
end

end
