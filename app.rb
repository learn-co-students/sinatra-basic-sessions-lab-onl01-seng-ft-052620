require_relative 'config/environment'

class App < Sinatra::Base

configure do
    enable :sessions
end

get "/" do
    erb :index
end

post "/checkout" do
    @item = params[:item]
    session["item"]=@item
    @session = session
    erb :display
end

end